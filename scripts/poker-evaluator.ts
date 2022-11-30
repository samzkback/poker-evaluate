import { SignerWithAddress } from "@nomiclabs/hardhat-ethers/signers";
import { deploy } from "@openzeppelin/hardhat-upgrades/dist/utils";
import { ethers } from "hardhat";
import { DpTables__factory, Evaluator7__factory, Flush1__factory, Flush2__factory, Flush3__factory, NoFlush10__factory, NoFlush11__factory, NoFlush12__factory, NoFlush13__factory, NoFlush14__factory, NoFlush15__factory, NoFlush16__factory, NoFlush17__factory, NoFlush1__factory, NoFlush2__factory, NoFlush3__factory, NoFlush4__factory, NoFlush5__factory, NoFlush6__factory, NoFlush7__factory, NoFlush8__factory, NoFlush9__factory } from "./types";

// Evaluator
// 1. Rank
// 2. Big in Rank


// Note 
// 1. compile long time, do not touch flush/
async function deploy_flushs(
  owner : SignerWithAddress,
  using_previous_deploy : boolean
) {
  
  if (using_previous_deploy) {
    return [
      '0x0c4471deDaE2dB1e53a4927ca598A9236A9cD773',
      '0xd9402769415035d59dE98733Dd166c4e903B4f8C',
      '0x48F8e25562EB57c9Fb1b12145d34f09b1b8bd1D6'
    ]
  }
  let flushs = []
  flushs.push((await (new Flush1__factory(owner)).deploy()).address)
  flushs.push((await (new Flush2__factory(owner)).deploy()).address)
  flushs.push((await (new Flush3__factory(owner)).deploy()).address)
  return flushs
}

async function deploy_no_flushs(
  owner : SignerWithAddress,
  using_previous_deploy : boolean
) {
    let noflushs =[]
    if (using_previous_deploy) {
      return [
        '0x07766aD370370af9d2564A2B44f34be626d3E2e0',
        '0xabEc9277CBC275131b61c41081cc5b5a08C267a3',
        '0x91b1bf08A37EB91294FC8dc59b0951A2EEF1522a',
        '0x608242cB19bcBBfeC14CA47A7DA146048d407098',
        '0x0A7C5f090Be105EfAb0Cf6705e4f7135c267A3E9',
        '0x432D0AF948bab85e65D6672de68D20B2cE13E1a6',
        '0xcC9a29f1C7EFF7F21B2ebee2ea5039c7b507f30a',
        '0xA610bE3F3220C932D7215dA9C16f1105F1b278C2',
        '0xDe3fFd98d7030c057b2B75913732d43ec1978408',
        '0xbFF54DEA53D243E35389e3f2C7F9c148b0113104',
        '0xE0837d7477A7b19b19e153750aC263513dA2E5d2',
        '0x9ffA320029C5883852428db23cF5449477a04626',
        '0xA9B7E7Cbe38DB57c35CbCff3F77CB98d28D218e3',
        '0x8F8a52Ee35A15F29c789b7a635aA78bC10628B87',
        '0x968A20D6241BCCaBe710136950876aD1Bf31512f',
        '0x1C254319da64bD459A361B0f4568306DabcCF6E2',
        //'0xF3E8A05937d2f02192604b0B59Ed311808662Ff9'
      ]
    }

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

    return noflushs
}

async function main(
) {
    const owners = await ethers.getSigners()
    let owner : SignerWithAddress = owners[0]
    console.log("owner : ", owner.address, " balance : ", await owner.getBalance())

    const dpTable = await (new DpTables__factory(owner)).deploy()
    console.log("dpTable.address : ", dpTable.address)

    let flushs = await deploy_flushs(owner, true)
    console.log("flushs : ", flushs)

    let noflushs = await deploy_no_flushs(owner, true)
    console.log("noflushs : ", noflushs)

    const eva = await (new Evaluator7__factory(owner)).deploy(
      dpTable.address,
      flushs,
      noflushs,
      {gasLimit : 300000000}
    )
    console.log("eva.address : " , eva.address)

}

main()
.then(() => process.exit(0))
.catch(error => {
  console.error(error);
  process.exit(1);
});

