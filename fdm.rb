class Fdm < Formula
  desc "Fetch and deliver mail based on a ruleset"
  homepage "https://github.com/nicm/fdm"
  url "https://github.com/nicm/fdm/releases/download/2.2/fdm-2.2.tar.gz"
  sha256 "53aad117829834e21c1b9bf20496a1aa1c0e0fb98fe7735e1e73314266fb6c16"

  depends_on "openssl"
  depends_on "pcre2"
  depends_on "tdb"

  def install
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--enable-pcre2",
                          "--prefix=#{prefix}"
    system "make", "install"
    doc.install "MANUAL"
  end

  test do
    system "false"
  end
end
