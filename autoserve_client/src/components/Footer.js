import React from "react"






export const Footer = (props) =>{
    return (
        <div  style={{  left: "0",
        bottom: "0",
        right: "0", display: "flex", height: "15vh", backgroundColor: "black", position: "fixed"}}>
            <div style={{right: "0", bottom: "0", position: "absolute"}}>
                <p className="me-3 text-light">
                    &copy;{new Date().getFullYear()} Auto Serve App 
                </p>
            </div>
         
	
       </div>)
      

   
}


