class Dairo < Formula
  desc "Official Dairo command-line interface"
  homepage "https://dairo.app"
  version "0.0.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dairo-app/dairo-cli/releases/download/v0.0.13/dairo-aarch64-apple-darwin.tar.gz"
      sha256 "6b60e40a056eb5f2703bb11059cb828d5410a9fd36354e50e3d01ceb599c97b1"

      def install
        bin.install "dairo" => "dairo"
      end
    end

    on_intel do
      url "https://github.com/dairo-app/dairo-cli/releases/download/v0.0.13/dairo-x86_64-apple-darwin.tar.gz"
      sha256 "87feb613a5587ac52e91f58050952db7cf2d49fdb71724e3c9d69ee7df635905"

      def install
        bin.install "dairo" => "dairo"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dairo-app/dairo-cli/releases/download/v0.0.13/dairo-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "eeef8078bcf733ab107f72889a302d2302ddb21de68d78a6a8e41db3828963c3"

      def install
        bin.install "dairo" => "dairo"
      end
    end

    on_intel do
      url "https://github.com/dairo-app/dairo-cli/releases/download/v0.0.13/dairo-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "416480bd9011bdf33fc70847a6613f4bfa4983445b06dcf6572022530873b2e2"

      def install
        bin.install "dairo" => "dairo"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dairo --version")
  end
end

