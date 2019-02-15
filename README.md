# Ethergram
### A decentalized instagram clone hosted entirely on ipfs using the Ethereum blockchain

![Ethergram home](https://i.supload.com/300x0/SyxVJAovXE.png)

hosted on ipfs https://ipfs.infura.io/ipfs/QmaQQSmdxkYNJha857deKCxqe2KDZzsjb5WcNYMmuFQimD

## Requirements

Ropsten testnet only. Built for mobile(just like native Instagram). Best experinced using Coinbase Wallet or Cipher Ethereum wallets.

## Web components

The idea behind this project was to not rely on using any javascript frontend frameworks. Vanilla javascript only. The entire app lives in one flat html file that's 62kb in size and has no external dependencies. This should make hosting on ipfs as fast as possible.

[Web Components](https://www.webcomponents.org/)

### Current features
* Uploading to ipfs from file system or camera on mobile device
* Auto update when new post is included into a new eth block
* Liking of images
* Discovery tab of all current uploads

### Upcoming features
* Tipping
* Commenting
* erc-721 user profiles
* Direct messages (slide into your DM's)
