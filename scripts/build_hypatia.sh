#!/usr/bin/env bash
set -euo pipefail

# Run:
#   conda activate cmacionize
#   ./scripts/build_hypatia.sh
#
# Clean rebuild (only if you really need it):
#   rm -rf build
#   ./scripts/build_hypatia.sh

mkdir -p build
cd build

cmake .. -DCMAKE_PREFIX_PATH="$CONDA_PREFIX" \
         -DCMAKE_BUILD_TYPE=RelWithDebInfo \
         -DHYDROGEN_ONLY=true

make -j 16

