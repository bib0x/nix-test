mod cli;

fn main() {
  let matches = cli::build_cli("my-cli-app").get_matches();
}
