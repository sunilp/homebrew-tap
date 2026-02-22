class JamCli < Formula
  desc "Developer-first AI assistant CLI for the terminal"
  homepage "https://github.com/sunilp/jam-cli"
  url "https://registry.npmjs.org/@sunilp-org/jam-cli/-/jam-cli-0.1.1.tgz"
  sha256 "9bd21058d67293ee17b5fb5dc6bafe39b0ea565cbd8604c5cd4d62040c686cd4"
  license "MIT"

  depends_on "node@20"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jam --version")
  end
end
