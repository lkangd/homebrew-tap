class CcEnv < Formula
  desc "CLI tool for managing Claude Code runtime environment configurations"
  homepage "https://github.com/lkangd/cc-env"
  deprecate! date: "2026-05-22", because: :repo_archived, replacement_formula: "cc-settings-preset"
  url "https://registry.npmjs.org/@lkangd/cc-env/-/cc-env-1.4.1.tgz"
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
