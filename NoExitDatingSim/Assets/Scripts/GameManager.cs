using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Cinemachine;

public class GameManager : MonoBehaviour
{

    public static bool talking = false;// Start is called before the first frame update
    [SerializeField] private CinemachineVirtualCamera gameVC;
    [SerializeField] private CinemachineVirtualCamera GraceVC;
    [SerializeField] private CinemachineVirtualCamera LuckyVC;
    [SerializeField] private CinemachineVirtualCamera MichaelVC;

    public static int talker = 0;
    public static int CharactersTalkedTo = 0;
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        if (talking)
        {
            
            gameVC.Priority = 0;
            
            switch (talker)
            {
                case 1:
                    GraceVC.Priority = 1;
                    LuckyVC.Priority = 0;
                    MichaelVC.Priority = 0;
                    break;
                case 2:
                    GraceVC.Priority = 0;
                    LuckyVC.Priority = 1;
                    MichaelVC.Priority = 0;
                    break;
                case 3:
                    GraceVC.Priority = 0;
                    LuckyVC.Priority = 0;
                    MichaelVC.Priority = 1;
                    break;
            }
        }
        else
        {
            GraceVC.Priority = 0;
            LuckyVC.Priority = 0;
            MichaelVC.Priority = 0;
            gameVC.Priority = 1;
            //InkManager.SetActive(false);
            //DialogueCanvas.SetActive(false);
        }

        if(CharactersTalkedTo == 3)
        {
            Debug.Log("Talked to all");
        }
    }
}
