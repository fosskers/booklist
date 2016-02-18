module Reviews (..) where

import Html exposing (..)
import Lazy.List as LL

---

type Review = Review String String String String

-- | Convert a `Review` to an HTML table row.
revToRow : number -> Review -> Html
revToRow n (Review name date author thoughts) =
  tr [] [ th [] [ text <| toString n ]
        , th [] [ text name ]
        , th [] [ text date ]
        , th [] [ text author ]
        , th [] [ text thoughts ]
        ]
            
reviews : LL.LazyList Review
reviews = LL.fromList
          [ Review "On Writing" "" "Stephen King" "本が書きたくなった。"
          , Review "The Associate" "" "John Grisham" "My first Grisham. Pretty interesting, had me caring what happened to the lead character the whole time."
          ]
