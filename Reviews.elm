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
          , stormFront
          , foolMoon
          , gravePeril
          , summerKnight
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
