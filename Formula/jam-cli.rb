class JamCli < Formula
  desc "Developer-first AI CLI for cross-language code intelligence"
  homepage "https://jam.sunilprakash.com"
  url "https://registry.npmjs.org/@sunilp-org/jam-cli/-/jam-cli-0.11.4.tgz"
  sha256 "7aebb585bf2b9ae6b4762b8f49727a881377196dc017aac4a072ec16b6f9a1d6"
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
