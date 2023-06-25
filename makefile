run-server:
	go run ./app/cmd/server/main.go
	curl \
    --header "Content-Type: application/json" \
    --data '{"name": "Jane"}' \
    http://0.0.0.0:8888/greet.v1.GreetService/Greet

run-client:
	go run ./app/cmd/client/main.go

run-nginx:
	curl \
    --header "Content-Type: application/json" \
    --data '{"name": "Jane"}' \
    http://0.0.0.0:80/greet.v1.GreetService/Greet

# curl-grpc:
# 	bashgrpcurl \
#     -protoset <(buf build -o -) -plaintext \
#     -d '{"name": "Jane"}' \
#     0.0.0.0:8080 greet.v1.GreetService/Greet