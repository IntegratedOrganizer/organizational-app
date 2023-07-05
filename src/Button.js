

import * as Caml_obj from "rescript/lib/es6/caml_obj.js";
import * as JsxRuntime from "react/jsx-runtime";

function make(props) {
  var newrecord = Caml_obj.obj_dup(props);
  return JsxRuntime.jsx("button", (newrecord.className = "inline-block px-6 py-2.5 bg-blue-600 text-white font-medium text-xs leading-tight uppercase rounded shadow-md hover:bg-blue-700 hover:shadow-lg focus:bg-blue-700 focus:shadow-lg focus:outline-none focus:ring-0 active:bg-blue-800 active:shadow-lg transition duration-150 ease-in-out", newrecord));
}

export {
  make ,
}
/* react/jsx-runtime Not a pure module */
