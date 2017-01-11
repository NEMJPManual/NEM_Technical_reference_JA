#!usr/bin/env python
# -*- coding: utf-8 -*-
import subprocess
import sys


def yield_striped_file(filelist):
    """
    google doc に適切な形に直すため、
    $$$$で囲まれた数式部分を一行にする
    """
    for filename in filelist:
        filename.strip()
        with open(filename) as f:
            flg = False
            for l in f:

                if l.strip() == '$$':
                    flg = not flg

                if flg:
                    yield l.strip()
                else:
                    yield l


if __name__ == '__main__':
    cmd = r'grep -oE "\(.*\)" SUMMARY.md'
    cmd2 = r'sed "s/[(|)]//g"'
    p1 = subprocess.Popen(cmd,
                          stdout=subprocess.PIPE,
                          shell=True)
    p2 = subprocess.Popen(cmd2,
                          stdin=p1.stdout,
                          stdout=subprocess.PIPE,
                          shell=True)
    p1.stdout.close()
    filenames = p2.communicate()[0].split()
    for l in yield_striped_file(filenames):
        sys.stdout.write(l)
