#!/usr/bin/env python
import argparse
import subprocess
import itertools


def parse_glossary(data):
    glossary = subprocess.check_output(["detex", data]).split('\n')
    groups = []
    buff = []
    count = 0
    for key, group in itertools.groupby(glossary, lambda line: line.strip().startswith('name=')):
        if key:
            if len(buff):
                groups.append(buff)
            buff = list(group)
        else:
            if count is not 0:
                buff += list(group)
        count += 1
    groups.append(buff)

    for g in groups:
        print '\t'.join([g[0].strip().strip(',')[5:], g[1].strip().strip(',')[12:]])


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description='outputs glossary in tabular format')
    parser.add_argument('glossary', type=str, help='glossary.tex')
    args = parser.parse_args()
    parse_glossary(args.glossary)
