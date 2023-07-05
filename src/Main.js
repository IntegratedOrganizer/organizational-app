

import * as App from "./App.js";
import * as React from "react";
import * as RelayEnv from "./RelayEnv.js";
import * as RescriptRelay from "rescript-relay/src/RescriptRelay.js";
import * as Client from "react-dom/client";
import * as JsxRuntime from "react/jsx-runtime";

import './index.css'
;

var domElement = document.querySelector("#root");

if (!(domElement == null)) {
  Client.createRoot(domElement).render(JsxRuntime.jsx(RescriptRelay.Context.Provider.make, {
            environment: RelayEnv.environment,
            children: JsxRuntime.jsx(React.StrictMode, {
                  children: JsxRuntime.jsx(App.make, {})
                })
          }));
}

export {
  
}
/*  Not a pure module */
