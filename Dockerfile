FROM node

WORKDIR /app

ENV BUN_INSTALL="/home/node/.bun"
ENV PATH="$BUN_INSTALL/bin:$PATH" 

RUN apt-get update && apt-get install -y curl

RUN curl -fsSL https://bun.sh/install | bash

RUN echo 'export BUN_INSTALL="/home/node/.bun"' >> /home/node/.bashrc && \
    echo 'export PATH="$BUN_INSTALL/bin:$PATH"' >> /home/node/.bashrc

RUN bun install

COPY . .

EXPOSE 3000

CMD ["bun", "run", "./server.ts"]

