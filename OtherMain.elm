port module OtherMain exposing (..)

import Browser
import Html exposing (Html)


port hi : () -> Cmd msg


main : Program () () ()
main =
    Browser.element
        { init = \_ -> ( (), hi () )
        , update = \_ model -> ( model, Cmd.none )
        , view = \_ -> Html.text "other hi"
        , subscriptions = \_ -> Sub.none
        }
