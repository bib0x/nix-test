use clap::{Command, Arg, ArgAction};

pub fn build_cli(program_name: &'static str) -> Command {
    Command::new(program_name)
        .about("Program description")
}

#[test]
fn verify_app() {
   build_cli("program_test").debug_assert();
}
