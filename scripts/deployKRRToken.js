const hre = require("hardhat");

async function main() {

  const KRRToken = await hre.ethers.getContractFactory("KRRToken");
  const token = await KRRToken.deploy();

  await token.deployed();
  console.log("KRRToken deployed to:", token.address);
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
