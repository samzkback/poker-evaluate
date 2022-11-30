import { SignerWithAddress } from "@nomiclabs/hardhat-ethers/signers";
import { ethers } from "hardhat";

// Evaluator
// 1. Rank
// 2. Big in Rank


// Note 
// 1. compile long time, do not touch flush/

async function main(
) {
    const owners = await ethers.getSigners()
    let owner : SignerWithAddress = owners[0]
    console.log("owner : ", owner.address, " balance : ", await owner.getBalance())

}

main()
.then(() => process.exit(0))
.catch(error => {
  console.error(error);
  process.exit(1);
});

