# FlexBE CI

Continuous integration for FlexBE.

## Usage

Copy the file `.travis.yml` into the root folder of your repo.

Substitute

    before_install:
      - ln -s $PWD ~/flexbe_ci && cd ~
      - source flexbe_ci/setup.bash

by

    before_install:
      - cd ~
      - git clone https://github.com/FlexBE/flexbe_ci.git
      - source flexbe_ci/setup.bash

Happy testing!
