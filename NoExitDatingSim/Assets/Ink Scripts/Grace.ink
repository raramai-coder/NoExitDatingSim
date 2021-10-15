//Global Variables                                                                       
VAR name = "Grace"
VAR career = "none"
VAR favor = 5

 ->start_knot

 ===start_knot===
Grace, pleasure to meet you. And you are?
***[Tell her your real name]
~favor+=1
->knot_realName
***[Tell her a fake name]
~favor-=1
->knot_fakeName


===knot_realName
Again, nice to meet you. Well... as nice as it can be to meet someone in hell.
->knot_getToKnowGrace

===knot_fakeName
I can tell you're lying. I hate liars.
    ->knot_getToKnowGrace

===knot_getToKnowGrace===
***[What do you think you're in here for?]
~favor-=1
->knot_whatareYouInFor
***[Where shall we begin?]
~favor+=1
->knot_whereShallWeBegin


===knot_whatareYouInFor
{knot_realName: I do not appreciate tactlessness. Let's be polite.}
{knot_fakeName: First you lie to me, now you come to me in this most unmannered and uncivilised way. }
***[Apologise]
~favor+=1
->knot_apologise
***[I don't see the point in tiptoeing around such important facts.]
~favor-=1
->knot_facts

===knot_apologise
If you're really sorry, then I can be forgiving. My name is Grace after all.
And besides, I've had to learn patience in my line of work.
***[What is your line of work?]
->knot_lineofWork
***[And what a beautiful name Grace is.]
~favor+=1
->knot_beautifulName

===knot_facts
Then I see you and I will grate each other to no end.
***[Then we can end this converation]
~favor-=1
->knot_endConversation
***[ we can find a way to get over it, we might still be right for each regardless of that small fact.]
~favor+=1
->knot_getOverIt

===knot_lineofWork
I was a creche teacher.
A noble profession, but highly underappreciated one. We form and mould and shape society from its roots. And get very little for it in return, but nonetheless I was serious about my job.
->knot_knowWork

===knot_beautifulName
Thank you! This is truly the kind of cultured polite conversation I appreciate.
It might seem like a lot but when you spend your days surrouded by rowdy toddlers, well mannered conversation with other adults really becomes important.
***[Why were you surrounded by toddlers?]
->knot_lineofWork
***[You sound a bit uptight.]
~favor-=1
->knot_uptight

===knot_endConversation
//must give player harsh consequences
Really? Even the way you end conversation crass and lowly.
***[Goodbye]
~favor-=1
->END
***[You think so highly of yourself]
->knot_uptight

===knot_getOverIt
That's true, I do favor perseverance in a person, as someone who was a creche teacher.
What was your life's work?
 {career:
 -"none":
 ***[A contractor]
->knot_contractor
***[A spritual experimenter]
->knot_sprirtualExperimenter
***[Odd jobs here and there]
->knot_obsessedWithCrecheTeachers
-"trafficker":
***[A contractor]
->knot_contractor
-"creche":
***[Odd jobs here and there]
->knot_obsessedWithCrecheTeachers
-"devil":
***[A spritual experiment]
->knot_sprirtualExperimenter
}
//***A contractor
//->knot_contractor
//***A spritual experimenter
//->knot_sprirtualExperimenter
//***Odd jobs here and there
//->knot_obsessedWithCrecheTeachers


===knot_knowWork
And now that you know what my life's work was, tell me more about yours.
 {career:
 -"none":
 ***[A contractor]
->knot_contractor
***[A spritual experimenter]
->knot_sprirtualExperimenter
***[Odd jobs here and there]
->knot_obsessedWithCrecheTeachers
-"trafficker":
***[A contractor]
->knot_contractor
-"creche":
***[Odd jobs here and there]
->knot_obsessedWithCrecheTeachers
-"devil":
***[A spritual experimenter]
->knot_sprirtualExperimenter
}

===knot_uptight
Only someone who has low opinion of themselves would hold such an opinion about me.
{knot_fakeName: And seeing as you're not even able to present your real name I can see as much.}
And in any case I have every right to think highly of myself (or uptight as you might put it). The things I accomplished in my life grant me the right.
***[What did you do?]
->knot_lineofWork
***[Are these accomplishments what got you here?]
~favor-=1
->knot_reasonSpeculationGrace

===knot_contractor
What kind of contracting?
***[I'd get people for people]
~favor+=1
->knot_peopleForPeople
***[Do you really want to know?]
->knot_reallyWantToKnow

===knot_sprirtualExperimenter
What could that possibly mean?
***[It means I was obessed with the Devil and would do any ritual to summon him.]
~favor+=1
->knot_obsessedWithDevil
***[Do you really want to know?]
->knot_reallyWantToKnow

===knot_obsessedWithCrecheTeachers
You must have not gotten a good education to end up in that position.
***[I had a terrible start to my academic career.]
->knot_terribleStart
***[Do you really want to know?]
->knot_reallyWantToKnow

===knot_reasonSpeculationGrace
Of course not! My work with the children was noble, I would even say a necessary evil.
**[I've never eard anyone refer to teaching children as 'a necessary evil'.]
->knot_necessaryEvil
**[Then I can't see why you would be here?]
~favor+=1
->knot_whyHere

==knot_peopleForPeople
{knot_reallyWantToKnow: I can put two and two together.}
Sounds like you were a pimp, for lack of a better word.
**[Given what I actually did being a pimp wouldn't have landed me here. Where I came from I had no real chance. No real chance to get an education, get a job in one of those fancy offices, least of all build an empire.  But I did that- I built an empire.]
~favor+=1
->knot_traffickingExplanation
**[I wasn't. Where I came from I had no real chance. No real chance to get an education, get a job in one of those fancy offices, least of all build an empire. But I did that- I built an empire.] 
~favor+=1
->knot_traffickingExplanation

==knot_traffickingExplanation
**[And I don't regret it] -> knot_noRegrets 
**[But like everyone I have some regrets I guess]
->knot_Regrets

==knot_noRegrets
I think I know what that feels like. Looking back and even though it seems wrong, you know it was right.
~favor+=1
**[What did you do that you have no regrets of?]
->knot_explainingGraceActions1
**[I don't quite want to agree until you know the full extent of my actions]
->knot_extentofTrafficking

==knot_Regrets
I have none. And I don't think anyone should have regrets anyway.If what you did put some good into the world it can't be wrong. We have to do the hard good things, by any means necessary.
**[What were your 'any means necessary'?]
->knot_explainingGraceActions1
**[Well some of my means got me here.]
->knot_extentofTrafficking

==knot_explainingGraceActions1
{knot_didntAppreciateDevotion: I would say the hard work I did in crafting only the cream of children. You see,}
Not all children are blessed with a bright mind and proclivity for education. Sometimes you have to shape them with a hard fist and a rod. But its all worth it when you see the marvels they grow into. And if they can't shaped, why let people go on wasting resources on them.
{knot_peopleForPeople: And in your case you know better than anyone that there are people out there in dire need of resources, why waste them?}
**[That's awful. People trusted you with their children.]
~favor-=1
->knot_trustedWithChildren
**[Hmmm, maybe we are meant for each other after all.] 
~favor+=1
{knot_peopleForPeople: Sometimes I got children for my clients.->knot_extentofTrafficking}
{knot_terribleStart: I had a terrible creche teacher. ->knot_menace}


==knot_extentofTrafficking
What exactly was the extent of your 'getting people for people'?
**[Anyone for anyone really. Someone needed a maid, I got one for them. A couple need a child or a baby, I delivered. And anyone that needed a person but didn't disclose what for, I gave a person over. Because really what difference does it matter.]
How did you get all these people?
->knot_luredVictims
**[I had my limits of course, clients I wouldnt serve etc. I mostly worked for European companies that needed labour.]
~favor+=1
{knot_Regrets: Curiously, even with all your limits you still have regrets. How did you get all these people?}
->knot_luredVictims

==knot_trustedWithChildren
{knot_peopleForPeople: Oh, you think you're better than me? Why don't you tell the truth about your 'getting people for people'. {knot_fakeName: And don't try lying again, because I know exactly what you mean by 'getting people for people', ~favor-=1} ->knot_extentofTrafficking}
{knot_obsessedWithDevil: I won't be judged with someone who was obsessed with the Devil. At least what I did was to help other people.  ->knot_extentOfSummons}




==knot_luredVictims
**[I got them to trust me. And then when their guards were down, I did the deed and got to them to the buyer.]
->knot_bye
**[I didn't do any of the heavy lifting myself, I got other people to do that.]
->knot_bye


==knot_reallyWantToKnow
Trust me, there's very little you could say that could scare me. I'm stronger than most.
{knot_whatareYouInFor: You're the one who was in a rush to know my 'sins', now you're shy?}
{knot_contractor: ->knot_peopleForPeople}
{knot_sprirtualExperimenter: ->knot_obsessedWithDevil}
{knot_obsessedWithCrecheTeachers:->knot_terribleStart}


==knot_obsessedWithDevil==
{knot_reallyWantToKnow: I'm guessing you did rituals to try sumon the Devil.Did you ever succeed before you died?}
{not knot_reallyWantToKnow: It seems, congratulations are in order then. Did you ever succeed before you died? ~favor+=1}
**[No, and I don't think he even appreciated my devotion.]
->knot_didntAppreciateDevotion
**[I wish. But now that I'm here I'll try to make the best of it.]
~favor+=1
->knot_explainGamePlan

==knot_didntAppreciateDevotion
That's the trouble with thankless work, trust me I know all about underappreciated. 
Heck, the fact that I'm here speaks to that.
**[I wanted to be here, but with your work how did you get here?]
~favor+=1
->knot_explainingGraceActions1
**[But I won't be underapreciated for long, I have a plan.]
~favor+=1
->knot_explainGamePlan

==knot_extentOfSummons
In any case, what did you do to try summon the devil that got you here?
**[Anything and everything. From virgin sacrifices to seances of notoriously evil people in history. And i drank a lot of animal blood along the way. Don't know how I died, but I think that had something to do with it.]
->knot_speechless
**[The usual, I traversed through all the major religions and spiritual practices and tried to summon whatever evil forces that specific belief system condemned. I have a thing for the UnderDog you see. And would do whatever is required to 'summon' those entities in hopes of drawing the devil.]
~favor+=1
->knot_amused

==knot_speechless
I ...... am speechless. Why would you do such a pointless thing?
**[I can't explain even if I tried. Why did you do all those horrible things to those kids? I bet you couldn't explain it either.]
->knot_bye
**[Because I wanted to and I didnt give a damn. Also I enjoyed going against the stream.]
~favor+=1
->knot_bye

==knot_amused
I'm quite amused by you. And I think you would make an interesting partner for eternity.
->knot_bye

==knot_explainGamePlan
What do you intend to do?
**[Starting with beating this challenge and if that doesn't catch Their attention I will regroup and make new plans.]
->knot_devilPronouns
**[I can't share that just yet, but if you're curious I can tell you what got me here.]
->knot_extentOfSummons

==knot_devilPronouns
How do you know the Devil's pronouns are They/Them?
**[I know thngs, I'm obessed with Them remember.]
~favor+=1
->knot_extentOfSummons


==knot_terribleStart==
{knot_reallyWantToKnow: Tell me more about your terrible start,  were your teachers too soft on you?}
{not knot_reallyWantToKnow: Tell me more, were your teachers too soft on you?}

**[Quite the opposite actually. She was a menace]
~favor-=1
->knot_menace
**[I'm more interested in how you 'helped' your pupils]
~favor+=1
->knot_explainingGraceActions1

==knot_menace
Teachers are seldom the problem if ever, but what did this particular teacher do?
**[She seemed lovely at first. But then her true colors came out. She would verbally berate and abuse me, accuse me (a four year old) of being arrogant and try to humble me. The last straw was when she poisoned me, I left the province after that.]
->knot_poisoned
**[You might be shocked with exactly how much you two had in common.]
->knot_knowGrace

==knot_poisoned
Sounds like your teacher was trying to help you, and you were set on remaining a waste of resources.
**[Of course you would think so. If only I ever ran into you when we were alive]
->knot_obsessCrecheExtent
**[What would you have done to me if I was your pupil?]
->knot_helpYou

==knot_knowGrace
I pride myself in knowing I was the only teacher with my dedication to creating the perfect class of children. So I doubt we had much in common.
**[That's funny. Because much like you she seemed lovely at first. But then her true colors came out. She would verbally berate and abuse me, accuse me (a four year old) of being arrogant and try to humble me. The last straw was when she poisoned me, I left the province after that.]
->knot_poisoned 
**[Is that so? And what would you have done to me if I were in your class?]
->knot_helpYou

==knot_obsessCrecheExtent
Why?
**[You see I hurt people like you. Stalked you, found out your routine and then discovered the best way to torture you psychologically. Be it by harming your loved or unraveling your life in its seams. I had no limits, except for murder.]
~favor-=1
->knot_wantTo
**[You see I hurt people like you, creche teachers. Stalked you, found out your routine and then discovered the best way to torture you psychologically. Be it by harming your loved or unraveling your life in its seams. And finally, I would end your life.]
~favor-=1
->knot_wantTo

==knot_helpYou
I would everything in my power to help you. Any sort of disciplinary action that was required. And if that didn't work, lets just say you wouldn't last long enough to become a deadbeat who works odd jobs of no use to anyone.
**[I had a job actually of great use. But I think you might find it ironic.]
->knot_obsessCrecheExtent
**[Too bad we're in hell and can't die anymore. But if I could...]
~favor-=1
->knot_wantTo

==knot_wantTo
You almsot sound as you wish to harm me. To kill me.
**[I do.]
~favor-=1
->knot_bye
**[I'm over that part of my life]
~favor+=1
->knot_bye

==knot_necessaryEvil==
It's the things you have to do to save the children, to mould them and their futures.
->knot_explainingGraceActions1


==knot_whyHere
I don't believe I should be here. But nonetheless I did what I did. 
->knot_explainingGraceActions1


===knot_whereShallWeBegin
Well I believe people whose life purposes were aligned would be a perfect match in the afterlife.
Your life's mission doesn't have to have been similar to mine, but maybe as noble as mine is necessary.
**[What was your noble profession?]
~favor+=1
->knot_lineofWork
**[That seems too obvious]
->knot_trickOfGame

==knot_trickOfGame
I hate to be wrong but that could be true. This is the devil we're dealing with after all.
***[Let's not read too much into it. Let's focus on getting to know each other.What was your proffession?]
~favor+=1
->knot_lineofWork
***[Or the game is that simple and people trip up because they assume it can't be that simple. What was your profession?]
->knot_lineofWork

==knot_bye
{knot_contractor: In that case then, I don't think we might too bad of partners in the after life. Goodluck with your decision.}
{knot_sprirtualExperimenter:  I think you would make an interesting partner for eternity.}
{knot_obsessedWithCrecheTeachers: Regardless, I highly doubt we would make good partners for eternity.}

->END
