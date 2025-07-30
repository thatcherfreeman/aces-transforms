lint:
	clang-format -i IDT/*.dctl
	clang-format -i ODT/*.dctl
	clang-format -i Reference/*.dctl
	clang-format -i Linear\ to\ Log\ Conversions/*.dctl

all: lint