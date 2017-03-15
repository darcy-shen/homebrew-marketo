require "formula"

class Libmdcpp < Formula
  homepage "https://github.com/sadhen/libmdcpp"

  head 'https://github.com/sadhen/libmdcpp.git'

  depends_on "cmake" => :build
  depends_on "boost"

  def install
    args = std_cmake_args

    system "cmake", ".", *args
    system "make", "install"
    prefix.install "install_manifest.txt"
  end
end
