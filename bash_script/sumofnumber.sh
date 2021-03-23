#!/bin/bash

awk '{x+=$0}END{print x}' filename
