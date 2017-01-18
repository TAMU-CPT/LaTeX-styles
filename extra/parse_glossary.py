#!/usr/bin/env python
import argparse


def parse_glossary(data):
    pass


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description='outputs glossary in tabular format')
    parser.add_argument('glossary', type=argparse.FileType("r"), help='glossary.tex')
    args = parser.parse_args()
    parse_glossary(args.glossary)
