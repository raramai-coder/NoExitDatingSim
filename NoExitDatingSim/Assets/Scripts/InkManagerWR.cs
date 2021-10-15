using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Ink.Runtime;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class InkManagerWR : MonoBehaviour
{
    [SerializeField]
    private TextAsset _inkJsonAsset;
    private Story _story;

    [SerializeField]
    private Text _textField;

    [SerializeField]
    private Text _nameField;

    [SerializeField]
    private GameObject _choiceButtonContainer;

    [SerializeField]
    private Button _choiceButtonPrefab;

    public int maximumFavor = 15;
    //public int currentFavor;

    [SerializeField] Image fill;
    // Start is called before the first frame update
    void Start()
    {
        StartStory();
    }

    private void Update()
    {
        //DisplayFavor();
    }

    public void StartStory()
    {
        _story = new Story(_inkJsonAsset.text);
        if (GameManager.CharactersTalkedTo > 0)
        {
            _story.variablesState["career"] = GameManager.career;
            
        }

        DisplayNextLine();
    }

    public void DisplayNextLine()
    {
        if (_story.canContinue)
        {
            string text = _story.Continue(); // gets next line

            text = text?.Trim(); // removes white space from text

            _textField.text = text; // displays new text
            _nameField.text = (string)_story.variablesState["name"];
        }
        else if (_story.currentChoices.Count > 0)
        {
            DisplayChoices();
            _textField.text = "";
            _nameField.text = "You";
            Debug.Log(_story.variablesState["favor"]);
            int currentFavor =(int) _story.variablesState["favor"];
            float fillAmount = (float)currentFavor/ maximumFavor;
            Debug.Log("fill: " + fillAmount);
            //DisplayFavor();
        }
        else
        {
            //SceneManager.LoadScene("White Room", LoadSceneMode.Single);
            //Debug.Log("Conversation Over");
            //MovePlayerToDialogue.talking = false;
            GameManager.talking = false;
           
            if (GameManager.CharactersTalkedTo == 0)
            {
                GameManager.career = (string)_story.variablesState["career"];
                switch (_story.variablesState["career"])
                {
                    case "trafficker":
                        GameManager.partner = "Michael";
                        break;
                    case "creche":
                        GameManager.partner = "Grace";
                        break;
                    case "devil":
                        GameManager.partner = "Lucky";
                        break;
                }
            }
            
            GameManager.CharactersTalkedTo++;

            if(GameManager.partner == (string)_story.variablesState["name"])
            {
                GameManager.partnerScore = (int)_story.variablesState["favor"];
            }

        }

    
    }

    private void DisplayChoices()
    {
        // checks if choices are already being displayed
        if (_choiceButtonContainer.GetComponentsInChildren<Button>().Length > 0) return;

        for (int i = 0; i < _story.currentChoices.Count; i++) // iterates through all choices
        {

            var choice = _story.currentChoices[i];
            var button = CreateChoiceButton(choice.text); // creates a choice button

            button.onClick.AddListener(() => OnClickChoiceButton(choice));
        }

        Button CreateChoiceButton(string text)
        {
            // creates the button from a prefab
            var choiceButton = Instantiate(_choiceButtonPrefab);
            choiceButton.transform.SetParent(_choiceButtonContainer.transform, false);

            // sets text on the button
            var buttonText = choiceButton.GetComponentInChildren<Text>();
            buttonText.text = text;

            return choiceButton;
        }

        void OnClickChoiceButton(Choice choice)
        {
            _story.ChooseChoiceIndex(choice.index); // tells ink which choice was selected
            DisplayFavor();
            RefreshChoiceView(); // removes choices from the screen
            DisplayNextLine();

        }

        void RefreshChoiceView()
        {
            if (_choiceButtonContainer != null)
            {
                foreach (var button in _choiceButtonContainer.GetComponentsInChildren<Button>())
                {
                    Destroy(button.gameObject);
                }
            }
        }
    }

    void DisplayFavor()
    {
        //float fillAmount = (float)_story.variablesState["favor"] / maximumFavor;

        int currentFavor = (int)_story.variablesState["favor"];
        float fillAmount = (float)currentFavor / maximumFavor;
        fill.fillAmount = fillAmount;
    }
}
