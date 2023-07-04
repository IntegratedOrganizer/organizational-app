module P = {
  @react.component
  let make = (~children: string) => <p> {React.string(children)} </p>
}

module H1 = {
  @react.component
  let make = (~children: string) => <h1> {React.string(children)} </h1>
}

module H2 = {
  @react.component
  let make = (~children: string) => <h2> {React.string(children)} </h2>
}

module H3 = {
  @react.component
  let make = (~children: string) => <h3> {React.string(children)} </h3>
}

module FlexRows = {
  @react.component
  let make = (~children: React.element) => <div className="overlay-rows"> {children} </div>
}

module FlexColumns = {
  @react.component
  let make = (~children: React.element) => <div className="overlay-columns"> {children} </div>
}
