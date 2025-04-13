build:
	cd STM32CubeIDE/Debug/ && make -j10 all | compiledb

clean:
	cd STM32CubeIDE/Debug/ && make clean

flash:
	@echo "not implemented yet"
