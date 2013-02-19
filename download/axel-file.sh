#!/bin/bash
while read url; do axel $url; done < $1
