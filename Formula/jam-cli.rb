class JamCli < Formula
  desc "Developer-first AI assistant CLI for the terminal"
  homepage "https://github.com/sunilp/jam-cli"
  url "https://registry.npmjs.org/@sunilp-org/jam-cli/-/jam-cli-0.6.0.tgz"
  sha256 "089c3ca496621d8697d4473ccb0a122c5d9ec1d20c276990590ca5f35eff57e2"
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
