using Ink.Runtime;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class InkManagaer : MonoBehaviour
{
    [SerializeField]
    private TextAsset _inkJsonAsset;
    private Story _story;

    [SerializeField]
    private Text _textField;

    [SerializeField]
    private GameObject _choiceButtonContainer;

    [SerializeField]
    private Button _choiceButtonPrefab;
    // Start is called before the first frame update
    void Start()
    {
        StartStory();
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    private void StartStory()
    {
        _story = new Story(_inkJsonAsset.text);
        DisplayNextLine();
    }

    public void DisplayNextLine()
    {
        if (_story.canContinue)
        {
            string text = _story.Continue(); // gets next line

            text = text?.Trim(); // removes white space from text

            _textField.text = text; // displays new text
        }
        else if (_story.currentChoices.Count > 0)
        {
            DisplayChoices();
        }
        else
        {
            SceneManager.LoadScene("White Room", LoadSceneMode.Single);
        }

       /* string text = _story.Continue(); // gets next line
        text = text?.Trim(); // removes white space from text
        _textField.text = text; // displays new text*/
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
}
