module Home (..) where

import Html exposing (..)
import Html.Attributes exposing (..)
import Bootstrap.Html exposing (..)
import Lazy.List as LL

import Reviews exposing (..)

---

theHead : Html
theHead = thead [] [ tr [] [ th [] [text "番"]
                           , th [] [text "書名"]
                           , th [] [text "読み終わった日"]
                           , th [] [text "作者"]
                           , th [] [text "一言感想"] ] ]

theBody : Html
theBody = tbody []
          <| LL.toList
          <| LL.map (uncurry revToRow)
          <| LL.zip (LL.iterate (\n -> n + 1) 1) reviews

theTable : Html
theTable = table [class "table"] [ theHead, theBody ]

main : Html
main = theTable
