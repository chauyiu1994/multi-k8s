import React from 'react';
import { Link } from 'react-router-dom'

export default () => {
    return (
        <div>
            Im some other page! version2
            <Link to="/">Go back home</Link>
        </div>
    );
};