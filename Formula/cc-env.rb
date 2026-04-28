class CcEnv < Formula
  desc "CLI tool for managing Claude Code runtime environment configurations"
  homepage "https://github.com/lkangd/cc-env"
  url "https://registry.npmjs.org/@lkangd/cc-env/-/cc-env-1.2.1.tgz"
  sha256 "610248fe13497592ff4380f010d494ad7f78f55ceb71571a19d5834d9d3f58bf"
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
