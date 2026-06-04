class CcSettingsPreset < Formula
  desc "A switchable, reusable runtime settings preset selector for Claude Code"
  homepage "https://github.com/lkangd/cc-settings-preset"
  url "https://registry.npmjs.org/@lkangd/cc-settings-preset/-/cc-settings-preset-1.0.10.tgz"
  sha256 "957698fc49fee3b96bb0d5f203a298873ce86d44019b9ca0b3d46991908fc0fd"
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
