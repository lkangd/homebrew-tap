class CcSettingsPreset < Formula
  desc "A switchable, reusable runtime settings preset selector for Claude Code"
  homepage "https://github.com/lkangd/cc-settings-preset"
  url "https://registry.npmjs.org/@lkangd/cc-settings-preset/-/cc-settings-preset-1.3.0.tgz"
  sha256 "5d99e4d3ba88ef6bde9692e51506b5114739b9692d4364ae1eebccd03810b605"
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
