import React from 'react';
import { Table } from 'react-bootstrap';

class User extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      error: null,
      users: []
    }
  }

  componentDidMount() {
    const apiUrl = 'http://localhost/penzi/adminApi/allpenzi.php';

    fetch(apiUrl)
      .then(res => res.json())
      .then(
        (result) => {
          this.setState({
            users: result
          });
        },
        (error) => {
          this.setState({ error });
        }
      )
  }

  render() {
    const { error, users} = this.state;

    if(error) {
      return (
        <div>Error: {error.message}</div>
      )
    } else {
      return(
        <div>
          <h2>Product List</h2>
          <Table>
            <thead>
              <tr>
                <th>#ID</th>
                <th>Product Name</th>
                <th>SKU</th>
                <th>Price</th>
              </tr>
            </thead>
            <tbody>
              {users.map(user => (
                <tr key={user.id}>
                  <td>{user.id}</td>
                  <td>{user.name}</td>
                  <td>{user.age}</td>
                  <td>{user.county}</td>
                </tr>
              ))}
            </tbody>
          </Table>
        </div>
      )
    }
  }
}

export default User;
