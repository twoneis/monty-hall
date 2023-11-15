use rand::Rng;

fn main() {
    let num_runs: u32 = 10000;

    let mut win_count: u32 = 0;

    for _n in 1..num_runs {
        if monty_hall() {
            win_count += 1;
        }
    }

    println!("{}", (win_count as f32) / (num_runs as f32));
}

fn monty_hall() -> bool {
    let mut rng = rand::thread_rng();

    let win: u8 = rng.gen_range(0..3);
    let guess: u8 = rng.gen_range(0..3);

    let mut reveal: u8 = 3;
    while reveal == 3 {
        let rand = rng.gen_range(0..3);
        if rand != guess && rand != win {
            reveal = rand;
        }
    }

    if guess == win {
        return false;
    }

    true
}
