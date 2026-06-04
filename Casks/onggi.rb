cask "onggi" do
  version "0.1.0-alpha.1"
  sha256 "13ddd054bb74f8defa73fc021365a24c7c372ec59935124d9b7c0bacbccc7502"

  url "https://github.com/sososogoa/Onggi/releases/download/v#{version}/Onggi-#{version}.zip"
  name "Onggi"
  name "옹기"
  desc "Korean launcher for Windows Steam games on Apple Silicon Macs"
  homepage "https://github.com/sososogoa/Onggi"

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
