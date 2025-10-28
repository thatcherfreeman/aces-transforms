lint:
	clang-format -i IDT/*.dctl
	python lint_dctl.py "IDT/"
	clang-format -i ODT/*.dctl
	python lint_dctl.py "ODT/"
	clang-format -i Reference/*.dctl
	python lint_dctl.py "Reference/"
	clang-format -i Linear\ to\ Log\ Conversions/*.dctl
	python lint_dctl.py "Linear to Log Conversions/"

all: lint