class Dairo < Formula
  desc "Official Dairo command-line interface"
  homepage "https://dairo.app"
  license "MIT"

  # This formula is populated by the dairo-cli release workflow after the first release tag.
  def install
    odie "Dairo CLI release artifacts have not been published yet."
  end
end
