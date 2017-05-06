CONFIG_DIRS := config
BIN := bin
SRC := $(PWD)

.PHONY: all repo

all: repo

repo:
	echo "Setup Repository..."
        yum install -y epel-release
	bash $(BIN)/bootstrap
	yum install -y docker-engine
	systemctl enable docker
	systemctl start docker
