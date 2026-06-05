class CcSettingsPreset < Formula
  desc "A switchable, reusable runtime settings preset selector for Claude Code"
  homepage "https://github.com/lkangd/cc-settings-preset"
  url "https://registry.npmjs.org/@lkangd/cc-settings-preset/-/cc-settings-preset-1.1.0.tgz"
  sha256 "7498d0da679ed397bc253451cbca7fe64f77032fff66816386af57b1945ace10"
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
