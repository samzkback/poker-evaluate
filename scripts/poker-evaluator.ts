import { SignerWithAddress } from "@nomiclabs/hardhat-ethers/signers";
import { ethers } from "hardhat";
import { DpTables__factory, Evaluator7__factory, Flush1__factory, Flush2__factory, Flush3__factory, NoFlush10__factory, NoFlush11__factory, NoFlush12__factory, NoFlush13__factory, NoFlush14__factory, NoFlush15__factory, NoFlush16__factory, NoFlush17__factory, NoFlush1__factory, NoFlush2__factory, NoFlush3__factory, NoFlush4__factory, NoFlush5__factory, NoFlush6__factory, NoFlush7__factory, NoFlush8__factory, NoFlush9__factory } from "./types";

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

    const dpTable = await (new DpTables__factory(owner)).deploy()
    console.log("dpTable.address : ", dpTable.address)

    let flushs : string[] = []
    flushs.push((await (new Flush1__factory(owner)).deploy()).address)
    flushs.push((await (new Flush2__factory(owner)).deploy()).address)
    flushs.push((await (new Flush3__factory(owner)).deploy()).address)
    console.log("flushs : ", flushs)

    let noflushs = []
    noflushs.push((await (new NoFlush1__factory(owner)).deploy()).address)
    noflushs.push((await (new NoFlush2__factory(owner)).deploy()).address)
    noflushs.push((await (new NoFlush3__factory(owner)).deploy()).address)
    noflushs.push((await (new NoFlush4__factory(owner)).deploy()).address)
    noflushs.push((await (new NoFlush5__factory(owner)).deploy()).address)
    noflushs.push((await (new NoFlush6__factory(owner)).deploy()).address)
    noflushs.push((await (new NoFlush7__factory(owner)).deploy()).address)
    noflushs.push((await (new NoFlush8__factory(owner)).deploy()).address)
    noflushs.push((await (new NoFlush9__factory(owner)).deploy()).address)
    noflushs.push((await (new NoFlush10__factory(owner)).deploy()).address)
    noflushs.push((await (new NoFlush11__factory(owner)).deploy()).address)
    noflushs.push((await (new NoFlush12__factory(owner)).deploy()).address)
    noflushs.push((await (new NoFlush13__factory(owner)).deploy()).address)
    noflushs.push((await (new NoFlush14__factory(owner)).deploy()).address)
    noflushs.push((await (new NoFlush15__factory(owner)).deploy()).address)
    noflushs.push((await (new NoFlush16__factory(owner)).deploy()).address)
    noflushs.push((await (new NoFlush17__factory(owner)).deploy()).address)

    console.log("noflushs : ", noflushs)

    const eva = await (new Evaluator7__factory(owner)).deploy(
      dpTable.address,
      flushs,
      noflushs
    )
    console.log("eva.address : " , eva.address)

}

main()
.then(() => process.exit(0))
.catch(error => {
  console.error(error);
  process.exit(1);
});

