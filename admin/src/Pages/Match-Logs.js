import React from 'react'
import 'bootstrap/dist/css/bootstrap.min.css';
// import TableMatches from './TableMatches';
import MatDataTableMatch from './MatchTables/MatDataTableMatch';


function MatchLogs() {
  return (
    <div className="matchlog">
     {/* <TableMatches/> */}
     <MatDataTableMatch/>
    </div>
  )
}

export default MatchLogs
