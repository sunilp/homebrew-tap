class JamCli < Formula
  desc "Developer-first AI assistant CLI for the terminal"
  homepage "https://github.com/sunilp/jam-cli"
  url "https://registry.npmjs.org/@sunilp-org/jam-cli/-/jam-cli-0.4.0.tgz"
  sha256 "3ea6fafc6f8a905bdd827ad1ac52a5ce906356d0d1b480ae794ab1549ba2e556"
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
