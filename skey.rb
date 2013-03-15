require 'formula'

class Skey < Formula
  homepage ''
  url 'ftp://ftp.netbsd.org/pub/pkgsrc/distfiles/skey-1.1.5.tar.bz2'
  sha1 'd55fb286098900cdf3eb6b174a720a06c722312a'

  def patches
    DATA
  end

  def install
    system "./configure", "--prefix=#{prefix}", "--mandir=#{man}"
    system "make"
    system "make install"
  end
end


__END__
diff --git a/Makefile.in b/Makefile.in
index 43d381f..2834997 100644
--- a/Makefile.in
+++ b/Makefile.in
@@ -106,7 +106,7 @@ install: ${TARGETS}
 	${INSTALL_MAN} skeyinit.[01].out $(DESTDIR)$(mandir)/$(mansubdir)1/skeyinit.1
 	${INSTALL_MAN} skeyinfo.[01].out $(DESTDIR)$(mandir)/$(mansubdir)1/skeyinfo.1
 	${INSTALL_MAN} skeyaudit.[01].out $(DESTDIR)$(mandir)/$(mansubdir)1/skeyaudit.1
-	${INSTALL_MAN} skeyprune.[08].out $(DESTDIR)$(mandir)/$(mansubdir)8/skeyprune.1
+	${INSTALL_MAN} skeyprune.[08].out $(DESTDIR)$(mandir)/$(mansubdir)8/skeyprune.8
 	${TOUCH} ${DESTDIR}${sysconfdir}/skeykeys
 
 uninstallall: uninstall
