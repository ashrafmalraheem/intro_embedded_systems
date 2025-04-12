#******************************************************************************
# Copyright (C) 2025 by Ashraf Abubaker.
#
# Redistribution, modification or use of this software in source or binary
# forms is permitted as long as the files maintain this copyright. Users are 
# permitted to modify this and use it to learn about the field of embedded
# software. Ashraf Abubaker,  and the  are not liable 
# for any misuse of this material. 
# 
#  - April 2025
# You can obtain this file from the Git Repository
# https://github.com/ashrafmalraheem
#*****************************************************************************

#------------------------------------------------------------------------------
# This is a make build file to generate different files (preprocessed,assembly,objects,.hex) 
# for different platform.
# Use: make [TARGET] 
#
# Build Targets:
#      <FILE>.o    - Builds <FILE>.o object file
#      <FILE>.d    - Builds <FILE>.d dependancy file
#      <FILE>.i    - Builds <FILE>.i preprocessed file
#      <FILE>.asm  - Builds <FILE>.asm assembly file
#      <FILE>.dump - Builds <FILE>.dump assembly file using the GNU  BIN utilities
#      main.hex    - output file and size for every output file using GNU Bin utility
#      build       - Builds and links all source files
#      compile-all - build all files without linking
#      clean       - removes all generated files
#      upload      - upload the output file into dedicated platform
#      all         - clean, build and upload the output file into the platform
# Platform Overrides:
#      PLATFORM -  The platform for the output file to executre (atmega328p)
#
#------------------------------------------------------------------------------
include sources.mk
include specs.mk


# Compiler Flags and Defines

EXTEN = .hex
ifeq ($(platform),avr)
	CC = avr-gcc
else ifeq ($(platform),arm)
	CC = arm-none-eabi-gcc
	CFLAGS  += --specs=nosys.specs
else
	CC = gcc
	EXTEN = .exe
	CFLAGS  += -DHOST
endif
#Windows commands

# Recipes
OBJS  := $(SOURCES:.c=.o)
%.o : %.c
	$(CC) -o $@ -c $< $(CFLAGS) 

# PHONY Directives
#.PHONY: build 
build: $(SOURCES)
	$(CC) $^ $(CFLAGS) -o $(TARGET)$(EXTEN)
#.PHONY: compile-all
compile-all: $(SOURCES)
	$(CC)  $^ $(CFLAGS) 

#.PHONY: clean
clean: 
	del *.dep *.d *.i *.o *.asm *.out *.hex *.elf *.map *.s *.exe
