class CcEnv < Formula
  desc "CLI tool for managing Claude Code runtime environment configurations"
  homepage "https://github.com/lkangd/cc-env"
  url "https://registry.npmjs.org/@lkangd/cc-env/-/cc-env-1.4.0.tgz"
  sha256 "5ac0a8aaaab259decbaab57e4a4cba9aa105b13784fff5f555861465e0fc5eab"
  license "ISC"

  depends_on "node@20"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "#{bin}/cc-env", "--version"
  end
end
