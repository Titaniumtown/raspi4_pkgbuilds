#!/bin/bash
set -ex
modify_zfs() {
        cd /usr/src/$(ls ./usr/src | grep zfs | tail -n 1)
        ./autogen.sh
}
(sed -i 's/CDDL/GPL/g' ./usr/src/zfs-*/META && modify_zfs) || true
exit 0