#!/bin/bash

# CUR_DIR=$(cd "$(dirname "${BASH_SOURCE-$0}")"; pwd)

export FABRIC_CFG_PATH=/Users/admin/projects/go/src/github.com/hyperledger/fabric-samples/config

export CORE_PEER_TLS_ENABLED=true
export CORE_PEER_LOCALMSPID="Org2MSP"
export CORE_PEER_TLS_ROOTCERT_FILE=/Users/admin/projects/go/src/github.com/hyperledger/fabric-samples/test-network/organizations/peerOrganizations/org2.example.com/peers/peer0.org2.example.com/tls/ca.crt
export CORE_PEER_MSPCONFIGPATH=/Users/admin/projects/go/src/github.com/hyperledger/fabric-samples/test-network/organizations/peerOrganizations/org2.example.com/users/Admin@org2.example.com/msp
export CORE_PEER_ADDRESS=localhost:9051

export CC_PACKAGE_ID=basic_1.0:f14b9307b3ce9a098bc5b27ff04e550ebde875ad1ed0f3a27cf06c5e303c216d

peer lifecycle chaincode approveformyorg -o localhost:7050 --ordererTLSHostnameOverride orderer.example.com --channelID mychannel --name basic --version 1.0 --package-id ${CC_PACKAGE_ID} --sequence 1 --tls --cafile /Users/admin/projects/go/src/github.com/hyperledger/fabric-samples/test-network/organizations/ordererOrganizations/example.com/orderers/orderer.example.com/msp/tlscacerts/tlsca.example.com-cert.pem
