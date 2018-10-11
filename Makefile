# vars
VENV ?= v
PY ?= python3
PORT ?= 2000

# commands
MKDOCS = $(VENV)/bin/mkdocs
PIP = $(VENV)/bin/pip

all: build

clean:
	rm -rf $(VENV)

build: $(VENV)
	$(MKDOCS) build

serve: $(VENV)
	$(MKDOCS) serve -a 127.0.0.1:$(PORT)

$(VENV):
	$(PY) -m venv $(VENV)
	$(PIP) install -r requirements.txt
