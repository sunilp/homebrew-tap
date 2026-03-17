class JamCli < Formula
  desc "Developer-first AI assistant CLI for the terminal"
  homepage "https://jam.sunilprakash.com"
  url "https://registry.npmjs.org/@sunilp-org/jam-cli/-/jam-cli-0.8.3.tgz"
  sha256 "357d65bdce088e9c104e1cfa556fff0611155fa360f7ae97b9b2656ca191b6b6"
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
