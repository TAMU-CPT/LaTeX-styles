#!/usr/bin/env python
import argparse
import re


def parse_acronyms(data):
    for d in data:
        splitline = re.findall(r'{[^{}]*}', d.strip('\\newacronym'))
        print '\t'.join([splitline[0].strip('{').strip('}'), splitline[2].strip('{').strip('}')])


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description='outputs acronyms in tabular format')
    parser.add_argument('acronyms', type=argparse.FileType("r"), help='acronyms.tex')
    args = parser.parse_args()
    parse_acronyms(args.acronyms)
