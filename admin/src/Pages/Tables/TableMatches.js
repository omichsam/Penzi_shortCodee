/* eslint-disable array-callback-return */
import React, { useState, useEffect } from "react";
import axios from "axios";
import "bootstrap/dist/css/bootstrap.min.css";

// import { Link } from "react-router-dom";
 
const TableMatches = () => {
  const [users, setUser] = useState([]);
 
  useEffect(() => {
    loadUsers();
  }, []);
 
  const loadUsers = async () => {
    const result = await axios.get("http://localhost/penzi/adminApi/allMatchLog.php");

    console.log(result.data)

    setUser(result.data);

  };

 
  return (
    <div className="">
      <div className="py-4">
        <h3 class="mb-3 text-center text-underlined">Match Table</h3>
        <table class="table border shadow  table-hover text-dark">
          <thead class="bg-dark text-light">
            <tr>
              <th ><h5>MatchLoG ID</h5></th>
              <th ><h5>Searcher</h5></th>
              <th ><h5>Searched</h5></th>
              <th ><h5>Status</h5></th>
              <th><h5>Datetime</h5></th>
             
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
                   <td><h6>{user.matchlog_id}</h6></td>
                   <td><h6>{user.searcher}</h6></td>
                   <td><h6>{user.searched}</h6></td>
                   <td><h6>{user.status}</h6></td>
                   <td><h6>{user.datetime}</h6></td>
                   
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
 
export default TableMatches;