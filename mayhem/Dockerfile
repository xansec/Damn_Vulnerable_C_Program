FROM ubuntu AS builder

RUN apt update -y && DEBIAN_FRONTEND=noninteractive apt install -y afl make build-essential
COPY . .
RUN make afl 

FROM ubuntu

RUN apt update -y && apt install -y libasan6 libubsan1
COPY --from=builder /imgRead /
COPY --from=builder /mayhem/testsuite /testsuite
