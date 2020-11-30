/*
SPDX-License-Identifier: Apache-2.0
*/
package main

import (
	"log"

	src "github.com/SpeedVan/fabric-demo/chaincode"
	"github.com/hyperledger/fabric-contract-api-go/contractapi"
)

func main() {
	assetChaincode, err := contractapi.NewChaincode(&src.SmartContract{})
	if err != nil {
		log.Panicf("Error creating fabric-demo chaincode: %v", err)
	}

	if err := assetChaincode.Start(); err != nil {
		log.Panicf("Error starting fabric-demo chaincode: %v", err)
	}
}
