class JamCli < Formula
  desc "Developer-first AI assistant CLI for the terminal"
  homepage "https://jam.sunilprakash.com"
  url "https://registry.npmjs.org/@sunilp-org/jam-cli/-/jam-cli-0.8.1.tgz"
  sha256 "b86bbb8b6df37557671402e7f7299f1ff0927f176f543f5d521f193b93f2665a"
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
