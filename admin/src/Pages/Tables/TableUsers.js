/* eslint-disable array-callback-return */
import React, { useState, useEffect } from "react";
import axios from "axios";
import "bootstrap/dist/css/bootstrap.min.css";

// import { Link } from "react-router-dom";
 
const TableUsers = () => {
  const [users, setUser] = useState([]);
 
  useEffect(() => {
    loadUsers();
  }, []);
 
  const loadUsers = async () => {
    const result = await axios.get("http://localhost/penzi/adminApi/allpenzi.php");

    
    console.log("TESTDDX",result.data)

    setUser(result.data);

  };

 
  return (
    <div className="">
      <div className="py-4">
        <h3 class="mb-3 text-center text-underlined">All users</h3>
        <table class="table border shadow  table-hover text-dark">
          <thead class="bg-dark text-light">
            <tr>
              <th ><h5>User Id</h5></th>
              <th ><h5>Name</h5></th>
              <th ><h5>Phone</h5></th>
              <th ><h5>Age</h5></th>
              <th><h5>Gender</h5></th>
              <th ><h5>County</h5></th>
              <th ><h5>Town</h5></th>
              <th><h5>Education</h5></th>
              <th ><h5>Proffession</h5></th>
              <th><h5>Marital Status</h5></th>
              <th ><h5>Religion</h5></th>
              <th ><h5>Tribe</h5></th>
              <th><h5>Fav Food</h5></th>
              <th ><h5>Desc1</h5></th>
              <th><h5>Desc2</h5></th>
              <th ><h5>Activation</h5></th>
              
            </tr>
          </thead>
          <tbody>
    <>
            {
           users !== undefined && users.length > 0 ?

             <>
        
             {
                
             users.map( user => {
               return(
                 <tr>
                   <td><h6>{user.id}</h6></td>
                   <td><h6>{user.name}</h6></td>
                   <td><h6>{user.phone_no}</h6></td>
                   <td><h6>{user.age}</h6></td>
                   <td><h6>{user.gender}</h6></td>
                   <td><h6>{user.county}</h6></td>
                   <td><h6>{user.town}</h6></td>
                   <td><h6>{user.education}</h6></td>
                   <td><h6>{user.proffesion}</h6></td>
                   <td><h6>{user.marital_status}</h6></td>
                   <td><h6>{user.religion}</h6></td>
                   <td><h6>{user.tribe}</h6></td>
                   <td><h6>{user.fav_food}</h6></td>
                   <td><h6>{user.desc1}</h6></td>
                   <td><h6>{user.desc2}</h6></td>
                   <td><h6>{user.activation}</h6></td>
                 </tr>
               )
               }
             )
             }
             </>

            : null
            // alert("url")
            }
             </>
          </tbody>
        </table>
      </div>
    </div>
  );
};
 
export default TableUsers;