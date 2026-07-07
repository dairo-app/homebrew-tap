class Dairo < Formula
  desc "Official Dairo command-line interface"
  homepage "https://dairo.app"
  version "0.0.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dairo-app/dairo-cli/releases/download/0.0.5/dairo-aarch64-apple-darwin.tar.gz"
      sha256 "ca48b9db4154c4b5ea2976b0d0cf591898e2466ea02bce04719a9c84fda2db4f"

      def install
        bin.install "dairo" => "dairo"
      end
    end

    on_intel do
      url "https://github.com/dairo-app/dairo-cli/releases/download/0.0.5/dairo-x86_64-apple-darwin.tar.gz"
      sha256 "82693cd373085fef7eaab75d4aca6081cf2d14a91702f9e8a764fcd6287efe93"

      def install
        bin.install "dairo" => "dairo"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dairo-app/dairo-cli/releases/download/0.0.5/dairo-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9b60f93531546f1169d5d91dc078f8a76da5db11132322a6596c0b2b14f1b86e"

      def install
        bin.install "dairo" => "dairo"
      end
    end

    on_intel do
      url "https://github.com/dairo-app/dairo-cli/releases/download/0.0.5/dairo-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d284c39558cb20a9ad055526469459b08524333e2888a350d8762ce83a613a93"

      def install
        bin.install "dairo" => "dairo"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dairo --version")
  end
end

