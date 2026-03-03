class Wsh < Formula
  desc "The Web Shell — an API for your terminal"
  homepage "https://github.com/deepgram/wsh"
  version "0.0.0"
  license "ISC"

  # This formula is auto-updated by scripts/release.sh in the wsh repo.
  # Do not edit manually.

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/deepgram/wsh/releases/download/v0.0.0/wsh-aarch64-apple-darwin"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    else
      url "https://github.com/deepgram/wsh/releases/download/v0.0.0/wsh-x86_64-apple-darwin"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/deepgram/wsh/releases/download/v0.0.0/wsh-aarch64-linux-musl"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    else
      url "https://github.com/deepgram/wsh/releases/download/v0.0.0/wsh-x86_64-linux-musl"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  def install
    bin.install stable.url.split("/").last => "wsh"

    generate_completions_from_executable(bin/"wsh", "completions")
  end

  service do
    run [opt_bin/"wsh", "server"]
    keep_alive true
    log_path var/"log/wsh.log"
    error_log_path var/"log/wsh.log"
  end

  test do
    assert_match "wsh", shell_output("#{bin}/wsh --version")
  end
end
