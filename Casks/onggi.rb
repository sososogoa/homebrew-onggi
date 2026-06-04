cask "onggi" do
  version "0.1.0-alpha.1"
  sha256 "ac00508a1cd71ea645ecb6136428a76207188a3af973ba41641b98af14328fff"

  url "https://github.com/sososogoa/homebrew-onggi/releases/download/v#{version}/Onggi-#{version}.zip"
  name "Onggi"
  name "옹기"
  desc "Korean launcher for Windows Steam games on Apple Silicon Macs"
  homepage "https://github.com/sososogoa/homebrew-onggi"

  livecheck do
    url :homepage
    regex(%r{href=.*?/releases/tag/v?(\d+(?:\.\d+)+(?:[-.][A-Za-z0-9.]+)*)}i)
  end

  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "Onggi.app"

  uninstall quit: "dev.khs.onggi"

  caveats <<~EOS
    Onggi v#{version} is an unsigned alpha build. If macOS blocks the first launch,
    open System Settings > Privacy & Security and allow Onggi.

    User data under ~/Library/Application Support/Onggi is preserved
    when uninstalling this cask.
  EOS
end
