import { useRef } from "react";
import { FaBars, FaTimes } from "react-icons/fa";
import { BsFillSendPlusFill, BsFillSendCheckFill, BsFillSendXFill } from "react-icons/bs";
import "../styles/Navbar.css";
import { Link } from "react-router-dom";

const Navbar = () => {
    const navRef = useRef();

    const showNavbar = () => {
        navRef.current.classList.toggle("responsive_nav")
    }
    return (
        <header>
            <h2>TechPro X-App</h2>
            <nav ref={navRef}>
                <Link to="/"> <BsFillSendCheckFill /> New order</Link>
                <Link to="/OrderList"> <BsFillSendPlusFill /> Order List</Link>
                <a href="/#"> <BsFillSendXFill />  Delete order</a>
                <button className="nav-btn nav-close-btn" onClick={showNavbar}>
                    <FaTimes />
                </button>
            </nav>
            <button className="nav-btn" onClick={showNavbar}>
                <FaBars />
            </button>

        </header>

    )
}

export default Navbar;