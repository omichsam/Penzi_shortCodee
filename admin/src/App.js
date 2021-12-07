// import './App.css';
// import Navbar from './Component/Navbar';
// import { BrowserRouter as Router, Switch , Route } from 'react-router-dom';
// import Home from './Pages/Home'
// import Reports from './Pages/Reports'
// import Product from './Pages/Product'

// function App() {
//   return (
//     <Router>
    
//         <Navbar/>
//        <Switch>
//             <Route path = '/' exact component = {Home}/>
//             <Route path = '/reports'  component = {Reports}/>
//             <Route path = '/product'  component = {Product}/>
//         </Switch>
//     </Router>
//   );
// }

// export default App;

import React from 'react';
import './App.css';
import Navbar from './Component/Navbar';
import { BrowserRouter as Router, Switch, Route } from 'react-router-dom';
import Home from './Pages/Home';
import Reports from './Pages/Reports';
import Users from './Pages/Users';
import MatchPref from './Pages/Match-Pref';
import MatchLogs from './Pages/Match-Logs';
import Messages from './Pages/Messages';
import 'bootstrap/dist/css/bootstrap.min.css';

function App() {
  return (
    <>
      <Router>
       
        
          <Navbar/>
         <div class='container'>
      
            <Switch>
                <Route path='/' exact component={Home} />
                <Route path='/reports' component={Reports} />
                <Route path='/users' component={Users} />
                <Route path='/messages' component={Messages} />
                <Route path='/match-log' component={MatchLogs} />
                <Route path='/match-pref' component={MatchPref} />
            </Switch>
     
      
         
     
        </div>
        </Router>
    </>
  );
}

export default App;
