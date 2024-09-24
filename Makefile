gen:
	@protoc \
		--proto_path=protobuf "protobuf/orders.proto" \
		--go_out=services/common/genproto/orders --go_opt=paths=source_relative \
		--go-grpc_out=services/common/genproto/orders --go-grpc_opt=paths=source_relative

# 1: specifies the relative path to the protobuf definitions
# 2: path to the output of the generated pb code
# 3: This generates Go code for the data structures defined in the orders.proto file and outputs it
# --go_opt=paths=source_relative: This generates Go code for gRPC service stubs (used for client-server communication) 
# from the same orders.proto file and outputs it to the same directory. 
# The --go-grpc_opt=paths=source_relative flag ensures the relative paths for the gRPC stubs match the source.

run-orders:
	@go run services/orders/*.go

run-kitchen:
	@go run services/kitchen/*.go