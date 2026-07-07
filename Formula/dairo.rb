class Dairo < Formula
  desc "Official Dairo command-line interface"
  homepage "https://dairo.app"
  version "0.0.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dairo-app/dairo-cli/releases/download/v0.0.7/dairo-aarch64-apple-darwin.tar.gz"
      sha256 "c8b8ef066731e5d5aa7bf909a2e457c02eee5971bca922e50357f67355117a37"

      def install
        bin.install "dairo" => "dairo"
      end
    end

    on_intel do
      url "https://github.com/dairo-app/dairo-cli/releases/download/v0.0.7/dairo-x86_64-apple-darwin.tar.gz"
      sha256 "2f20923cee1f965be31be21d46430bd3e7f44364f90737eb6a6a2dc65830ce74"

      def install
        bin.install "dairo" => "dairo"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dairo-app/dairo-cli/releases/download/v0.0.7/dairo-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b708f5f8116738c747202d042af0d198513f70b121580b1d4edb8341e563e324"

      def install
        bin.install "dairo" => "dairo"
      end
    end

    on_intel do
      url "https://github.com/dairo-app/dairo-cli/releases/download/v0.0.7/dairo-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "654f0edb5f42d161baeb1303d2f7b4bd8f5d7a0c7e896481657763486a0e7582"

      def install
        bin.install "dairo" => "dairo"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dairo --version")
  end
end

