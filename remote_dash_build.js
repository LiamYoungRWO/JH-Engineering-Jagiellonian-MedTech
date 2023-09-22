import React, { useState, useEffect } from "react";

const Dashboard = () => {
    const [prediction, setPrediction] = useState("");

    useEffect(() => {
        async function getPrediction() {
            const response = await fetch("http://localhost:8080/predict", {
                method: "POST",
                headers: {
                    "Content-Type": "application/json",
                },
                body: JSON.stringify({
                    metrics: [1.0, 2.0, 3.0],
                }),
            });

            const data = await response.json();
            setPrediction(data.predicted_class);
        }

        getPrediction();
    }, []);

    return (
        <div>
            <h1>Prediction: {prediction}</h1>
        </div>
    );
};

export default Dashboard;
