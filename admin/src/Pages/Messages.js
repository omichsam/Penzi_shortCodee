import React from 'react'
import 'bootstrap/dist/css/bootstrap.min.css';
// import TableMessages from './TableMessages'
import CardMessageStats from './Cards/CardMessageStats';
import MatDataTable from './MatchTables/MatDataTable';

function Messages() {
  return (
    <div className='message'>
      <h2 hidden>messages</h2>
      <div className='row'>
        <div className='col-md-1 col-sm-12' >
          
          <div style={{ position: 'fixed', width: '50%', overflow:'hidden', marginLeft:'-80px' ,borderRadius:'30px' }}>
          <h3 className='mt-5'>Messages</h3>
            <div className='row mt-5'  > <CardMessageStats /></div>
          </div>
        </div>
        <div className='col-md-10 col-sm-12'>
              {/* <TableMessages /> */}
              <MatDataTable/>
            
        </div>
      </div>



    </div>
  )
}

export default Messages
