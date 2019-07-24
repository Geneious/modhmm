#!/bin/sh

set -e
@modhmms_octopus_exe@ -m @CMAKE_CURRENT_BINARY_DIR@/hmg.list -s @CMAKE_CURRENT_BINARY_DIR@/query.list -f prf -o @CMAKE_CURRENT_BINARY_DIR@ -r @CMAKE_CURRENT_SOURCE_DIR@/replacement_letter_multi.rpl -L -M DP -v --nopostout -u --nolabels --viterbi

diff --brief @CMAKE_CURRENT_BINARY_DIR@/NNZHMM_io_reent_hairpin.hmg.res @CMAKE_CURRENT_SOURCE_DIR@/NNZHMM_io_reent_hairpin.hmg.res
