class JamCli < Formula
  desc "Developer-first AI assistant CLI for the terminal"
  homepage "https://jam.sunilprakash.com"
  url "https://registry.npmjs.org/@sunilp-org/jam-cli/-/jam-cli-0.9.0.tgz"
  sha256 "50149ed60a2a85e9b16ec04828728018d21db3f2856fec7bf3fbfc028a8d4331"
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
