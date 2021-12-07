import React, { Component } from 'react'
import axios from 'axios'
import ReactTable from "react-table"; 
// import 'react-table/react-table.css'

export default class Tables extends Component {
  constructor(props){
    super(props)
    this.state = {
      users: [],
      loading:true
    }
  }
  async getUsersData(){
    const res = await axios.get("http://localhost/penzi/adminApi/total.php")
    console.log(res.data)
    this.setState({loading:false, users: res.data})
  }
  componentDidMount(){
    this.getUsersData()
  }
  render() {
    const columns = [{  
      Header: 'ID',  
      accessor: 'id',
     }
     ,{  
      Header: 'Name',  
      accessor: 'name' ,
      Cell: (row) => {
        return <h4>{row.original.name}</h4>
      }
      }
     
     ,{  
     Header: 'Age',  
     accessor: 'age' ,
     }
     ,{  
     Header: 'Phone',  
     accessor: 'phone_no',
     },
     {  
      Header: 'County',  
      accessor: 'county',
      // Cell: (row) => {
      //   return <a href={`mail.to:${row.original.email}`}>{row.original.name}</a>
      // }
      },
      {  
        Header: 'TOwn',  
        accessor: 'town',
        }
  ]
    return (
      <ReactTable  
      data={this.state.users}  
      columns={columns}  
   />
    )
  }
}

