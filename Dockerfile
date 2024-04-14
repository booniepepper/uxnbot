FROM alpine

WORKDIR "/uxnbot"

COPY eval-uxn src .
RUN apk add --no-cache gcc libc-dev \
  && wget https://git.sr.ht/~rabbits/uxn/blob/main/src/uxnasm.c
  && cc uxnasm.c -o /bin/uxnasm \
  && cc uxnbot.c -o /bin/uxnbot

ENTRYPOINT ["./eval-uxn"]
