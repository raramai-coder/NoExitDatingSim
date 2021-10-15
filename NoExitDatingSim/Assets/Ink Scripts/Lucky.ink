VAR name = "Lucky"
VAR career = "none"
VAR favor = 5


One guy once said, “everyone is a mad scientist, and life is their lab” I can’t remember the rest.

***[Uh, Hello to you too]
->knot_LuckyReason
***[What?]
->knot_LuckyReason

===knot_LuckyReason
 That’s the only reason as to why I’m here. I decided to live by that quote.
***[What type of experiments did you do then?]
->knot_Work
***[I always knew that scientist are batshit crazy!]
~favor +=1
->knot_Work
===knot_Work
Aside from being a scientist, I was also an inventor. I invented machines of different uses. I carried out experiments on the human body – trying to add bionic features. Most of them failed, and as a result I sold the healthy organs to the black market. Only as a last resort.

***[That explains why you're here and not in heavan then.]
~favor+=1
->knot_RedirectedQue
***[Ah, that’s why you’re here!]
->knot_RedirectedQue
 ===knot_RedirectedQue
And what about you miss? 
{career: 
-"none": 
***[You won't believe it, but my profession was a catcher! Finding the right prey, catch them and then sell them.]
->knot_Prey

***[This was my long term goal anyway! The Devil's advocate]
->knot_para65

***[I blame that wretched creche teacher of mine. She had traumatized me so much, I developed such a strong hatred for all creche teachers.]
->knot_para138
-"trafficker":
***[You won't believe it, but my profession was a catcher! Finding the right prey, catch them and then sell them.]
->knot_Prey

-"creche":
***[I blame that wretched creche teacher of mine. She had traumatized me so much, I developed such a strong hatred for all creche teachers.]
->knot_para138

-"devil":
***[This was my long term goal anyway! The Devil's advocate]
->knot_para65

}

===knot_Prey
may I ask what your prey was?
->knot_PreyAnswer
===knot_PreyAnswer
***[Come on! I wouldn't be here if my prey consisted of animals.]
~favor+=2
->knot_para52
***[Humans duh!]
~favor-=1
->knot_para52

===knot_para52
Ah of course. You see, you and I are similar. In the fact, that we used life to experiment with different things. You with your preys and me.. my inventions. 

*** [Yes, I suppose you have a point there.] 
~favor+=2
->knot_para68
*** [No, not even in your wildest dreams.]
~favor-=2
->knot_para71

=== knot_para68
You see, you and I, we were the ones who loved to live on the edge. I'm proud that you took your own course!
->knot_para72

===knot_para71
 Ah! well, obviously we have some similarities since we're both here, in the pits of hell. Might want to think again, sweetheart.
->knot_para72

===knot_para72
***[Hmm, I might just be able tolerate you]
~favor+=3
->END

 ***[Is there a way to kill someoe again, but in hell?]
 ~favor-=2
 ->END
 
 
 
 


===knot_para65
Long term goal?. 

***[who said dreams don't come true? I been playing Devil's advocate my entitre life, and I mean the true and ultimate advocate.]
->knot_LuckyResp

***[Basically, an experimentor like you!]
~favor+=2
->knot_LuckyResp

===knot_LuckyResp
Hmm, so you're like me huh? Tell me more.

***[Not as crazy as you, trying to make humanoids, that's just setting up for a failure, I mean, prosthetics arms and legs are enough.]
~favor+=1
->knot_para77
*** [Okay, so I experimented on differentent ways on how to conjure the devil himself and how to make myself his right hand man, well... woman.]
~favor+=1
->knot_para85

===knot_para77
 Ha ha, you wound me. Nothing I haven't heard before. But you were saying...
***[Okay, so I experimented on differentent ways on how to conjure the devil himself and how to make myself his right hand man, well... woman.]
->knot_81


===knot_81
 Wow, okay. Carry on, me being intrigued is not a usual occurence. 
->knot_para85

===knot_para85
*** [I obviously had to do research as to who the devil really is, as soon as I found out his true idenitity, I researched on things that would make him happy.]
~favor+=1
->knot_para87

***[I did many things like, sacrificing virgins, hurting people, drinking animal blood and just following his steps. Showing him I'm worthy.] 
~favor+=1
->knot_para88

===knot_para87
 And what was the final outcome?
->knot_para93
===knot_para88
 Well, how did that go? Why, are you here and not beside him?
->knot_para93

===knot_para93
 ***[I figure he's just playing hard to get for now. I ought to remind him of all the things I did in his name.]
 ->knot_para97
 ***[Well, I'm here with you, aren't I? Maybe what I did wasn't enough for him.But I know, I did everything that I could. I deserve more with him]
->knot_para97

===knot_para97
 Well, if you don't end up as his right man, you can be mine. We can always create our wn hypothesis, investigation and the rest.
->knot_para101

===knot_para101
***[Pass. With you? A deranged scientist? Who knows what might happen next, I might wake up missing an arm or an eye. No thanks]
~favor-=3
->knot_disappointed
***[You know what, not the most ideal scenario, however it isn't bad. At least we both have investigative minds, maybe he'll have some pity on us, and bring us some experiments.]
~favor+=2
->knot_Enthusiastic

===knot_disappointed
Fair enough,but in your case, beggars can't be choosers. He doesn't want you and you're nothing but another victim of his to torture. I doubt you'll find a partner here. Rot alone then.
->END

===knot_Enthusiastic
 An option is better than no option at all, right? 
 Just another thing though, tell me, how into you about sexual experiemnts? 
->knot_para123

===knot_para123
***[ Haha, I see you have jokes, hmm? we'll have to see, there's no rush. ]
~favor+=2
->END

***[If you're going to say vile things like that, then you're going to end up alone. eww.]
~favor-=2
->END




===knot_para138
 So, what did you do to these teachers?

 ***[Knowing that they were traumatizing other children too, I made it my mission to stalk as many as I could find and hurt them]
 ->knot_para139
 
 ***[Hehe, I made them disappear from the face of the earth. Just like that]
 ~favor+=1
 ->knot_para139
 
===knot_para139
 Haha, you’re a perfect fit. Damned to hell.
->knot_para140
===knot_para140
***[No, I'm not]
~favor-=1
->knot_para141
***[I guess I am]
~favor+=1
->knot_para141

===knot_para141
 Alas, we're both here, aren't we?
->knot_para149

===knot_para149
*** [Well, these are the consequences I suppose.]
->knot_Nonsense
***[Yeah, live by the sword, die by the sword.]
~favor+=2
->knot_YouSaid

===knot_Nonsense
 Nonsense. No such thing as consequences, not in the way that you put it. Only results. Do you want to play a social experiment game? 
->knot_YesNO
===knot_YouSaid
 Yeah, what you said or whatever. Do you want to play a social experiment game?
->knot_YesNO

===knot_YesNO
***[Yeah, sure, what else can I do to pass time?]
~favor+=2
->knot_yesSpirit
***[Nope, I’m not really one for games.]
~favor-=1
->knot_gameChoice

===knot_yesSpirit
 That’s the spirit! 
 On the scale of 1 to 10, how sociable do you think you are? 
->knot_ScaleChoices

== knot_gameChoice
 Well, you can either leave or decide to play. The choice is yours.
*** [This sucks anyway, you're boring. I'm leaving.]
~favor-=3
->END
*** [Fine, fine. I can't resist a social experiemnt. I'm all ears.]
->knot_yesSpirit

===knot_ScaleChoices
***[3]
~favor+=1
->knot_para193
***[6]
~favor+=2
->knot_para193
***[10]
~favor+=2
->knot_para193


===knot_para193
: do you believe that other people have perceived you in the same manner? 
***Judy: [Yes]
->knot_para203

***Judy:[I don’t know.]
->knot_para203

===knot_para203
 Do you know what the point of the experiment is?

***[Obviously not, but I’m sure you’re going to share.]
~favor+=2
->knot_share
***[I don't know, you're just wasting time I guess?]

->knot_share

===knot_share
 Hehe, well you see, there wasn’t really exactly a point. It was just me finding out for myself, if the person you end up will either be glad, they ended up with someone who has some sort of social skills or a person who will make hell even worse. 

***[Huh, interesting!]
~favor+=1
->knot_Applies

***[You're so lame, wow.]
~favor-=1
->knot_Applies

===knot_Applies
 How do you think that experiment applies to me?
****[Well, I feel like you can carry on a conversation with your unending questions, so it won’t be a boring time the entire eternity.]
~favor+=3
->knot_positive2

***[You’re annoying. I don’t think I’d want to carry on doing experiments or answering questions forever.]
~favor-=3
->knot_tragedy

===knot_positive2
 And they lived happily ever after.
->END
===knot_tragedy 
 That's too bad. I would have loved experiementing on you.
    -> END
