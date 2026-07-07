class Dairo < Formula
  desc "Official Dairo command-line interface"
  homepage "https://dairo.app"
  version "0.0.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dairo-app/dairo-cli/releases/download/0.0.4/dairo-aarch64-apple-darwin.tar.gz"
      sha256 "a04b1ae4cdff9e95be9660a2dd95fb0d521b9fbb5d39074a697c3d7e5649501c"

      def install
        bin.install "dairo" => "dairo"
      end
    end

    on_intel do
      url "https://github.com/dairo-app/dairo-cli/releases/download/0.0.4/dairo-x86_64-apple-darwin.tar.gz"
      sha256 "76188c8fb78f6ae4f75ecb25c709d322d4312d1e13970d3bcc69875b3c2269ed"

      def install
        bin.install "dairo" => "dairo"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dairo-app/dairo-cli/releases/download/0.0.4/dairo-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5c4a0e59a91a9dd0e4aa86230d4dc2a501f09e62a3de8ad24e1eb6d0cd998492"

      def install
        bin.install "dairo" => "dairo"
      end
    end

    on_intel do
      url "https://github.com/dairo-app/dairo-cli/releases/download/0.0.4/dairo-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6a937d8512dd55f5b7ed723839ddfb5940bc55f97a26d2e2fc6310103aaa1c6d"

      def install
        bin.install "dairo" => "dairo"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dairo --version")
  end
end

