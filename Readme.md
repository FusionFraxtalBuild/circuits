# Fusion - Circuits

![Made-With-Noir](https://img.shields.io/badge/MADE%20WITH-NOIR-f2c2b6.svg?colorA=222222&style=for-the-badge&logoWidth=14)

> Fusion is a multi-chain smart contract wallet that leverages zero-knowledge proofs for cross-chain deployments and authentication.

> Gas Tokens (GAS) are zk-powered ERC-20 token to streamline gas payments across all compatible networks within the Fusion ecosystem.

These are the circuits used in the _[getFusion.today](https://getFusion.today/)_ hackathon project at [Fraxtal Hackathon 2024](https://dorahacks.io/hackathon/fraxtal/).

> **Deployments**
>
> - Verified contracts - [Contracts](https://github.com/FusionFraxtalBuild/contracts)

#

> **Pre-requisites:**
>
> - Setup Nargo (recommended via [nargo](https://noir-lang.org/docs/getting_started/installation/))
> - Install [Noir](https://noir-lang.org/docs/getting_started/installation/)
> - Clone this repository

## Development

```bash
# Executing deploy_prove circuit
cd deploy_prove
nargo execute

# Checking constraints
nargo info

# Testing circuits
nargo check

# Generate zk-proof
nargo prove

# generate Solidity Verifier
nargo codegen-verifier
```
