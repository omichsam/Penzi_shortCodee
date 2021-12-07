import React from 'react';
import 'bootstrap/dist/css/bootstrap.min.css';
 import { Card }from "react-bootstrap";
 import './Cards.css';
//  import * as FaIcons from "react-icons/fa";
//  import axios from 'axios';



function Cards() {
  return (
    


    <div>
      <div className='row'>
      <div className = 'col-sm-3 '>
        <Card className='border border-danger ' > 
          <Card.Header style={{color:'white', background:'red'}}>Header</Card.Header>
          <Card.Body>
            <Card.Title> Total Penzi</Card.Title>
            <Card.Text>
            <h1> 200</h1>
            </Card.Text>
          </Card.Body>
        </Card>
        </div>
        <div className = 'col-sm-3  '>
        <Card className='border border-primary '> 
          <Card.Header  style={{color:'white', background:'blue'}}>Header</Card.Header>
          <Card.Body>
          <Card.Title> Total Penzi</Card.Title>
            <Card.Text>
            <h1> 200</h1>
            </Card.Text>
          </Card.Body>
        </Card>
        </div>
        <div className = 'col-sm-3 mr'>
        <Card className='border border-success ' > 
          <Card.Header style={{color:'white', background:'green'}}>Header</Card.Header>
          <Card.Body>
          <Card.Title> Total Penzi</Card.Title>
            <Card.Text>
            <h1> 200</h1>
            </Card.Text>
          </Card.Body>
        </Card>
        </div>
        <div className = 'col-sm-3 '>
        <Card className='border border-dark ' > 
          <Card.Header style={{color:'white', background:'black'}}>Header</Card.Header>
          <Card.Body>
          <Card.Title> Total Penzi</Card.Title>
            <Card.Text>
            <h1> 200</h1>
            </Card.Text>
          </Card.Body>
        </Card>
        </div>
      </div>
 
   </div>
  );
}

export default Cards;
