class Dairo < Formula
  desc "Official Dairo command-line interface"
  homepage "https://dairo.app"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dairo-app/dairo-cli/releases/download/v0.1.0/dairo-aarch64-apple-darwin.tar.gz"
      sha256 "0963e76c249cb3a292ae174aa83ac2959ed5baae5ba4c1195a1a07ec6f1c7ffa"

      def install
        bin.install "dairo" => "dairo"
      end
    end

    on_intel do
      url "https://github.com/dairo-app/dairo-cli/releases/download/v0.1.0/dairo-x86_64-apple-darwin.tar.gz"
      sha256 "addc940281afcab3ec4c2c93d9d5d333847228148ad488a0b1508e2aad23ed06"

      def install
        bin.install "dairo" => "dairo"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dairo-app/dairo-cli/releases/download/v0.1.0/dairo-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8dc1c808968dcd97c56f1f52241e4c95b031f083d0173507f01feec6284923d2"

      def install
        bin.install "dairo" => "dairo"
      end
    end

    on_intel do
      url "https://github.com/dairo-app/dairo-cli/releases/download/v0.1.0/dairo-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "886cf341927b49bd12783f69eb2c74a38c1484d40b6c6cc8377be4be2a7d4f0b"

      def install
        bin.install "dairo" => "dairo"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dairo --version")
  end
end

