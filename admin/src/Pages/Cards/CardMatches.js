import React, { useState, useEffect } from "react";
import axios from "axios";
import { Card } from "semantic-ui-react";
import './CardMessage.css'



export default function CardMatchess() {
  const [APIData, setAPIData] = useState([]);
  const [APIData1, setAPIData1] = useState([]);
 
  useEffect(() => {
    axios.get("http://localhost/penzi/adminApi/allMatchesNum.php").then((response) => {
      setAPIData(response.data);
    });
  }, []);
  useEffect(() => {
    axios.get("http://localhost/penzi/adminApi/allTodayMatches.php").then((response) => {
      setAPIData1(response.data);
    });
  }, []);
 
  return (
    <div className='row mt-2'>
     <div className='col-md-4 col-sm-12 col-lg-3'>
     <Card.Group>
        {" "}
        {APIData.map((item) => {
          return (
            <Card className="shadow  card-rounded  text-center border m-2">
              <Card.Content>
                <Card.Header className="bg-dark text-light">
                  {" "}
                  <h4> Total Matches </h4>
                </Card.Header>
                <Card.Description>
                  <h4> {item} </h4>{" "}
                </Card.Description>{" "}
              </Card.Content>{" "}
            </Card>
          );
        })}{" "}
      </Card.Group>{" "}
     </div>
     <div className='col-md-4 col-sm-12 col-lg-3'>
     <Card.Group>
        {" "}
        {APIData1.map((item) => {
          return (
            <Card className="shadow  card-rounded  text-center border m-2">
              <Card.Content>
                <Card.Header className="bg-dark text-light">
                  {" "}
                  <h4> Today Matches </h4>
                </Card.Header>
                <Card.Description>
                  <h4> {item} </h4>{" "}
                </Card.Description>{" "}
              </Card.Content>{" "}
            </Card>
          );
        })}{" "}
      </Card.Group>{" "}
     </div>

    </div>
  );
}
