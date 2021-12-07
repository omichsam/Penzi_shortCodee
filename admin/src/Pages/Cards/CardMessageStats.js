import React, { useState, useEffect } from "react";
import axios from "axios";
import { Card } from "semantic-ui-react";
import './CardMessage.css'



export default function CardMessageStats() {
  const [APIData, setAPIData] = useState([]);
  const [APIData1, setAPIData1] = useState([]);
  const [APIData2, setAPIData2] = useState([]);
  const [APIData3, setAPIData3] = useState([]);
  useEffect(() => {
    axios.get("http://localhost/penzi/adminApi/allMessageNum.php").then((response) => {
      setAPIData(response.data);
    });
  }, []);
  useEffect(() => {
    axios.get("http://localhost/penzi/adminApi/allDayMessage.php").then((response) => {
      setAPIData1(response.data);
    });
  }, []);
  useEffect(() => {
    axios.get("http://localhost/penzi/adminApi/allWeekMessage.php").then((response) => {
      setAPIData2(response.data);
    });
  }, []);
  useEffect(() => {
    axios.get("http://localhost/penzi/adminApi/allMonthMessage.php").then((response) => {
      setAPIData3(response.data);
    });
  }, []);


  return (
    <div >
      <div className='row mt-2'>
        <div className='col-md-3 col-sm-6 col-lg-3'>
          <Card.Group>
            {" "}
            {APIData.map((item) => {
              return (
                <Card className="shadow  card-rounded  text-center border border-danger m-2">
                  <Card.Content>
                    <Card.Header className="bg-dark text-light">
                      {" "}
                      <h4> Total Message </h4>
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
      <div className='row mt-2'>
        <div className='col-md-3 col-sm-6col-lg-3'>
          <Card.Group>
            {" "}
            {APIData1.map((item) => {
              return (
                <Card className="shadow card-rounded  shadow   border border-rounded text-center border m-2">
                  <Card.Content>
                    <Card.Header className="bg-dark text-light">
                      {" "}
                      <h4> Today  </h4>
                    </Card.Header>
                    <Card.Description>
                      <h4> {item} Messages</h4>{" "}
                    </Card.Description>{" "}
                  </Card.Content>{" "}
                </Card>
              );
            })}{" "}
          </Card.Group>{" "}
        </div>
      </div>
      <div className='row mt-2'>
        <div className='col-md-3 col-sm-6 col-lg-3'>
          <Card.Group>
            {" "}
            {APIData2.map((item) => {
              return (
                <Card className="shadow card-rounded  shadow card-rounded  border border-rounded text-center border m-2">
                  <Card.Content>
                    <Card.Header className="bg-dark text-light">
                      {" "}
                      <h4> Last Week </h4>
                    </Card.Header>
                    <Card.Description>
                      <h4> {item} Messages </h4>{" "}
                    </Card.Description>{" "}
                  </Card.Content>{" "}
                </Card>
              );
            })}{" "}
          </Card.Group>{" "}
        </div>
      </div>
      <div className='row mt-2'>
        <div className='col-md-3 col-sm-6 col-lg-3'>
          <Card.Group>
            {" "}
            {APIData3.map((item) => {
              return (
                <Card className="shadow card-rounded  shadow card-rounded  border border-rounded text-center border m-2">
                  <Card.Content>
                    <Card.Header className="bg-dark text-light">
                      {" "}
                      <h4> Last Month </h4>
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
    </div>
  );
}
