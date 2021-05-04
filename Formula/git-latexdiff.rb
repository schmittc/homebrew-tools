class GitLatexdiff < Formula
  desc "Simple but very convenient wrapper around Git and latexdiff"
  homepage "https://gitlab.com/git-latexdiff/git-latexdiff"
  url "https://gitlab.com/git-latexdiff/git-latexdiff.git",
      tag:      "1.6.0",
      revision: "bf4921009de3a32e19a92b467d64a7e45e70eb3d"
  license "BSD-2-Clause"
  head "https://gitlab.com/git-latexdiff/git-latexdiff.git"

  depends_on "asciidoc" => [:build, :test]
  depends_on "git"
  depends_on "latexdiff"

  def install
    system "make", "git-latexdiff.1"
    bin.install "git-latexdiff"
    man1.install "git-latexdiff.1"
  end

  test do
    system "git latexdiff", "-h"
  end
end
