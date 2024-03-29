FROM alpine

WORKDIR "/uxnbot"

COPY eval-uxn src .
RUN apk add --no-cache gcc libc-dev \
  && cc uxnasm.c -o /bin/uxnasm \
  && cc uxnbot.c -o /bin/uxnbot

ENTRYPOINT ["./eval-uxn"]
