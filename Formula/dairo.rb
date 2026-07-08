class Dairo < Formula
  desc "Official Dairo command-line interface"
  homepage "https://dairo.app"
  version "0.0.12"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dairo-app/dairo-cli/releases/download/v0.0.12/dairo-aarch64-apple-darwin.tar.gz"
      sha256 "152c3e9dd2cc7b597b7b603fa38c063657cef29b698ff1d8ff5bd5fdd5aea5a9"

      def install
        bin.install "dairo" => "dairo"
      end
    end

    on_intel do
      url "https://github.com/dairo-app/dairo-cli/releases/download/v0.0.12/dairo-x86_64-apple-darwin.tar.gz"
      sha256 "f8ab315cc76a804e61e8d462d22781eb528410321a9a8af408b3132a2acd77c7"

      def install
        bin.install "dairo" => "dairo"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dairo-app/dairo-cli/releases/download/v0.0.12/dairo-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "39205b08137d905ffb86c68ee4d6362912e708d2af16133ce9dd18d47f681621"

      def install
        bin.install "dairo" => "dairo"
      end
    end

    on_intel do
      url "https://github.com/dairo-app/dairo-cli/releases/download/v0.0.12/dairo-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d643ffec9fbea3c64698433ae14a1e557d032beb68066ed2216ddcffaa7fddd7"

      def install
        bin.install "dairo" => "dairo"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dairo --version")
  end
end

