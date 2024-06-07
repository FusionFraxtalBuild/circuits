use dep::std;

fn main(
    reqDomain: Field,
    passcode: Field,
    serverHash: pub Field,
    domain: pub Field,
    chainId: pub Field,
    txHash: pub Field,
    amount: pub Field
) {
    let hash = std::hash::pedersen_hash([passcode, chainId]);

    assert(hash == serverHash);
    assert(domain == reqDomain);
}

#[test]
fn test_main() {
    let reqDomain = 0x45318970bfff215a328f56895f3a97d4f276a44c24c135c12c37867a1f667b8a;
    let passcode = 0x33353435;
    let serverHash = 0x2a839d1e09d517235076fffad1d4f80fdf1a05fac8623e918b8a565e75fed6ad;
    let domain = 0x45318970bfff215a328f56895f3a97d4f276a44c24c135c12c37867a1f667b8a;
    let chainId = 0x0000000000000000000000000000000000000000000000000000000000000763;
    let txHash = 0xf3337ab2e34fbf9479e78e3592a2160a4ca76b1eafb5fc242016424a7b14e022;
    let amount = 0x38D7EA4C68000;

    main(reqDomain, passcode, serverHash, domain, chainId, txHash, amount);
}
