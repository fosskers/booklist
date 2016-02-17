module Home (..) where

import Html exposing (..)
import Bootstrap.Html exposing (..)

---

type Review = Review String String String String

--reviews :: 

theHead : Html
theHead = thead [] [ tr [] [ th [] [text "番"]
                           , th [] [text "書名"]
                           , th [] [text "読み終わった日"]
                           , th [] [text "作者"]
                           , th [] [text "一言感想"] ] ]

theTable : Html
theTable = table [] [ theHead, tbody [] [] ]

main : Html
main = theTable
