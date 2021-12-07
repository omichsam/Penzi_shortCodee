import React from 'react';
// import './Add.css';
//bootstrap
import 'bootstrap/dist/css/bootstrap.min.css';
//Axios for get request
import axios from 'axios';
class Add extends React.Component {
 //initialize an object's state in a class
  constructor(props) {
    super(props)
      this.state = {
        data: []
              }
      }
      //ComponentDidMount is use to Connect a React app to external applications, such as web APIs or JavaScript functions
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
     
      <div className="">
       
        <h1 className=" ">All Users</h1>
        <div className="container mb-5 mt-5 text-left ">
        
        <table class="table table-hover text-white bg-dark">
          <thead>
            <tr>
              <th><h6>Name</h6></th>
              <th><h6>Age</h6></th>
              <th><h6>Education</h6></th>
              <th><h6>Proffesion</h6></th>
              <th><h6>County</h6></th>
              <th><h6>Gender</h6></th>
              <th><h6>Activation status</h6></th>           
           </tr>
          </thead>
          <tbody>
          {this.state.data.map((u) => {
            alert("ers")
            return (
             
                 <tr>
                  <td>{u.name}</td>
                  <td>{u.name}</td>
                  <td>{u.name}</td>
                </tr>
             
            )
          })}
           
            
          </tbody>
        </table>
       
            
      </div>
     
      </div>
     
)
};
}
export default Add;