import { BsCartPlus } from "react-icons/bs";

export const Card = ({ Product }) => {
    return <div class="card">
        <div class="image-content">
            <span class="overlay"></span>

            <div class="card-image">
                <img src={Product.image} alt="" class="Prod1" />
            </div>
        </div>

        <div class="card-content">
            <h2 class="name">{Product.name}</h2>

            <button class="button"><BsCartPlus className="plus"></BsCartPlus>Add to Card</button>
        </div>
    </div>
}