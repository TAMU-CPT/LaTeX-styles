#!/usr/bin/env python
import argparse


def parse_acronyms(data):
    pass


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description='outputs acronyms in tabular format')
    parser.add_argument('acronyms', type=argparse.FileType("r"), help='acronyms.tex')
    args = parser.parse_args()
    parse_acronyms(args.acronyms)
