import { Component } from "react";
import "./Main.css";

export default class Header extends Component {
    state = {
        auta: []
    };

    componentDidMount() {
        // Pobieramy dane z bazy
        fetch("http://localhost/auta.php")
            .then(res => res.json())
            .then(data => this.setState({ auta: data }))
            .catch(err => console.error(err));
    }

    render() {
        // Mapowanie marki na plik obrazka
        const obrazy = {
            lamborghini: "lambo.png",
            BMW: "bmw.png",
            Opel: "opel.png"
        };

        return (
            <div className="container">
                {this.state.auta.map(auto => (
                    <div className="obrazki" key={auto.ID_auta}>
                        <img 
                            src={obrazy[auto.Marka]} 
                            alt={auto.Marka} 
                        />
                        <p>{auto.Opis}</p>
                    </div>
                ))}
            </div>
        );
    }
}