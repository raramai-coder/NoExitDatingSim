VAR name = "Michael" 
VAR career = "none"
VAR favor = 5
VAR mood = "positive"

 My my my, how does an innocent looking angel like you end up in a place full of monsters like me? 
->start_knot
===start_knot===
***[Well, the same reason you're here. Evil deeds and what not.]
->knot_Michael
***[Because this is where angels land up, hm?]
->knot_Fiesty

===knot_Fiesty
I see you brought your sense of humor along too.
->knot_Michael
===knot_Michael 
 The name’s Michael by the way and you are?
->knotIntroduction
===knotIntroduction
***[It's Judy. So, what you do to end up in a place like this?]
->knot_MichaelStory
***[That's not important, name's don't matter right now. Why'd you land up here?] 
->knot_MichaelStory
===knot_MichaelStory
 Well, in my earthly years, I was a hired hitman from the black market. You needed anyone assassinated? I was your guy. I could assassinate anyone, from your annoying kid to your drunken father or just the annoying old cat lady next door. All at a price of course.
 
***[I’m impressed, wish I could have hired you to make my ex-boyfriend disappear]
~mood = "positive" 
~favor+=2
->knot_MichaelSuave
*** [You killed Children? That’s harsh, no wonder you landed up here]
~mood = "negative"
~favor-=2
->knot_MichaelSuave

===knot_MichaelSuave
Michael: Yeah, yeah. I get that a lot. Anyway, I’ve been waiting to hear what your evil deeds were. 
{career: 
-"none" :
***[Human Trafficking]
->knot_humanTrafficking
***[Conjuring the Devil] 
-> knot_para100
*** [Stalking Creche Teachers]
-> knot_StalkerVibes
-"trafficker":
***[Human Trafficking]
->knot_humanTrafficking
-"creche":
*** [Stalking Creche Teachers]
-> knot_StalkerVibes
-"devil":
***[Conjuring the Devil] 
-> knot_para100
}

===knot_humanTrafficking
Oh we have a Trafficker amongst us today. Great, let's get the party started? Why don't you tell me more? 
***[I don't think I want to. I'm good.]
~mood = "negative"
~favor-=2
->knot_para49

***[Oh, nothing too crazy to be honest, I just helped attaining victims for human traffickers.]
~favor+=2
->knot_para50

===knot_para49
If you're not going to make conversation, you're going to end up alone and get bored to death - not that you can die, it's just death would seem like a better option.
->knot_para51

===knot_para50
Oh please, don't act like it's nothing. It's also quite brave and risky of you.
->knot_para67

===knot_para51
***[Let me die in boredom then]
~mood = "negative"
~favor-=3
->knot_suitYourself

***[It just made it easy to build one’s trust and then the next day give them away to whoever. You know a girl had to make a living.]
~favor+=1
->knot_FullSelf

===knot_suitYourself
Alright, suit yourself.
->END
===knot_para67
 ***[I mean, look at this face, everyone loved me. I could never be wrong in anyone's eyes.]
 ~mood = "negative"
 ~favor-=1
 ->knot_FullSelf
 
 ***[It just made it easy to build one’s trust and then the next day give them away to whoever. All at a cost of course. A girl had to do what she had to do to afford life.]
 ~mood = "positive"
 ~favor+=2
 ->knot_FullSelf
 
 ===knot_FullSelf
 You really are full of yourself aren't you? 
 ***[I have everything to back it up]
 ~favor+=2
 ->knot_para_83
 
 ***[Says the person who has narcassistic written all over him]
 ~mood = "positive"
 ~favor+=1
 ->knot_para_83
 
 ===knot_para_83
 Ah, Touche! You must have been such a loud mouth in your earthly days.How did they ever manage? 
 
***[I barely had friends. I trusted a few to none people, so I was almost always alone. Not anyone's burden]
~mood = "positive"
~favor+=3
->knot_91

***[Me? Oh dear, I was incredibly famous. Everyone loved me even though I didn't love the half of them back]
~mood = "negative"
~favor-=2
->knot_92

===knot_91
Ah something we have in common then. People who found peace in their own company.
->knot_para93

=== knot_92
Wow, I'm sure they secretly hated you. You know, human beings are quite th deceivers. Trust me, you would know, wouldn't you? 
->knot_para93
 
 ===knot_para93
 *** [Enough about me and my earthly ways. Where'd you find the heart to become an assasin? ]
 
 ->knot_para94
 
 ***[I know you enjoy talking about me and I love that too, but if I don't figure out why you're more annoying than you are now, I might not have the opportunity to make the right call]
 ~favor-=2
 ->knot_para94
 
 ===knot_para94
 Ah, like a date, get to know you, get to know me. Well, I became an assasin, for money related issues. Also, as a youngster, I had gone hunting with my father, turns out I was a natural. 
 
 ***[Look at that, I suppose there is some sort of human underneath that stone heart killer. That's somewhat sweet.]
 ~mood = "positive"
 ~favor+=3
 ->knot_para95
 
 ***[Is this another sob-sad-daddy-abandonment story? I've heard a lot of those in my lifetime. Is that the reason you became who you are?]
 ~mood = "negative"
 ~favor-=2
 ->knot_96
 
===knot_para95
Oh quit it already. I wasn't good at many things. So when I realised I was good at shooting, I became better and did it for cash. End of Story. 
->knot_para97
===knot_96
Screw you, there's no such involved. I love killing people and that's that. 
->knot_para97

===knot_para97
I'm curious to know though, how often did you like listening to music when you were alive?
***[Not often to be honest. Maybe when I went out or when someone else was playing. Not really a fan]
~mood = "negative"
~favor-=3
->knot_para98

***[Every single damn day of my life! I wanted to join a band at one point, however, life was punching me in the guts. ]
~mood = "positive"
~favor+=3
->knot_para99

===knot_para98
Well.. I guess we barely have anything to talk about. I always thought music connected different people, despite their race, beliefs and morals. But here you are, proving me wrong once again. 
It might just end here. 
->END

===knot_para99
Ah, she might have a soul afterall! There is something out there worth believing in I suppose. I always thought music connected different people, despite their race, beliefs and morals. We obviously have a lot to discuss then. 

[Nah, I'll think about it. Maybe]
~mood = "mood"
~favor+=1
->END

[Look at that, we certainly do.]
~mood = "positive"
~favor+=2
->END


===knot_para100
Wait you actually wanted to conjure the devil?

***[Yes, Landing up here, was my goal anyway. Some may say I been obsessed with the devil, but I just say I was fascinated by his existence.]
->knot_para101

***[I know you're not deaf, so I know you heard what I said as clear as crystal.]
~mood = "negative"
~favor-=2
->knot_para101

===knot_para101
Oh, I heard what I thought I heard. Why would someone who looks as pure as you, want to conjure up something so... frightening?

***[I’m hoping I’ve earned my place to be in his good books. I conducted several experiments, did my research in the different forms of religion, to find whoever was painted as the bad guy. You know, dabbled in witchcraft, sacrificed virgins, and drank animal blood.]
~mood = "positive"
~favor+=1
->knot_para102

***[Oh, you know, so he can be my sugar daddy. To be in his good books of course, duh. What else? I saw his worshippers on earth and saw how prosperous they all were.]
->knot_para102

 ===knot_para102
 They were right, it's the cute ones who always turn out being the craziest. I've met an example in the flesh. 
 
 ***[Crazy? Says the one who derives pleasure from killing people. Check yourself again]
 ~mood = "negative"
 ~favor-=2
 ->knot_para103
 ***[Call me crazy, I know what I was doing, trust.]
 ->knot_para103
 
 ===knot_para103
 Hahaha, all that effort to land up next to me? A mere mortal. Say, how did your plan go? 
 ***[You're laughing now, but you'll be crying later. Him and I have a deal and you'll be so upset that you laughed]
 ~mood = "positive"
 ~favor+=1
 ->knot_para104
 
 ***[Yeah, Yeah, I know. It almost looks like a waste now, but I still have some hope. surely I should be rewarded in some way or another.]
 ~favor+=2
 ->knot_para104
 
 ===knot_para104
 Hey, man. I hope it all works out for you? Just as much as I hope I don't end up with someone who's crazier than you. I think I've reached my daily limit of crazy. 
 
 ***[Hmm, so what you're saying is, that you definitley wouldn't mind spending the rest of eternity with me?]
 ~mood = "positive"
 ~favor+=2
 ->knot_para105
 ***[Trust me, you'd be the last person I would hope to end up with, you're so... I can't even find enough vile adjectives to describe you. ]
 ~mood = "negative"
 ~favor-=2
 ->knot_para106
 

===knot_para105
Hey, if push comes to shove, you might just be someone I consider. I mean, I'll have a cute face to look at. The craziness... I'm sure I can cure that. 
->knot_107

===knot_para106
Oh goodie, I'm glad the feeling is mutual then. Imagine not being wanted by the devil or someone as amazing as me. What a sad story indeed. 
->knot_107
===knot_107
***[Hahah, look who brought their sense of humor with them too. ]
~mood = "positive"
~favor+=2
->END

***[Goodbye, asshole]
~mood = "negative"
~favor-=2
->END




 ===knot_StalkerVibes
  Woah, what did creche teachers ever do to you?
  
  ***[I blame that wretched creche teacher of mine. She had traumatized me so much, I developed such a strong hatred for all creche teachers.]
  ->knot_108
  ***[Pat me on the bottom. Okay, no, something a little more serious than that.]
  ~mood = "positive"
  ~favor+=2
  ->knot_108
  
  ===knot_108
  And you decided to do what in return?
  ***[I made it my mission to stalk as many as I could find and hurt them physically and mentally. If that involved getting my hands bloody, the more enjoyable the experience.]
  ~mood = "positive"
  ~favor+=1
  ->knot_FaceOfDeceiver
  
  ***[Give them a poisonous apple, is what I would have done, if I knew how to when I was younger]
  ~favor+=2
  ->knot_FaceOfDeceiver
 

===knot_FaceOfDeceiver
 Hmm, so that face is sure a deceiver. Hey, the devil was once an Angel too. I can’t blame you.
 
 You think you could handle being with a great snipper shooter like me? I promise I don’t bite; however, I do love singing though.

***[Can you sing though?]
->knot_para109

***[Even your voice while talking annoys me, imagine singing. Another sort of hell]
~mood = "negative"
~favor-=2
->knot_para109

===knot_para109
 Uh, well I mean, I’m not one to burst ear drums if that’s what you’re asking. 
***[Sure, maybe I can live with that]
~mood = "positive"
~favor+=3
->knot_EternityQuestion

***[Hell to the No! At least let the only thing angelic about you be your voice, if not, then shut it.]
~mood = "negative"
~favor-=1
->knot_EternityQuestion

=== knot_EternityQuestion
Okay, fair answer. What do you think you’ll be doing for the rest of eternity in hell?

***[ Oh, I don’t know, perhaps learn some assassination skills from you, in case I somehow end up given another life to live]
~mood = "positive"
~favor+=3
->knot_CartoonQuestions

***[ Nothing, I got my revenge on those creche teachers. I can say I lived a satisfactory life. I’ll just catch up on the lost amount of sleep I had been missing due to my stalking.]
~mood = "negative"
~favor-=3
->knot_CartoonQuestions

=== knot_CartoonQuestions
 Sounds… interesting. Just one more question though. You ever watched cartoons while you were living? 

***[Of course not, those are for kids.]
~mood = "negative"
~favor-=2
->knot_goingtobehard

*** [Hell yeah! Every day of my life. ]
~mood = "positive"
~favor+=3
->knot_goingtoFun

===knot_goingtoFun
 We definitely have something to discuss about, perhaps even pitch our own cartoons!
->END
===knot_goingtobehard
Yeah… this is going to be hard.


 
    -> END
