class Dairo < Formula
  desc "Official Dairo command-line interface"
  homepage "https://dairo.app"
  version "0.0.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dairo-app/dairo-cli/releases/download/v0.0.11/dairo-aarch64-apple-darwin.tar.gz"
      sha256 "79291efece96cd232ad4c9ca8dad488df2aee96650759733052407b1d90067b8"

      def install
        bin.install "dairo" => "dairo"
      end
    end

    on_intel do
      url "https://github.com/dairo-app/dairo-cli/releases/download/v0.0.11/dairo-x86_64-apple-darwin.tar.gz"
      sha256 "89fa3c86b9a3dac8b19f70b4570a36ac3fb9a56b8f37f784a737ab20306bbece"

      def install
        bin.install "dairo" => "dairo"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dairo-app/dairo-cli/releases/download/v0.0.11/dairo-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cf4016fa17c3ac5006d8f61dd6e0feb62c03a6d1461dd38572fcd760954203ac"

      def install
        bin.install "dairo" => "dairo"
      end
    end

    on_intel do
      url "https://github.com/dairo-app/dairo-cli/releases/download/v0.0.11/dairo-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ef6f6d10110571437d967683f3ca862763b3e2c2a45ea1f8c93a5dd6cd40b223"

      def install
        bin.install "dairo" => "dairo"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dairo --version")
  end
end

