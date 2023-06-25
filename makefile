run:
	go run ./cmd/server/main.go
	 curl \
    --header "Content-Type: application/json" \
    --data '{"name": "Jane"}' \
    http://localhost:8080/greet.v1.GreetService/Greet

# curl-grpc:
# 	bashgrpcurl \
#     -protoset <(buf build -o -) -plaintext \
#     -d '{"name": "Jane"}' \
#     0.0.0.0:8080 greet.v1.GreetService/Greet