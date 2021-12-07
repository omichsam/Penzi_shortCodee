import React from 'react';
import 'bootstrap/dist/css/bootstrap.min.css';
// import Cards from './Cards';
import './Home.css';
import CardPeople from './Cards/CardPeople';
import CardMessage from './Cards/CardMessage';
import CardMatchess from './Cards/CardMatches';
// import Match from './Match';

function Home() {
  return (
    <div className='home my-5'>
      {/* <Match/> */}
      <h1 className="text text-center text-secondary">Admin Dashboard</h1>


      <h5 className="text text-dark" style={{textDecoration:'underline'}}>Penzi People stats</h5>
      <hr/>
      <CardPeople/>
      <h5 className="text text-dark" style={{textDecoration:'underline'}}>Messages</h5>
      <hr/>
      <CardMessage/>
      <h5 className="text text-dark" style={{textDecoration:'underline'}}>Messages</h5>
      <hr/>
      <CardMatchess/>
    </div>
  );
}

export default Home;
