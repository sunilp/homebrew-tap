class JamCli < Formula
  desc "Developer-first AI CLI for cross-language code intelligence"
  homepage "https://jam.sunilprakash.com"
  url "https://registry.npmjs.org/@sunilp-org/jam-cli/-/jam-cli-0.10.0.tgz"
  sha256 "bf6339dd4ddc1efa0883ae4b1a71c64de2704a8098ee4e42f9b63e8f910ebea1"
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
