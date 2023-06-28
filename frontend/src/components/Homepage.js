import { useEffect, useState } from "react";
import "../styles/Products.css";
import { Card } from "./Card";


export const Homepage = () => {

    const [Products, SetProducts] = useState([])
    useEffect(() => {
        fetch(`http://${window.location.hostname}:8080/Products`).then(response => response.json()).then(Data => SetProducts(Data))
    }, [])
    return (
        <div class="body">
            <div class="slide-container">
                <div class="slide-content">
                    <div class="card-wrapper">
                        {Products.map(x => <Card Product={x} />)}
                    </div>
                </div>
            </div>
        </div>)
}
