#******************************************************************************
# Copyright (C) 2020 by Ashraf Abubaker - SEDC & University of Khartoum
#
# Redistribution, modification or use of this software in source or binary
# forms is permitted as long as the files maintain this copyright. Users are 
# permitted to modify this and use it to learn about the field of embedded
# software. Ashraf Abubaker, SEDC and the University of Khartoum are not liable 
# for any misuse of this material. 
# 
# Created by Ashraf Abubaker for Microprocessor System Design Course 
# University of Khartoum - NOV 2018
# You can obtain this file from the Git Repository
# https://github.com/ashrafmalraheem/Mircoprocessor_Course
#*****************************************************************************

CURRENTDIR = $(shell pwd)
#------------------------------------------------------------------------------
# Add your Source files to this variable
include specs.mk
SOURCES = *.c 
LIBRARY = "$(CURRENTDIR)/"

# Add your include paths to this variable
INCLUDES =  -I"$(CURRENTDIR)"
LINK_INC =