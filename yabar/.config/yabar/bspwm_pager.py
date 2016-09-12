#!/usr/bin/env python2
# -*- coding: utf-8 -*-
import sys
import time

from subprocess import Popen, PIPE

show = False

p = Popen(["bspc", "subscribe", "report"], stdout=PIPE)
try:

    while p.poll() is None:
        retval = p.stdout.readline()[1:-1].split(":")
        for blk in retval:
            if blk[0] in ["m", "M"]:
                if blk[1:] == sys.argv[1]:
                    show = True
                else:
                    show = False
            else:
                if show:
                    if blk[0] == "f":
                        sys.stdout.write('    ')
                    elif blk[0] == "F":
                        sys.stdout.write('    ')
                    elif blk[0] == "o":
                        sys.stdout.write('    ')
                    elif blk[0] == "O":
                        sys.stdout.write('    ')
                    elif blk[0] == "u":
                        sys.stdout.write('    ')
                    elif blk[0] == "U":
                        sys.stdout.write('    ')

        sys.stdout.write("\n")
        sys.stdout.flush()

except (KeyboardInterrupt, SystemExit):
    p.terminate()
