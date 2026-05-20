#!/usr/bin/python3

# Network Stress Tester
# BTech Final Year Project
# Based on the CLIF-Framework (MIT Licence)

# This script is a shortcut for running without installing to the bin path.

from importlib import import_module
from sys import path

path.insert(1, "./nst/")
main = import_module("nst.main")

main.run()
