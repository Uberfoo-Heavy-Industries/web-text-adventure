# Makefile for building the WebAssembly Text Adventure Game

# Emscripten compiler
EMCC = emcc

# Source file
SRC = text-adventure.c

# Output files
OUT_JS = text-adventure.js
OUT_WASM = text-adventure.wasm

# Compiler flags
CFLAGS = -s WASM=1 -s EXPORTED_FUNCTIONS="['_handle_command', '_malloc', '_free']" -s EXPORTED_RUNTIME_METHODS="['ccall', 'cwrap']"

# Default target
all: $(OUT_JS) $(OUT_WASM)

# Build the WebAssembly module
$(OUT_JS): $(SRC)
	$(EMCC) $(SRC) -o $(OUT_JS) $(CFLAGS)

# Clean target to remove generated files
clean:
	rm -f $(OUT_JS) $(OUT_WASM)

.PHONY: all clean
