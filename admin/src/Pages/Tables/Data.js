import React, { Component } from 'react'
import axios from 'axios'
import 'bootstrap/dist/css/bootstrap.min.css';


export default class Data extends Component {
state = {
  users:[]
}

componentDidMount(){
  const url = "http://localhost/penzi/adminApi/allpenzi.php"
  axios.get(url).then(response => response.data)
  .then((data) =>{
      this.setState({users : data})
      console.log(this.state.users)
  })
}


  render() {
    return (
      <div>
        <div className="text-center text-underlined">
          <div><h4>All Users</h4></div>
        </div>
        <table className="table table-stripped">
          <thead className = "bg-secondary text-light">
            <tr>
              <th><h6>Name</h6></th>
              <th><h6>Gender</h6></th>
              <th><h6>County</h6></th>
              <th><h6>Education</h6></th>
              <th><h6>Proffession</h6></th>
              <th><h6>Age</h6></th>
              <th><h6>Marital-Status</h6></th>
            </tr>
          </thead>
          <tbody>
              {this.state.users.map((user, index)=>
             (
               <tr key={index}>
                     <td>{user.name}</td>
                     <td>{user.gender}</td>
                     <td>{user.county}</td>
                     <td>{user.education}</td>
                     <td>{user.age}</td>
                     <td>{user.marital_status}</td>
               </tr>
             )
             )} 
          </tbody>
        </table>



      </div>
    )
  }
}
//  Dat