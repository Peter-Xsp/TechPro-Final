import React from 'react';
import './App.css';
import Navbar from './components/NavBar';
import { Homepage } from './components/Homepage';
import { Routes, Route, BrowserRouter } from 'react-router-dom';
import { OrderList } from './components/OrderList';


function App() {
  return (
    <React.Fragment>
      <BrowserRouter>
        <Navbar />

        <Routes>
          <Route path="/" element={<Homepage />}></Route>
          <Route path="/OrderList" element={<OrderList />}></Route>
        </Routes>
      </BrowserRouter>
    </React.Fragment>
  );

}

export default App;
