#!/bin/bash

set -e
@modhmms_spoctopus_exe@ -m @CMAKE_CURRENT_BINARY_DIR@/hmg.list -s @CMAKE_CURRENT_BINARY_DIR@/query.list -f prf -o @CMAKE_CURRENT_BINARY_DIR@ -L -M DP -v --nopostout -u --nolabels --viterbi

diff --brief @CMAKE_CURRENT_BINARY_DIR@/NNZHMM_io_reent_hairpin_sigpep.hmg.res @CMAKE_CURRENT_SOURCE_DIR@/NNZHMM_io_reent_hairpin_sigpep.hmg.res