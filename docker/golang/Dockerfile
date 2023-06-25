FROM golang:1.20-alpine

WORKDIR /app

RUN go install github.com/cosmtrek/air@latest && go install github.com/volatiletech/sqlboiler/v4@latest && go install github.com/volatiletech/sqlboiler/v4/drivers/sqlboiler-psql@latest && apk --no-cache add postgresql-client && go install github.com/bufbuild/buf/cmd/buf@latest && go install github.com/fullstorydev/grpcurl/cmd/grpcurl@latest && go install google.golang.org/protobuf/cmd/protoc-gen-go@latest && go install github.com/bufbuild/connect-go/cmd/protoc-gen-connect-go@latest
 
RUN mkdir /go/src/app
WORKDIR /go/src/app
ADD . /go/src/app
EXPOSE 8888
COPY ./app/go.mod ./app/go.sum ./
RUN go mod tidy

CMD ["air", "-c", ".air.toml"]

