CC = gcc
library = -L/usr/local/openssl/lib -lssl -lcrypto -ldl -lpthread
Cflages = -Wall
RM = rm -rf
SERVER = ssl_server
CLIENT = ssl_client

all: ${CLIENT} ${SERVER}

${CLIENT}: clientSSL.o
	${CC} ${Cflages} $< ${library} -o $@

${SERVER}: serverSSL.o
	${CC} ${Cflages} $< ${library} -o $@

clean:
	${RM} ${SERVER} ${CLIENT} *.pem *.o