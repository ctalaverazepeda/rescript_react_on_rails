module HelloWorldV =
{
   @react.component
  let make = (~nameProp: string) => {
  let (name, setName) = React.useState(() => nameProp)

  let eventTargetValue = event => {
  let target = event -> ReactEvent.Form.target
  target["value"]
}

  <div>
    <h3> {("Hello, " ++ name ++ "!")->React.string} </h3>
    <form>
      <label htmlFor="name"> {"Saying hello:"->React.string} </label>
      <input
        id="name" type_="text" value=name onChange={event => setName(event->eventTargetValue)}
      />
    </form>
  </div>
}
}