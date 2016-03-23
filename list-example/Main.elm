module Main where

import Html exposing ( table, thead, th, tbody, tr, td, text )
import Html.Attributes exposing ( class )
import List exposing ( filter, map )
import Elements exposing (elements)

{-

Your task:
- Add a row index
- it should count from 1-n
- Sort the people by rank
- Filter them by rank (> 2)

-}

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

