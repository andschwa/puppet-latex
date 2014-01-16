class latex {

  $packages = [ 'texlive-latex-recommended', 'texlive-latex-extra', 'texlive-fonts-recommended', ]

  if $lsbdistrelease < 13.04 {
    apt::ppa { 'ppa:texlive-backports/ppa': }
  }
  
  package { $packages: 
    ensure => latest,
  }
  
}
