#!/bin/bash
set -ex
(sed -i 's/CDDL/GPL/g' ./usr/src/zfs-*/META) || true
exit 0
