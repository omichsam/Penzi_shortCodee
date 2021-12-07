/* eslint-disable array-callback-return */
import React, { useState, useEffect } from "react";
import axios from "axios";
import "bootstrap/dist/css/bootstrap.min.css";

// import { Link } from "react-router-dom";
 
const TableMessages = () => {
  const [users, setUser] = useState([]);
 
  useEffect(() => {
    loadUsers();
  }, []);
 
  const loadUsers = async () => {
    const result = await axios.get("http://localhost/penzi/adminApi/allMessages.php");
    
    console.log(result.data)

    setUser(result.data);

  };

 
  return (
    <div className="">
      <div className="py-4">
        <h3 class="mb-3 text-center text-underlined">Messages</h3>
        <table class="table border shadow  table-hover text-dark">
          <thead class="bg-dark text-light fixed-top sticky-top">
            <tr>
              <th ><h5>Message ID</h5></th>
              <th ><h5>Message</h5></th>
              <th ><h5>Sender</h5></th>
              <th ><h5>Receiver</h5></th>
              <th><h5>Date</h5></th>
              
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
                   <td><h6>{user.mes_id}</h6></td>
                   <td><h6>{user.message}</h6></td>
                   <td><h6>{user.sender}</h6></td>
                   <td><h6>{user.receiver}</h6></td>
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
 
export default TableMessages;