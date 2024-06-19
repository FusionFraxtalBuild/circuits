#[oracle(getSqrt)]
unconstrained fn sqrt(input: [Field; 2]) -> [Field; 2] {}

unconstrained fn get_sqrt(input: [Field; 2]) -> [Field; 2] {
    sqrt(input)
}

fn main(input: [Field; 2]) -> pub [Field; 2] {
    let sqrt = get_sqrt(input);

    sqrt
}
