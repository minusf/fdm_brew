class Tdb < Formula
  desc "Trivial database library"
  homepage "https://tdb.samba.org"
  url "https://www.samba.org/ftp/tdb/tdb-1.4.8.tar.gz"
  sha256 "8434c9c857d13ce3fa8466f75601f25c3693676b36919f159e0ad6121baf5ce8"

  depends_on "docbook" => :build
  depends_on "docbook-xsl" => :build
  depends_on "python" => :build

  def install
    ENV["XML_CATALOG_FILES"] = "#{etc}/xml/catalog"

    system "./configure", "--prefix=#{prefix}", "--disable-rpath"
    system "make", "test"
    system "make", "install"
  end
end
