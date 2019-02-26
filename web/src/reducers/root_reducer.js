import { combineReducers } from 'redux';
import { reducer as form } from 'redux-form';

const rootReducer = combineReducers({
    form,
});

export default (state, action) => {
    if (action.type === 'LOGOUT') {
        return rootReducer(undefined, action);
    }
    return rootReducer(state, action);
}