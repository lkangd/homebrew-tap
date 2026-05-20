class CcEnv < Formula
  desc "CLI tool for managing Claude Code runtime settings presets"
  homepage "https://github.com/lkangd/cc-settings-preset"
  url "https://registry.npmjs.org/@lkangd/cc-settings-preset/-/cc-settings-preset-1.2.0.tgz"
  sha256 "0ca0dcb5eeb4540b48e32714d85dd7804b616534edd134b167e8c23f7c19bd3e"
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
