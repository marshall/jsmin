FROM gcc:latest as build

WORKDIR /app
COPY ./ /app

RUN gcc -static jsmin.c -o jsmin

FROM gcr.io/distroless/base-nossl

WORKDIR /app
COPY --from=build /app/jsmin .

ENTRYPOINT ["/app/jsmin"]
