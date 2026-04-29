class CcEnv < Formula
  desc "CLI tool for managing Claude Code runtime environment configurations"
  homepage "https://github.com/lkangd/cc-env"
  url "https://registry.npmjs.org/@lkangd/cc-env/-/cc-env-1.3.0.tgz"
  sha256 "a980e01080d1133480ef65f9c821dc079d86046fc7f64c482cc8453c4af9333b"
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
