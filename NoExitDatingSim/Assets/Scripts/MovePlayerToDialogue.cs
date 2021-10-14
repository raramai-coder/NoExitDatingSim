using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Cinemachine;

public class MovePlayerToDialogue : MonoBehaviour
{
    [SerializeField] GameObject player;
    [SerializeField] GameObject InkManager;
    [SerializeField] GameObject DialogueCanvas;
    [SerializeField] Transform waypoint;
    [SerializeField] private CinemachineVirtualCamera gameVC;
    [SerializeField] private CinemachineVirtualCamera dialogueVC;
    private bool talking = false;
    // Start is called before the first frame update
    void Start()
    {
       
    }

    // Update is called once per frame
    void Update()
    {
        Switchcamera();
    }

    private void OnMouseDown()
    {
        //player.transform.position = waypoint.transform.position;
        player.transform.position = new Vector3(waypoint.transform.position.x, waypoint.transform.position.y, 0);
        //Debug.Log("mouse pressed");
        talking = true;
        InkManager.SetActive(true);
        DialogueCanvas.SetActive(true);
        
    }

    private void OnMouseEnter()
    {
        Debug.Log("mouse entered");
    }

    private void Switchcamera()
    {
        if (talking)
        {
            dialogueVC.Priority = 1;
            gameVC.Priority = 0;
        }
        else
        {
            dialogueVC.Priority = 0;
            gameVC.Priority = 1; 
        }
    }
}
