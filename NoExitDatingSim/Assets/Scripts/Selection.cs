using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Selection : MonoBehaviour
{
    // Start is called before the first frame update
    [SerializeField] Sprite fire;
    [SerializeField] Sprite black;
    void Start()
    {

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
}