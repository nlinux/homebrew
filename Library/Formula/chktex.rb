require 'formula'

class Chktex < Formula
  homepage 'http://www.nongnu.org/chktex/'
  url 'http://download.savannah.gnu.org/releases/chktex/chktex-1.7.1.tar.gz'
  sha1 'ed94b96ed8ce65fb1cef1b5fc019045c5b2dd8a8'

  def install
    system "./configure", "--prefix=#{prefix}"
    system "make install"
  end

  def caveats
    "chktex requires a version of TeX, such as TeX Live or MacTeX."
  end
end
