

import * as JsxRuntime from "react/jsx-runtime";

function HtmlTags$P(props) {
  return JsxRuntime.jsx("p", {
              children: props.children
            });
}

var P = {
  make: HtmlTags$P
};

function HtmlTags$H1(props) {
  return JsxRuntime.jsx("h1", {
              children: props.children
            });
}

var H1 = {
  make: HtmlTags$H1
};

function HtmlTags$H2(props) {
  return JsxRuntime.jsx("h2", {
              children: props.children
            });
}

var H2 = {
  make: HtmlTags$H2
};

function HtmlTags$H3(props) {
  return JsxRuntime.jsx("h3", {
              children: props.children
            });
}

var H3 = {
  make: HtmlTags$H3
};

function HtmlTags$FlexRows(props) {
  return JsxRuntime.jsx("div", {
              children: props.children,
              className: "overlay-rows"
            });
}

var FlexRows = {
  make: HtmlTags$FlexRows
};

function HtmlTags$FlexColumns(props) {
  return JsxRuntime.jsx("div", {
              children: props.children,
              className: "overlay-columns"
            });
}

var FlexColumns = {
  make: HtmlTags$FlexColumns
};

export {
  P ,
  H1 ,
  H2 ,
  H3 ,
  FlexRows ,
  FlexColumns ,
}
/* react/jsx-runtime Not a pure module */
