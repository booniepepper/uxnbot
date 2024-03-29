FROM alpine

RUN apk add --no-cache envsubst gcc git libc-dev \
  && git clone https://git.sr.ht/~rabbits/uxn11 \
  && cd uxn11 \
  && cc src/devices/datetime.c \
        src/devices/system.c \
        src/devices/console.c \
        src/devices/file.c src/uxn.c \
        -DNDEBUG -Os -g0 \
        -s src/uxncli.c \
        -o /bin/uxncli \
  && cc src/uxnasm.c \
        -o /bin/uxnasm

COPY template.tal eval .

ENTRYPOINT ["./eval"]
