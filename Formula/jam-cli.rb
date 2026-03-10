class JamCli < Formula
  desc "Developer-first AI assistant CLI for the terminal"
  homepage "https://github.com/sunilp/jam-cli"
  url "https://registry.npmjs.org/@sunilp-org/jam-cli/-/jam-cli-0.5.0.tgz"
  sha256 "ee6656b64db0de550637dc39b84c9326ed8752b3d51f3313f0672b76665e366d"
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
