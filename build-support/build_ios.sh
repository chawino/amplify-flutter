#!/bin/bash

set -e

melos exec --scope=${1}_example -- flutter build ios --simulator