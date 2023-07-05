

import * as HtmlTags from "./HtmlTags.js";
import * as JsxRuntime from "react/jsx-runtime";

function App(props) {
  return JsxRuntime.jsx("div", {
              children: JsxRuntime.jsx(HtmlTags.P.make, {
                    children: "Hello"
                  })
            });
}

var make = App;

export {
  make ,
}
/* HtmlTags Not a pure module */
