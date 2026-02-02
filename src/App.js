import React from 'react';
import logo from './logo.svg';
import './App.css';

function App() {
  return (
    <div className="App">
      <header className="App-header">
        <img src={logo} className="App-logo" alt="logo" />

        <p>Hi there!</p>

        <a
          className="App-link"
          href="https://reactjs.org"
          target="_blank"
          rel="noopener noreferrer"
        >
          Learn React from the right way
        </a>

        {/* —  custom message below the React default UI — */}
        <div style={{ marginTop: '140px', fontSize: '20px', color: '#fff' }}>
          <p>I was changed!</p>
        </div>
      </header>
    </div>
  );
}

export default App;
