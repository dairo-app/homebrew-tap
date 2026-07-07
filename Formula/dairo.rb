class Dairo < Formula
  desc "Official Dairo command-line interface"
  homepage "https://dairo.app"
  version "0.0.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dairo-app/dairo-cli/releases/download/v0.0.9/dairo-aarch64-apple-darwin.tar.gz"
      sha256 "9b9ba415042a2fc67713171355b3c41fce243f9303f4bf8273f42ab56788047d"

      def install
        bin.install "dairo" => "dairo"
      end
    end

    on_intel do
      url "https://github.com/dairo-app/dairo-cli/releases/download/v0.0.9/dairo-x86_64-apple-darwin.tar.gz"
      sha256 "2a8c4d5dd4918079615faf8e5fa6e2139900100c80052354d42bc6c5efc3b306"

      def install
        bin.install "dairo" => "dairo"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dairo-app/dairo-cli/releases/download/v0.0.9/dairo-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c9a77094a94fc3fb24954dd74d2fd2c86e0f38ffcb1a88280a0d74cd7d8c64b8"

      def install
        bin.install "dairo" => "dairo"
      end
    end

    on_intel do
      url "https://github.com/dairo-app/dairo-cli/releases/download/v0.0.9/dairo-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c4bc283d61dd33067da343c71929d282a0f216f5805423633eb8edf2ab0842d2"

      def install
        bin.install "dairo" => "dairo"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dairo --version")
  end
end

