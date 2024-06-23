lint:
	clang-format -i IDT/*.dctl
	clang-format -i ODT/*.dctl

all: lint