class Dairo < Formula
  desc "Official Dairo command-line interface"
  homepage "https://dairo.app"
  version "0.0.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dairo-app/dairo-cli/releases/download/v0.0.10/dairo-aarch64-apple-darwin.tar.gz"
      sha256 "390ea1f005fbadb01b425c23bfbaab8f83f892f2c01ecc9dc46f0abf9ad3efbc"

      def install
        bin.install "dairo" => "dairo"
      end
    end

    on_intel do
      url "https://github.com/dairo-app/dairo-cli/releases/download/v0.0.10/dairo-x86_64-apple-darwin.tar.gz"
      sha256 "34adba05ec346d318f741fb3c7a7e291ad9caccd4ede45720a79fa1755936bbb"

      def install
        bin.install "dairo" => "dairo"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dairo-app/dairo-cli/releases/download/v0.0.10/dairo-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "521c94ed76ef7433f76f3c7246ce427d2443244bfb9b0c0847ae381e4e1f626b"

      def install
        bin.install "dairo" => "dairo"
      end
    end

    on_intel do
      url "https://github.com/dairo-app/dairo-cli/releases/download/v0.0.10/dairo-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b9dfc60b2fd6991920256e89da1bfa02b028a43b14c8eea247f92d8949da940e"

      def install
        bin.install "dairo" => "dairo"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dairo --version")
  end
end

