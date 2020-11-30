#!/bin/bash

CUR_DIR=$(cd "$(dirname "${BASH_SOURCE-$0}")"; pwd)




source ${CUR_DIR}/SH2_peer-install-org1.sh
package_id1=$(source ${CUR_DIR}/SH2_peer-queryinstalled-org1.sh)
source ${CUR_DIR}/SH3_peer-approve-org1.sh ${package_id1}

source ${CUR_DIR}/SH2_peer-install-org2.sh
package_id2=$(source ${CUR_DIR}/SH2_peer-queryinstalled-org2.sh)
source ${CUR_DIR}/SH3_peer-approve-org2.sh ${package_id2}