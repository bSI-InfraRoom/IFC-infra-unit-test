#!/usr/bin/env sh

# Originally from https://github.com/latex3/latex3

# This script is used for building LaTeX files using Travis
# A minimal current TL is installed adding only the packages that are
# required

# See if there is a cached version of TL available
export PATH=/tmp/texlive/bin/x86_64-linux:$PATH

#tlmgr uninstall --all --force

#if ! command -v texlua > /dev/null; then
  # Obtain TeX Live
  wget http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz
  tar -xzf install-tl-unx.tar.gz
  cd install-tl-20*

  ls -la

  # Install a minimal system
  ./install-tl --profile=../.github/workflows/texlive.profile

  cd ..
  rm install-tl-unx.tar.gz
#fi

# Update the TL install but add nothing new
#tlmgr update --self --all --no-auto-install

# Just including texlua so the cache check above works
tlmgr install luatex

# We specify the directory in which it is located texlive_packages
tlmgr install $(sed 's/\s*#.*//;/^\s*$/d' .github/workflows/texlive_packages)

# Keep no backups (not required, simply makes cache bigger)
tlmgr option -- autobackup 0

# installing xindy (is not included in TexLive)
# https://github.com/xu-cheng/latex-action/issues/32#issuecomment-626086551
#wget https://sourceforge.net/projects/xindy/files/xindy-source-components/2.4/xindy-kernel-3.0.tar.gz
#tar xf xindy-kernel-3.0.tar.gz
#cd xindy-kernel-3.0/src
#apk add make
#apk add clisp --repository=http://dl-cdn.alpinelinux.org/alpine/edge/community
#make
#cp -f xindy.mem /tmp/texlive/bin/x86_64-linux/
#cd ../../
#apt-get install xindy
