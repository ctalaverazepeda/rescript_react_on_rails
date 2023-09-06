%%raw("import './HelloWorldRescript.css'")
@react.component
let helloworldv2 = (~nameProp: string) => {
  let (name, setName) = React.useState(() => nameProp)
  let eventTargetValue = event => {
  let target = event -> ReactEvent.Form.target
  target["value"] 
}
  <div>
    <h3> {("Hello, " ++ name ++ "!")->React.string} </h3>

    <hr></hr>

    <form>
      <label className= "bright" htmlFor="name"> {"(rescript test) Say hello to:"->React.string} </label>
      <input id="name" type_="text" value=name onChange={event => setName(event->eventTargetValue)}
      />
    </form>
  </div>
}
