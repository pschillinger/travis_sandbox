# FlexBE CI

Continuous integration for FlexBE.

## Usage

Copy the file `.travis.yml` into the root folder of your repo.

Substitute

    before_install:
      - ln -s . ~/flexbe_ci && cd ~

by

    before_install:
      - cd ~
      - git clone https://github.com/FlexBE/flexbe_ci.git

Happy testing!
