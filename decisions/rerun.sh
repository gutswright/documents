#!/bin/bash

rm color_results.md
uv run move_to.py
cat color_results.md
