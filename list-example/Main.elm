module Main where

import Html exposing ( table, thead, th, tbody, tr, td, text )
import Html.Attributes exposing ( class )
import List exposing (..)
import Elements exposing (elements)

genTd element =
  tr
    []
    [ td [] [text element.name]
    , td [] [text ( toString element.rank )]
    ]

main =
  table
    [ class "table" ]
    [ thead []
    [ tr
        []
        [ th [] [text "Name"]
        , th [] [text "Rank"]
        ]
    ]
    , tbody [] (map genTd elements)
    ]

