require "formula"

class Marketo < Formula
  homepage "https://github.com/sadhen/marketo"

  head 'https://github.com/sadhen/marketo.git'

  depends_on "cmake" => :build
  depends_on "boost"
  depends_on "qt5"
  depends_on "haraldf/kf5/kf5-ki18n"
  depends_on "haraldf/kf5/kf5-ktexteditor"
  depends_on "haraldf/kf5/kf5-kxmlgui"
  depends_on "haraldf/kf5/kf5-kcoreaddons"

  def install
    args = std_cmake_args

    system "cmake", ".", *args
    system "make", "install"
    prefix.install "install_manifest.txt"
  end
end
