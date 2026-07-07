class Dairo < Formula
  desc "Official Dairo command-line interface"
  homepage "https://dairo.app"
  version "0.0.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dairo-app/dairo-cli/releases/download/v0.0.8/dairo-aarch64-apple-darwin.tar.gz"
      sha256 "5d033b385839f33013a6ac64d9a7f3ec73bbc28e741382afb22f10b45dd7499b"

      def install
        bin.install "dairo" => "dairo"
      end
    end

    on_intel do
      url "https://github.com/dairo-app/dairo-cli/releases/download/v0.0.8/dairo-x86_64-apple-darwin.tar.gz"
      sha256 "e020cefb659544b332a7602a423b39240284f2e5280ce94ac1bbed4d2e7bffae"

      def install
        bin.install "dairo" => "dairo"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dairo-app/dairo-cli/releases/download/v0.0.8/dairo-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0e9d1403a3454ef98d219619455a24a182e631fda7a62520e0a84dcfbc34dc4a"

      def install
        bin.install "dairo" => "dairo"
      end
    end

    on_intel do
      url "https://github.com/dairo-app/dairo-cli/releases/download/v0.0.8/dairo-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "19258748960783beac15a0e55efafcaafaf7fe7feb7949248404c84fe604feb8"

      def install
        bin.install "dairo" => "dairo"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dairo --version")
  end
end

