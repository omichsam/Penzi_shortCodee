import React, { useState, useEffect } from "react";
import axios from "axios";
import { Card } from "semantic-ui-react";
import './CardMessage.css'



export default function CardPeople() {
  const [APIData, setAPIData] = useState([]);
  const [APIData1, setAPIData1] = useState([]);
  const [APIData2, setAPIData2] = useState([]);
  const [APIData3, setAPIData3] = useState([]);
  const [APIData4, setAPIData4] = useState([]);



  useEffect(() => {
    axios.get("http://localhost/penzi/adminApi/totalPeople.php").then((response) => {
      setAPIData(response.data);
    });
  }, []);
  useEffect(() => {
    axios.get("http://localhost/penzi/adminApi/allFemale.php").then((response) => {
      setAPIData1(response.data);
    });
  }, []);
  useEffect(() => {
    axios.get("http://localhost/penzi/adminApi/allMales.php").then((response) => {
      setAPIData2(response.data);
    });
  }, []);
  useEffect(() => {
    axios.get("http://localhost/penzi/adminApi/allActivePersons.php").then((response) => {
      setAPIData3(response.data);
    });
  }, []);
  useEffect(() => {
    axios.get("http://localhost/penzi/adminApi/allDeactivatedPersons.php").then((response) => {
      setAPIData4(response.data);
    });
  }, []);






  return (
    <div className='row mt-2 text-center'>
     <div className='col-md-4 col-sm-3 col-lg-4'>
     <Card.Group className='card-round shadow bg-dark  m-2 '>
        {" "}
        {APIData.map((item) => {
          return (
            <Card className="  m-2 card-round">
              <Card.Content>
                <Card.Header className="bg-dark text-light">
                  {" "}
                  <h4> Total People </h4>
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
     <div className='col-md-4 col-sm-3 col-lg-4'>
     <Card.Group className='card-round shadow bg-dark  m-2'>
        {" "}
        {APIData1.map((item) => {
          return (
            <Card className="shadow card-round m-2">
              <Card.Content>
                <Card.Header className="bg-dark text-light">
                  {" "}
                  <h4> Total Females </h4>
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
      <div className='col-md-4 col-sm-3 col-lg-4  '>
      <Card.Group className='card-round shadow bg-dark  m-2'>
        {" "}
        {APIData2.map((item) => {
          return (
            <Card className="shadow card-round  m-2">
              <Card.Content>
                <Card.Header className="bg-dark text-light">
                  {" "}
                  <h4> Total Males </h4>
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
      <div className='col-md-4 col-sm-3 col-lg-4 '>
      <Card.Group className='card-round shadow bg-dark  m-2'>
        {" "}
        {APIData3.map((item) => {
          return (
            <Card className=" m-2 card-round">
              <Card.Content>
                <Card.Header className="bg-dark text-light">
                  {" "}
                  <h4> Active Members </h4>
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
      <div className='col-md-4 col-sm-3 col-lg-4'>
      <Card.Group className='card-round shadow bg-dark m-2'>
        {" "}
        {APIData4.map((item) => {
          return (
            <Card className=" m-2 card-round">
              <Card.Content>
                <Card.Header className="bg-dark text-light">
                  {" "}
                  <h4> Deactivated Members </h4>
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
