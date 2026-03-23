class JamCli < Formula
  desc "Developer-first AI CLI for cross-language code intelligence"
  homepage "https://jam.sunilprakash.com"
  url "https://registry.npmjs.org/@sunilp-org/jam-cli/-/jam-cli-0.11.0.tgz"
  sha256 "5b0a442b5b9b77ba96f2fac97f06ef357a4378247e3acad8ffde3ecdf61784f4"
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
