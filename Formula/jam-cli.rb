class JamCli < Formula
  desc "Developer-first AI CLI for cross-language code intelligence"
  homepage "https://jam.sunilprakash.com"
  url "https://registry.npmjs.org/@sunilp-org/jam-cli/-/jam-cli-0.11.3.tgz"
  sha256 "e617368493d93185e6e71984152e5fb0c3b67b32438341ea6039a5cabb003d03"
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
