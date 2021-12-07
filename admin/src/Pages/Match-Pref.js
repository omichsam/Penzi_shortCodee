import React from "react";
import "bootstrap/dist/css/bootstrap.min.css";
// import Table1 from "./TablePref";
import MatDataTablePref from './MatchTables/MatDataTablePref';

function MatchPref() {
  return (
    <div className="matchpref">
      <h2 className="" hidden>Match pref</h2>

      {/* <Table1 /> */}
      <MatDataTablePref/>

    </div>
  );
}

export default MatchPref;
