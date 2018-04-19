class Adocb < Formula
  desc "AsciiDoc Builder"
  homepage "https://github.com/m-click/adocb"
  url "https://github.com/m-click/adocb/archive/master.zip"
  version "d97c5b3"
  sha256 "733314f3c3f2b10601bee162caebf4761761c8093ca4d73a4695c9f8725a868c"
  depends_on "asciidoctor"
  depends_on "graphviz"

  def install
      bin.install "adocb"
  end
end
