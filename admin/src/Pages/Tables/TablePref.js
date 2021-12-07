/* eslint-disable array-callback-return */
import React, { useState, useEffect } from "react";
import axios from "axios";
import "bootstrap/dist/css/bootstrap.min.css";

// import { Link } from "react-router-dom";
 
const Table1 = () => {
  const [users, setUser] = useState([]);
 
  useEffect(() => {
    loadUsers();
  }, []);
 
  const loadUsers = async () => {
    const result = await axios.get("http://localhost/penzi/adminApi/allMatchPref.php");

    
    console.log("TESTDDX",result.data)

    setUser(result.data);

  };

 
  return (
    <div className="">
      <div className="py-4">
        <h3 class="mb-3 text-center text-underlined">Match Preference</h3>
        <table class="table border shadow  table-hover text-dark">
          <thead class="bg-dark text-light text-uppercase">
            <tr>
              <th ><h5>id</h5></th>
              <th ><h5>phone</h5></th>
              <th ><h5>min_age</h5></th>
              <th ><h5>max_age</h5></th>
              <th><h5>county</h5></th>
              <th ><h5>gender</h5></th>
              <th ><h5>date</h5></th>
             
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
                   <td><h6>{user.phone}</h6></td>
                   <td><h6>{user.min_age}</h6></td>
                   <td><h6>{user.max_age}</h6></td>
                   <td><h6>{user.county}</h6></td>
                   <td><h6>{user.gender}</h6></td>
                   <td><h6>{user.date}</h6></td>
                 
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
 
export default Table1;