class JamCli < Formula
  desc "Developer-first AI assistant CLI for the terminal"
  homepage "https://github.com/sunilp/jam-cli"
  url "https://registry.npmjs.org/@sunilp-org/jam-cli/-/jam-cli-0.1.2.tgz"
  sha256 "316007a1c1f5e9ab33efb458a340f6cfde6411cd27bbe4559d57c1dce248aa90"
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
