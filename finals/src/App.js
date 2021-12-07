import React from 'react';
import './App.css';

import 'bootstrap/dist/css/bootstrap.css';
// Put any other imports below so that CSS from your
// components takes precedence over default styles.

//Include Sweetalert
import Swal from 'sweetalert2';


//axios for api request
import axios from 'axios';
class App extends React.Component {
  constructor(props)
            {
              super(props);
              this.addFormData = this.addFormData.bind(this);
            }
  //Form Submission

  addFormData(evt)
  {
    evt.preventDefault();
    const fd = new FormData();
    fd.append('sender', this.refs.sender.value);
    fd.append('receiver', this.refs.receiver.value);
   fd.append('message', this.refs.message.value);


    axios.post('http://localhost/penzi/api/users.php', fd ).then(res=>
    {

       //Success alert
     Swal.fire({
      title: "Response",
      text: res.data.data,
      icon: res.data.status,

    });
  this.myFormRef.reset();

  }
  );
  }


 
  render() {
   
    return (
    <div className="App container my-5 py-2  d-flex justify-content-center bg-primary border bord">
         <div className="card align-center ">
 {/* style={{width:"25",outline:"hidden", backgroundColor:"gray"}} */}
                  <div className="card-header border border-rounded border-bottom-0 py-3 bg-primary" style={{backgroundColor:""}}>
                  <h1 className="text-center mt-2 mb-2 text-light"> Chat form </h1>
                  </div>
      
                <div className="card-body bg-light mb-1" style={{ backgroundColor:""}}>
                         <form class="row g-3" ref={(el) => this.myFormRef = el} style={{width:"auto",outline:"hidden",padding:"5px"}}> 
                      
                              <div class="col-md-12 " >
                                    <label for="inputEmail4" hidden class="form-label">Phone Number</label>
                                    <input type="text" class="form-control  put bg-light mt-3" placeholder="Phone Number" id="sender" ref="sender" required />
                              </div>
                              <div class="col-md-12 my-3">
                                      <label for="inputUsername4" hidden  class="form-label">Code</label>
                                      <input type="text" class="form-control put bg-light" id="receiver" placeholder="Code" ref="receiver" required />
                                </div>
                                
                                <div class="mb-3">
                                      <label for="exampleFormControlTextarea1" hidden  class="form-label">Message</label>
                                      <textarea class="form-control textarea bg-light" id="Message" placeholder="Enter Message" ref="message" required  rows="auto"></textarea>
                                </div>
                                <div class="col-12">
                                  <button type="submit" class="btn btn-outline-primary" onClick={this.addFormData}>Submit</button> 
                                   
                                </div>
                          </form>
                </div>
         </div>
    </div>
 )
};
}

export default App;