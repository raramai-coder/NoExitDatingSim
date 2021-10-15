using System.Collections;
using System.Collections.Generic;
using UnityEngine;


public class Selection : MonoBehaviour
{
    // Start is called before the first frame update
    [SerializeField] Sprite fire;
    [SerializeField] Sprite black;
    [SerializeField] GameObject character;

    public static string characterChosen;
    //public static string partner;


    void Start()
    {
        characterChosen = character.name;
    }

    // Update is called once per frame
    void Update()
    {

    }

    private void OnMouseEnter()
    {
        transform.GetComponent<SpriteRenderer>().sprite = fire;
    }

    private void OnMouseExit()
    {
        transform.GetComponent<SpriteRenderer>().sprite = black;
    }
    private void OnMouseDown()
    {
        

        if(characterChosen == GameManager.partner)
        {
            if (GameManager.partnerScore > 9)
            {
                InkManagerSelection.winState = "knot_success";
            }
            else
            {
                InkManagerSelection.winState = "knot_failLike";
            }
        }
        else
        {
            InkManagerSelection.winState = "knot_failSelection";
        }

        InkManagerSelection.selected = true;
        //Debug.Log(GameManager.partner);
    }
}