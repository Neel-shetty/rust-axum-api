use axum::{
    routing::get,
    Router,
};

#[tokio::main]
async fn main() {
    // build our application with a single route
    let app = Router::new().route("/", get(hello_world));

    println!("Server running on port 3000");
    // run it with hyper on localhost:3000
    axum::Server::bind(&"[::]:3000".parse().unwrap())
        .serve(app.into_make_service())
        .await
        .unwrap();
}

async fn hello_world() -> String {
    "Hello World, you've been oxidized".to_string()
}