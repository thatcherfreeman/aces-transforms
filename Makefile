lint:
	clang-format -i IDT/*.dctl
	clang-format -i ODT/*.dctl
	clang-format -i Reference/*.dctl

all: lint