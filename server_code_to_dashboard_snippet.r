use actix_web::{web, App, HttpServer};
use serde::Deserialize;

#[derive(Deserialize)]
struct Request {
    metrics: Vec<f64>,
}

#[derive(Serialize)]
struct Response {
    predicted_class: String,
}

async fn predict(req: web::Json<Request>) -> web::Json<Response> {
    let model = // Load the trained model

    let predicted_class = model.predict(&req.metrics);

    web::Json(Response {
        predicted_class: predicted_class,
    })
}

fn main() {
    let server = HttpServer::new(|| {
        App::new()
            .service(web::resource("/predict").post(predict))
    });

    server.bind("localhost:8080").unwrap().run().unwrap();
}
