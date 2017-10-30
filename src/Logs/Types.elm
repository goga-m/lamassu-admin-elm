module Logs.Types exposing (..)

import Date exposing (Date)
import RemoteData exposing (..)


type alias Machine =
    { deviceId : String
    , name : String
    }


type alias Machines =
    List Machine


type alias Log =
    { id : String
    , timestamp : Maybe Date
    , logLevel : Maybe String
    , message : Maybe String
    }


type alias SupportLog =
    { id : String
    , deviceId : String
    , timestamp : Date
    }


type alias Logs =
    { logs : List Log, currentMachine : Machine }


type alias Model =
    { logs : WebData Logs
    , machines : WebData Machines
    , supportLog : WebData SupportLog
    }


type Msg
    = LoadLogs (WebData Logs)
    | LoadMachines (WebData Machines)
    | ShareLogs Machine
    | LoadSupportLog (WebData SupportLog)