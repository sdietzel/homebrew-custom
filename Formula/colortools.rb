class Colortools < Formula
  desc "Convert, import and export MacOS Color Picker (NSColorList) palettes"
  homepage "https://github.com/ramonpoca/ColorTools"
  url "https://github.com/ramonpoca/ColorTools/archive/0.3.tar.gz"
  sha256 "d7d852946a66782bebe7973ff62ed45389f984b72093dc3509ad8b1cc5a32638"

  def install
    xcodebuild "SYMROOT=build"
    bin.install "build/Release/Ase2Clr" => "ase2clr"
    bin.install "build/Release/Clr2Ase" => "clr2ase"
    bin.install "build/Release/Clr2Obj" => "clr2obj"
    bin.install "build/Release/Html2Clr" => "html2clr"
  end

  test do
    program_should_run_and_print_usage "ase2clr"
    program_should_run_and_print_usage "clr2ase"
    program_should_run_and_print_usage "clr2obj"
    program_should_run_and_print_usage "html2clr"
  end

  private

  def program_should_run_and_print_usage(cmd)
    assert_match "Usage:", shell_output("#{bin}/#{cmd} 2>&1 | grep Usage")
  end
end
