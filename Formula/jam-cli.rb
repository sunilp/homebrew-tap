class JamCli < Formula
  desc "Developer-first AI assistant CLI for the terminal"
  homepage "https://jam.sunilprakash.com"
  url "https://registry.npmjs.org/@sunilp-org/jam-cli/-/jam-cli-0.7.0.tgz"
  sha256 "942422091890e005a0616914d9d4463c6095b67bc927ff5cfe9a096bafbd31e0"
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
