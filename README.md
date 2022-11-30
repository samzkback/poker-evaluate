# Poker-Evaluator

this repo is based on [poker-solidity](https://github.com/dxganta/poker-solidity), with several fixs to make 7-card evealute [sanity test](./scripts/poker-evaluator.ts) works.

[Algorithm](https://github.com/HenryRLee/PokerHandEvaluator/blob/master/Documentation/Algorithm.md)

[Javascript Version](https://github.com/thlorenz/phe)

# Setup
```shell
npm install
npx hardhat node &
npx hardhat run scripts/poker-evaluator.ts --network localhost
```

# TODO
1. split contract to deploy on real network.
2. same rank compare
3. sanity test 100% coverage