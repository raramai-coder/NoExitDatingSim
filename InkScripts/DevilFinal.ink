VAR success = false
VAR partner = "none"

Well well well...
The time has come to make that final decision - who do you choose to spend an eternity in hell with?. I will spare you all pleasantries and let you make your decison (that I hope leads to your doom and my pleasure).

//{success:
//-false: ->knot_fail
//-true: ->knot_succeed
//}

==knot_failSelection
It is my great pleasure to inform you that you chose poorly.
{partner:
-"Michael": Your intended partner was Michael. Who could be better suited for a lowlife that sold human life for a fee than another lowlife who took human life for a fee. You might even have become friends.
-"Lucky": Your intended partner was Lucky. Who could be better suited for an experimenter of dark rituals on the souls of innocent people than an expeimenter of dark sciences on the bodies of innocent people. You might even have become friends.
-"Grace": Your intended partner was Grace. Who could be better suited for a young soul tormented by their creche teacher than a creche teacher who tormented young souls. You might even have become friends.
}
->END

==knot_failLike
It is my great pleasure to inform you that while you chose the right partner, you did not impress them enough in your conversation and they have declined to spend eternity with you, to both your perils.
{partner:
-"Michael": Your intended partner was Michael. Who could be better suited for a lowlife that sold human life for a fee than another lowlife who took human life for a fee. Too bad you didnt make Michael fond of you.
-"Lucky": Your intended partner was Lucky. Who could be better suited for an experimenter of dark rituals on the souls of innocent people than an expeimenter of dark sciences on the bodies of innocent people. You might even have become friends.
    Too bad you didnt make Lucky fond of you.
-"Grace": Your intended partner was Grace. Who could be better suited for a young soul tormented by their creche teacher than a creche teacher who tormented young souls. Too bad you didnt make Grace fond of you.
}
    -> END
    
    ==knot_success
It is my great (dis)pleasure to inform you that you chose wisely.
{partner:
-"Michael":Michael is your intended partner. Who could be better suited for a lowlife that sold human life for a fee than another lowlife who took human life for a fee. Enjoy eternity together you two imbeciles.
-"Lucky": Lucky is your intended partner. Who could be better suited for an experimenter of dark rituals on the souls of innocent people than an expeimenter of dark sciences on the bodies of innocent people. Enjoy eternity together you two imbeciles.
-"Grace": Grace is your intended partner. Who could be better suited for a young soul tormented by their creche teacher than a creche teacher who tormented young souls. Enjoy eternity together you two imbeciles.
}
->END
