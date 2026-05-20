#!/usr/bin/python3

# Network Stress Tester
# BTech Final Year Project
# Based on the CLIF-Framework (MIT Licence)

from sys import argv

from CLIF_Framework.framework import console, module  # noqa: I900


def run():
	main_console = console()
	main_console.rsversion = "4.1 (Pre)"
	main_console.user_argv = argv

	module("modules.main", main_console)

	main_console.run()


if __name__ == "__main__":
	run()
