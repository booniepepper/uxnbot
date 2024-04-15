FROM alpine as build

WORKDIR "/uxnbot"

RUN apk add --no-cache gcc git libc-dev

RUN git clone https://git.sr.ht/~rabbits/uxn
RUN cc ./uxn/src/uxnasm.c -o /bin/uxnasm

COPY src/uxnbot.c .
RUN cc ./uxnbot.c -o /bin/uxnbot

COPY eval-uxn /bin/eval-uxn



FROM alpine as bin

COPY --from=build /bin/uxnasm /bin/uxnbot /bin/eval-uxn /bin/

ENTRYPOINT ["eval-uxn"]
