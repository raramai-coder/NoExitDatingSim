using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using Ink.Runtime;

public class InkManagerSelection : MonoBehaviour
{
    [SerializeField]
    private TextAsset _inkJsonAsset;
    private Story _story;

    [SerializeField]
    private Text _textField;
    [SerializeField]
    private Text _nameField;

    public static string winState;
    public static bool selected = false;

    // Start is called before the first frame update
    void Start()
    {
        StartStory();
    }

    // Update is called once per frame
    void Update()
    {
        if (selected)
        {
            _story.ChoosePathString(winState);
            DisplayNextLine();
            //selected = false;
        }
    }

    private void StartStory()
    {
        _story = new Story(_inkJsonAsset.text);
        _story.variablesState["partner"] = GameManager.partner;
        DisplayNextLine();
    }

    public void DisplayNextLine()
    {
        if (_story.canContinue)
        {
            string text = _story.Continue(); // gets next line

            text = text?.Trim(); // removes white space from text

            _textField.text = text; // displays new text
            _nameField.text = "The Devil";
        }
      /*  else if (_story.currentChoices.Count > 0)
        {
            DisplayChoices();
            _textField.text = "";
            _nameField.text = "You";
        }
        else
        {
            SceneManager.LoadScene("White Room", LoadSceneMode.Single);
        }*/

    }

    
}
