import { Component } from "react";
import "./Header.css";

export default class Header extends Component{
    render(){
        return(
            <div className="header">
                <ul>
                    <a href=""><li>Home</li></a>
                   <a href=""> <li>Samochody</li></a>
                   <a href=""> <li>About</li></a>
                </ul>
            </div>
        );
    }
} 