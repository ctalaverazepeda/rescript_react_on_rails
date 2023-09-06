%%raw("import './FormPageRescript.css'")
@react.component
let formPageJournal = (~formFirstName : string, ~formLastName: string) => {
let (firstName, setFirstName) = React.useState(() => "");
let (lastName, setLastName) = React.useState(() => "");
let (login, setLogin) = React.useState(()=> false);
let (errorAlert, setErrorAlert) = React.useState(()=> false);


let handleFirstNameChange = (event) => {
setFirstName(ReactEvent.Form.target(event)["value"]);
setErrorAlert(_prev => false);
}

let handleLastNameChange = (event) => {
setLastName(ReactEvent.Form.target(event)["value"]);
setErrorAlert(_prev => false);
}

let handleSubmit = event => {
    event->ReactEvent.Form.preventDefault
    Js.log("first name: " ++ firstName)
    Js.log("last name: " ++ lastName)
    setLogin(_prev => true);

    if(Js.String2.length(firstName) === 0 || Js.String2.length(lastName) === 0)
    {
        setLogin(_prev => false);
        setErrorAlert(_prev => true);
    }
    else
    {
        setLogin(_prev => true);
        setErrorAlert(_prev => false);
    }

  }

<div>
    <form onSubmit={handleSubmit}>
      <label>{"First name: "-> React.string}</label>
       <input type_="text" value= firstName onChange={handleFirstNameChange} />
      <label>{"Last name: " -> React.string } </label>
      <input type_="text" value=lastName onChange={handleLastNameChange} />
      <button type_="submit">{"Log in"->React.string}</button>
    </form>

        // {
        // Js.String2.length(firstName) === 0 ? <h1>{"Waiting for loggin"->React.string}</h1> :
        // <h1>{`Thank you for logging as ${firstName} ${lastName}`->React.string}</h1>
        // } 
        {
        !login ? <h1>{"Waiting for loggin"->React.string}</h1> :
        <h1>{`Thank you for logging as ** ${firstName} ${lastName} **`->React.string}</h1>
        } 

        <div className="error-alert">
        {
            errorAlert ? <h1>{"First name and Last name are required"->React.string}</h1> : ""->React.string
        }
        </div>
  </div>

}