class CcSettingsPreset < Formula
  desc "A switchable, reusable runtime settings preset selector for Claude Code"
  homepage "https://github.com/lkangd/cc-settings-preset"
  url "https://registry.npmjs.org/@lkangd/cc-settings-preset/-/cc-settings-preset-1.5.0.tgz"
  sha256 "9988e5704d9d9970108b8ea9091b645fa0db2c5ae54498f423abffd5e57ffa60"
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
