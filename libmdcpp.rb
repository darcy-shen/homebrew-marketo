require "formula"

class Libmdcpp < Formula
  homepage "https://github.com/sadhen/libmdcpp"
  url "https://github.com/sadhen/libmdcpp/archive/v0.2.0.tar.gz"
  sha256 "4292bbe6892c4631c0f521fea375a57ce5c6177a93a03545a3ef7ec70817c345"
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
