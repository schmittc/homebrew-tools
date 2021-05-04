class Latexpand < Formula
  desc "Tool to flatten LaTeX file by expanding \include, \input"
  homepage "https://gitlab.com/latexpand/latexpand"
  url "https://gitlab.com/latexpand/latexpand.git",
      tag:      "v1.6",
      revision: "ce086093a2413c99af11cc08aceab8e5483d65ff"
  license "BSD-2-Clause"
  head "https://gitlab.com/latexpand/latexpand.git"

  depends_on "perl"

  def install
    bin.install "latexpand"
  end

  test do
    system "latexpand", "-h"
  end
end
