require "formula"

class Jabanner < Formula
  homepage "https://github.com/takei-yuya/jabanner"
  url "https://github.com/takei-yuya/jabanner/releases/download/v0.1.1/jabanner-0.1.1.tar.gz"
  sha1 "916a2c2c884ea0ed153e7a6658d0fcf46ac7a7d5"

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
