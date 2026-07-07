class Dairo < Formula
  desc "Official Dairo command-line interface"
  homepage "https://dairo.app"
  version "0.0.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dairo-app/dairo-cli/releases/download/0.0.6/dairo-aarch64-apple-darwin.tar.gz"
      sha256 "c14cff933c9fb2df78b54f1711688c57b17ef5e1e145ae62f72830c8a2f29589"

      def install
        bin.install "dairo" => "dairo"
      end
    end

    on_intel do
      url "https://github.com/dairo-app/dairo-cli/releases/download/0.0.6/dairo-x86_64-apple-darwin.tar.gz"
      sha256 "742e09df3990aa5caff405bca73e5a307c2f74b5c5376ceb574a0f366876109e"

      def install
        bin.install "dairo" => "dairo"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dairo-app/dairo-cli/releases/download/0.0.6/dairo-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "89e5fd32857556e202f91702db16bc3845c967ffefc087d715d3026213ce6b99"

      def install
        bin.install "dairo" => "dairo"
      end
    end

    on_intel do
      url "https://github.com/dairo-app/dairo-cli/releases/download/0.0.6/dairo-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f6d77c5e8232e5416f9f77a621df3920cbed9538d258f1a3e0dcb07f5fe0baeb"

      def install
        bin.install "dairo" => "dairo"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dairo --version")
  end
end

