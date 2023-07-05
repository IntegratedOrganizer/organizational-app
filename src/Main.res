%%raw("import './index.css'")

switch ReactDOM.querySelector("#root") {
| Some(domElement) =>
  ReactDOM.Client.createRoot(domElement)->ReactDOM.Client.Root.render(
    <RescriptRelay.Context.Provider environment=RelayEnv.environment>
      <React.StrictMode>
        <App />
      </React.StrictMode>
    </RescriptRelay.Context.Provider>,
  )
| None => ()
}
