import React from 'react';
import ReactDOM from 'react-dom';
import { Provider } from 'react-redux';
import { HashRouter, Route } from 'react-router-dom';
import configureStore from './store/store';
import Home from './components/home';

const Root = ({ store }) => (
    <Provider store={store}>
        <HashRouter>
            <Route path="/" component={Home} />
        </HashRouter>
    </Provider>
);

document.addEventListener('DOMContentLoaded', () => {
    const store = configureStore();
    const root = document.getElementById('root');

    ReactDOM.render(<Root store={store} />, root);
});