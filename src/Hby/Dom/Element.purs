module Hby.Dom.Element where

import Prelude
import Effect (Effect)
import Hby.Dom.Alias (Html, Id, Value)
import Hby.Dom.Event (ChangeEventData, ClickEventData)

foreign import data Element :: Type

-- showElement
_showElement :: Element -> String
_showElement _ = "这是一个dom对象"

instance show_Element :: Show Element where
  show a = _showElement a

-- getElementById
foreign import getElementById :: String -> Effect Element

-- setValueById
foreign import setValueById :: Id -> Value -> Effect Unit

-- setHtmlById
foreign import setHtmlById :: Id -> Html -> Effect Unit

-- setHtml
foreign import setHtml :: Element -> String -> Effect Unit

-- getElementStrAttr
foreign import getElementStrAttr :: Element -> String -> Effect String

-- setOnClick
foreign import onClick :: Element -> (ClickEventData -> Effect Unit) -> Effect Unit

-- setOnChange
foreign import onChange :: Element -> (ChangeEventData -> Effect Unit) -> Effect Unit
