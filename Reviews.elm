module Reviews (..) where

import Html exposing (..)
import Lazy.List as LL
import Markdown as M

---

type Review = Review String String String Html

-- | Convert a `Review` to an HTML table row.
revToRow : number -> Review -> Html
revToRow n (Review name date author thoughts) =
  tr [] [ th [] [ text <| toString n ]
        , th [] [ text name ]
        , th [] [ text date ]
        , th [] [ text author ]
        , th [] [ thoughts ]
        ]
            
reviews : LL.LazyList Review
reviews = LL.fromList
          [ onWriting
          , associate
          , timeRush
          , daemon
          , kokuhaku
          , hobbit
          , faithOTF
          , dyingEye
          , debtOfBones
          , empireOTE
          , freedom
          , eyeOTW
          , code
          , greatHunt
          , beyondReligion
          , bunshin
          , lying
          , whenParents
          , stormFront
          , foolMoon
          , gravePeril
          , summerKnight
          , deathMasks
          , bloodRites
          , dracula
          ]

onWriting : Review
onWriting = Review "On Writing" "2011?" "Stephen King"
            <| text "本が書きたくなった。"

associate : Review
associate = Review "The Associate" "2011?" "John Grisham"
            <| M.toHtml """

My first Grisham. Pretty interesting, had me caring what happened to the
lead character the whole time.

"""

timeRush : Review
timeRush = Review "タイム・ラッシュ" "2011?" "神永学"
           <| M.toHtml """

主人公はあまり好きじゃなかった。書き方もまた、八雲みたいに微妙。

"""

daemon : Review
daemon = Review "Daemon" "2011?" "Daniel Suarez"
         <| M.toHtml """

Amazing. I AM the target audience. I love all the characters, including the
villains. This is definitely one of my favourite books!

"""

kokuhaku : Review
kokuhaku = Review "告白" "2011?" "湊かなえ"
           <| text "すごすぎる。一番好きな日本語の本。"

hobbit : Review
hobbit = Review "The Hobbit" "2011 May 22" "J.R.R. Tolkien"
         <| M.toHtml """

A classic! Read again for the first time in years. Had many parts I didn't
remember. Tolkien utilized scale very well. Things started off quite simple,
but ended in war and the salvation of a great area and a great many people.

"""

faithOTF : Review
faithOTF = Review "Faith of the Fallen" "2011 July 25" "Terry Goodkind"
           <| M.toHtml """

My favourite book, read for the 3rd(?) time. Awesome morality booster. Life
rocks. People can do anything, and religion can only impede that. I was able
to image many of the scenes in my head with more detail than before. My
reading has improved.

"""

dyingEye : Review
dyingEye = Review "Dying Eye" "2011 Aug 4" "東野圭吾"
           <| M.toHtml """

途中は楽しかったが、最初と最後は少しがっかり。特に最後で、あんな何でも有り得
そうな話を作ったのに、なぜその終わり方を選んだか分からない。自分だったらおそ
らく違う結末にしたと思う。衝撃の面で告白に及ばない。

"""

debtOfBones : Review
debtOfBones = Review "Debt of Bones" "2011 Aug 18" "Terry Goodkind"
              <| M.toHtml """

An interesting view into Zedd's past! We really get an idea of how powerful
and influential he was during his day. Completely different, and yet somehow
the same as the character that we see in the normal series.

"""

empireOTE : Review
empireOTE = Review "Empire of the East" "2011 Sept 10" "Fred Saberhagen"
            <| M.toHtml """

Great read, although it was a bit hard to get into at first. Cool blend of
technology and magic. Something else that always impresses me also appeared
in this book: scale. The scale of the story increases to great effect as the
plot progresses.

"""

freedom : Review
freedom = Review "Freedom (TM)" "2011 Sept 19" "Daniel Suarez"
          <| M.toHtml """

New world order... a part of me really thinks this needs to happen. I loved
the whole book, and everything panned out pretty well. Loki was brought down
off his high horse, and the Major got what was coming to him. However, also
like the first book, I felt the author could have done so much more with the
world he created. Peter Sebeck went from being a total noob to kicking ass
while the story was focusing on other characters. And what level did he
become after completing the quest? At least tell us that much. And it wasn't
just about Sebeck... I feel like there was so much more I wanted to know
about the other characters that we didn't get full closure from. Still,
great book.

"""

eyeOTW : Review
eyeOTW = Review "Eye of the World" "2011 November" "Robert Jordan"
         <| M.toHtml """

Epic... again, with scale! Starts small, gets huge! We really get to see the
characters grow. Also, the author is very skilled at making esoteric
language cool, and not dorky.

"""

code : Review
code = Review "CODE" "2012 Jan 9" "Charles Petzold"
       <| M.toHtml """

A great book about all things Code. And not just computer code... this book
offered a great glance into the past of man's struggle with representing
information. I honestly learned a lot about the internals of computers. As
critisism goes, the last chapter had a title that refered to one thing, yet
the contents felt like one topic mashed in after another, which lead to a
sort of “Oh, so we're done then” ending. The last paragraph brought
everything back around full circle, but I felt there needed to be a more
fleshed out conclusion.

"""

greatHunt : Review
greatHunt = Review "The Great Hunt" "2012 Jan 11" "Robert Jordan"
            <| M.toHtml """

Another great book. The characters have come a long way. I was quite
satisfied with the epic scene (blowing of the horn, riding with the fallen
heroes, battle with the Dark One) that came near to the end, by the same
formula of the first book. Of the girls, I like Min. Perrin also didn't get
enough spotlight, I felt.

"""

beyondReligion : Review
beyondReligion = Review "Beyond Religion: Ethics for a Whole World"
                 "2012 Feb 7" "Dalai Lama"
                 <| M.toHtml """

Great. Just the book I needed. I've started meditation practice and it's
really interesting to start thinking about my thoughts and emotions more. Up
until the 11th chapter, however, there were several parts that felt very
“light” in that the Dalai Lama would say “We should strive to <insert
profound thing here>” as if it were a simple task.

"""

bunshin : Review
bunshin = Review "分身" "2012 June 6" "東野圭吾"
          <| M.toHtml """

読むのにかなり時間がかかった。それは本が長かったせいではなく、ただ俺は最近ま
であまり本という物を手にしていなかったからだ。「分身」は読みやすかった。ただ
し二人の主人公にそれ程興味を持つことができなかった。作家の訴えたいことが分か
るつもりでいるが、現代では「それでどうした？」という感じが俺の中で強かった。
そのせいか、最後に二人のやっとの出会いの場面で、「あ、よかった」としか思えな
かった。そして二人をほぼ最初から支えていた下条さんと脇坂講介はさらりと切り捨
てられた始末。

"""

lying : Review
lying = Review "LYING" "2012 Aug 3" "Sam Harris"
        <| M.toHtml """

A short book on lying. More of an essay, really. It taught me that to lie,
white lies included, is to deny others reality. It is a refusal to further
your relationship with someone. Truth need only be repeated, while lies need
to be maintained. Lies that one tells to protect someone's feelings can lead
them to decisions that we didn't intend on them making. In the long run,
they are worse off.

Telling the truth doesn't mean you have to be blunt and rude all the time,
it just means you have to be wise with your words. “Truth” can mean many
things.

"""

whenParents : Review
whenParents = Review "When Parents Text" "08/14/2012" "?"
              <| M.toHtml """

Gift from my sisters. Quite funny. Laughed out loud a number of times. Was a
good eye-opener to the world of parent-child relationships through
technology.

"""

stormFront : Review
stormFront = Review "Storm Front" "2015 Dec 20" "Jim Butcher"
             <| M.toHtml """

A fun mystery told in first-person. Other than being a wizard, Harry seems
like a normal guy. The book itself was really easy to read, and actually
ends pretty quickly.

I didn't like how the author introduced many book-worthy backstory elements
all at once. It felt like he was rushing to make his protagonist seem deep
and complicated. I thought this way in particular when He Who Walks Behind
was brought up in the police station.

"""

foolMoon : Review
foolMoon = Review "Fool Moon" "2016 Jan 1" "Jim Butcher"
           <| M.toHtml """

Much more action packed than the first book. I liked how in depth he went
with the various werewolf types.

Near the end there was very much a feeling of 'There is no way he is getting
out of this alive.'

"""


gravePeril : Review
gravePeril = Review "Grave Peril" "2016 Feb 9" "Jim Butcher"
             <| M.toHtml """

This was my favourite so far. There was very much a sense of dread
throughout the book. The interactions with the vampire court, the Nightmare
and Harry were fascinating. I felt as ignorant of the truth as Harry did,
and was surprised when the truth was revealed. Harry also showed us more of
what he was capable of magically.y

Great, satisfying, if not sad, ending.

"""

summerKnight : Review
summerKnight = Review "Summer Knight" "2016 Feb 17" "Jim Butcher"
               <| M.toHtml """

Didn't live up to the hype as The-Best-in-the-Series, and the tone was
somehow lighter than Grave Peril. Still, I enjoyed it. The book gave us a
view into the worlds of the White Council and the Faeries, both of which we
previously knew little about. I think I did myself a disservice by reading
the ending late at night.

The twist worked on me; I didn't think the culprit would be Aurora.

As the series progresses, things are getting gradually more fantastical.
This book ending with a mass-Faerie battle in the sky is evidence of that.

"""

deathMasks : Review
deathMasks = Review "Death Masks" "2016 Mar 18" "Jim Butcher"
             <| M.toHtml """

This one wasted no time getting started. Little was resolved, but a new
major character/group was introduced. I imagine they'll be in play for some
time.

Death Masks was more consistently thrilling than *Summer Knight*. I think
the title is referring to Shiro, his terminal condition and fate to die.

"""

bloodRites : Review
bloodRites = Review "Blood Rites" "" "Jim Butcher"
             <| M.toHtml """

It seems like all I've been reading is Jum Butcher. The stories are good,
I have to give him that. Dresden himself is an odd creature, and I don't
know if he is a reflection of Butcher himself. I wouldn't be surprised
if that were the case. 

Dresden fancies himself 'old fashioned' regarding women, which he is
chastised for. Yet he is completely subservient to them. He admits
himself that he can't refuse a pretty face, and over the course of the
books it's lead him into trouble more than once. He is now making
obvious his attraction to Karrin, but she, surprise surprise, falls for
the bad-boy alpha male (Kincaid). Perhaps then Butcher is aware of that gender
dynamic, as he didn't just throw Karrin at Dresden's feet for saving her
umpteen times.

Dresden is odd, because he's closer to the beta end of the spectrum
mentally, while still fearlessly kicking ass like an alpha. This seems to me
like a beta fantasy, but I don't know enough about Jim Butcher himself to
make a call as to whether Dresden is a reflection of him. Perhaps I should
just stop judging the book for its author, and just accept the message
as-is.

"""
   
dracula : Review
dracula = Review "Dracula" "2016 Apr 25" "Bram Stoker"
          <| M.toHtml """

What a drawing book. I could hardly put this down the entire time I was
reading it. I feels like a lengthy novel, but it's hard to tell as I read it
on my Kindle. Even so, I completed it in a week or two.

What a thrill. Somehow I was surprised that an 'old' book could be so
enticing and well written. Why should the present day have a monopoly on
'good literature'? I felt terror for Jonathan Harker as he toiled through
Castle Dracula, sadness at the party's failure to protect Lucy, and tension
toward their pursuit of Dracula through both England and wilder Europe.

Nearing the end I felt no surity that good would prevail and Dracula would
be slain. I can attribute this to the wealth of Dracula lore that has
followed this book. Is Dracula truly dead? The book would have us believe
so, as Dracula crumbled to dust and Mina was freed from her curse. Games
like Castlevania would argue otherwise. I will do more research.

"""
