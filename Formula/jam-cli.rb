class JamCli < Formula
  desc "Developer-first AI assistant CLI for the terminal"
  homepage "https://jam.sunilprakash.com"
  url "https://registry.npmjs.org/@sunilp-org/jam-cli/-/jam-cli-0.8.7.tgz"
  sha256 "f84eca5b0bde957b5bc24f4a49bb07430ed40cd12e076c26f793b83bf2e4f717"
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
