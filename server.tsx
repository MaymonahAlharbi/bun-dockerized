const server = Bun.serve({
  port: 5000,
  hostname: "0.0.0.0",
  fetch(request) {
    return new Response("Welcome to Bun!");
  },
});

console.log(`Listening on localhost:${server.port}`);