import React, { Component } from "react";
import axios from 'axios'; // npm instal axios
import { forwardRef } from 'react';
import MaterialTable from "material-table";
import ArrowDownward from '@material-ui/icons/ArrowDownward';
import ChevronLeft from '@material-ui/icons/ChevronLeft';
import ChevronRight from '@material-ui/icons/ChevronRight';
import Clear from '@material-ui/icons/Clear';
import FilterList from '@material-ui/icons/FilterList';
import FirstPage from '@material-ui/icons/FirstPage';
import LastPage from '@material-ui/icons/LastPage';
import Search from '@material-ui/icons/Search';
// import DetailTable from './DetailTable';

const tableIcons = {
  DetailPanel: forwardRef((props, ref) => <ChevronRight {...props} ref={ref} />),
  Filter: forwardRef((props, ref) => <FilterList {...props} ref={ref} />),
  FirstPage: forwardRef((props, ref) => <FirstPage {...props} ref={ref} />),
  LastPage: forwardRef((props, ref) => <LastPage {...props} ref={ref} />),
  NextPage: forwardRef((props, ref) => <ChevronRight {...props} ref={ref} />),
  PreviousPage: forwardRef((props, ref) => <ChevronLeft {...props} ref={ref} />),
  ResetSearch: forwardRef((props, ref) => <Clear {...props} ref={ref} />),
  Search: forwardRef((props, ref) => <Search {...props} ref={ref} />),
  SortArrow: forwardRef((props, ref) => <ArrowDownward {...props} ref={ref} />),
};

export default class MatDataTable extends Component {
  constructor(props) {
    super(props);
    this.state = { person: [] };
  }

  componentDidMount(prevProps) {
    // const maxResults = 20;
    const url = `http://localhost/penzi/adminApi/allMessages.php`;
 
    axios.get(url)
      .then(results => {
        console.log(results);
        console.log(results.data.results);
        this.setState({ person: results.data.results });



        var newArr = results.data.map(function (val) {
          return {
            id: val.mes_id,
            message: val.message,
            sender: val.sender,
            receiver: val.receiver,
            date: val.date,
            // image: val.picture.thumbnail,
            // name: val.name.first + ' ' + val.name.last,
          };
        });
        console.log(results.data.results);
        this.setState({
          tableArray: newArr  //set state of the weather5days
        }, () => {
          console.log(this.state.tableArray);
          console.log('this.tableArray ', this.state.tableArray);
        });
      });
  }

  render() {
    return (
      <div style={{ maxWidth: "500%", marginLeft: "3px", marginTop: "100px", fontSize:"12px" }}>
        <MaterialTable
          icons={tableIcons}
          options={{
            grouping: true,
            emptyRowsWhenPaging: false,   // To avoid of having empty rows
            pageSize:10,
            pageSizeOptions:[10,20,30, 50],
          }}
          // detailPanel={rowData => {
          //   return (
          //     <DetailTable />
          //   )
          // }}
         
          columns={[
            // {
            //   title: 'Image',
            //   field: 'image',
            //   render: rowData => (
            //     // eslint-disable-next-line jsx-a11y/alt-text
            //     <img style={{ height: 40, borderRadius: '50%' }} src={rowData.image}  ></img>
            //   ),
            // },
            { title: "ID", field: "id", align: 'left' },
            { title: "sender", field: "sender" },
            { title: "Message", field: "message" },
            { title: "receiver", field: "receiver" },
            { title: "date", field: "date" }
          ]}
          data={this.state.tableArray}

          title="Message"
        />
      </div>
    );
  }
}
