class CcEnv < Formula
  desc "CLI tool for managing Claude Code runtime environment configurations"
  homepage "https://github.com/lkangd/cc-env"
  url "https://registry.npmjs.org/@lkangd/cc-env/-/cc-env-1.2.0.tgz"
  sha256 "c8d3eae160a892e32837db3dcae515e843e5383fef52b8141940c8bcf8b6d59f"
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
