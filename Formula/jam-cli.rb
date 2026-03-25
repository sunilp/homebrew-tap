class JamCli < Formula
  desc "Developer-first AI CLI for cross-language code intelligence"
  homepage "https://jam.sunilprakash.com"
  url "https://registry.npmjs.org/@sunilp-org/jam-cli/-/jam-cli-0.11.1.tgz"
  sha256 "6fe433841388e95cb8658e20e345027d55cab2d7d36e782a0e32bbc15f004341"
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
