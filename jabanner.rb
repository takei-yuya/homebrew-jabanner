require "formula"

class Jabanner < Formula
  homepage "https://github.com/takei-yuya/jabanner"
  url "https://github.com/takei-yuya/jabanner/releases/download/v0.1.1/jabanner-0.1.1.tar.gz"
  sha256 "f64fcc41b09e283fd800c5123b3924a061bb9f275e3c5172c90f1620fe55d3c8"

  depends_on 'gd' => :build

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make", "install"
  end

  test do
    system "false"
  end
end
