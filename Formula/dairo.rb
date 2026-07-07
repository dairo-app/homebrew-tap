class Dairo < Formula
  desc "Official Dairo command-line interface"
  homepage "https://dairo.app"
  version "0.0.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dairo-app/dairo-cli/releases/download/0.0.3/dairo-aarch64-apple-darwin.tar.gz"
      sha256 "86901a4bcb68a3f19df8bd886322ca9bb3c12e66e22cee8774ab781a449ce94a"

      def install
        bin.install "dairo" => "dairo"
      end
    end

    on_intel do
      url "https://github.com/dairo-app/dairo-cli/releases/download/0.0.3/dairo-x86_64-apple-darwin.tar.gz"
      sha256 "71b22ba0946bd9d2f4dae74b1ac06b16ad1296fe0c173255c2a668588cc5d189"

      def install
        bin.install "dairo" => "dairo"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dairo-app/dairo-cli/releases/download/0.0.3/dairo-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d9df34e86899e1d49892d2d20bf5ed01f6a8763ccf6bfe28ae78a27d362fb5a6"

      def install
        bin.install "dairo" => "dairo"
      end
    end

    on_intel do
      url "https://github.com/dairo-app/dairo-cli/releases/download/0.0.3/dairo-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2f1454aada21c30af0bbb503d231fbe3fa59bf91f8842d6b9ec26e7d596888c7"

      def install
        bin.install "dairo" => "dairo"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dairo --version")
  end
end

