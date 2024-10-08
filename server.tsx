const server = Bun.serve({
  port: 5020,
  hostname: "0.0.0.0",
  fetch(request) {
    return new Response("Welcome to Bun!");
  },
});

console.log(`Listening on localhost:${server.port}`);