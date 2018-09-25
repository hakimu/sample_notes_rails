class AllNotes extends React.Component {

  constructor(props) {
    super(props);
    this.state = {
      notes: []
    };
  }

  componentDidMount(){
    fetch('api/v1/notes.json')
      .then((response) => {return response.json()})
      .then((data) => {this.setState({ notes: data}) });
  }

  render(){
    var notes = this.state.notes.map((note) => {
      return(
        <div key={note.id}>
          <h1>{note.name}</h1>
          <p>{note.description}</p>
        </div>
      )
    })
    return(
      <div>
        {notes}
      </div>
    )
  }
  

}