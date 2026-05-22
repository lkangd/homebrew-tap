class CcSettingsPreset < Formula
  desc "A switchable, reusable runtime settings preset selector for Claude Code"
  homepage "https://github.com/lkangd/cc-settings-preset"
  url "https://registry.npmjs.org/@lkangd/cc-settings-preset/-/cc-settings-preset-1.0.2.tgz"
  sha256 "5cd8ba1061c2cb34d00db456013dc7a8b6bdf3ea304b68f3d41b0d6aee5cac1b"
  license "ISC"

  depends_on "node@20"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "#{bin}/cc-settings-preset", "--version"
  end
end
