# homebrew-devtools

Homebrew Tap (a.k.a. repository) for Phase2 DevTools

## How to use this Tap

To get access to all this Tap has to offer, you need to, well, tap it.

  `brew tap phase2/devtools`

Once tapped, you can use the formula here to install DevTools and the required 
Docker dependencies.  We include the Docker formula in here because Homebrew 
does not contain a native facility to install older versions of a formula. It's
latest or nothing.  This Tap will contain formula for the versions of the 
Docker tools that are compatible with current version of DevTools.

## To install DevTools

  `brew install devtools`

This will get you the `devtools` binary.  However you will likely need to
install the various Docker formula to get the proper versions of Docker 
tools for DevTools. You can do so like...

  ```
  brew install phase2/devtools/docker
  brew install phase2/devtools/docker-machine
  brew install phase2/devtools/docker-compose
  ```

## Upgrading DevTools

If a new version of DevTools is released you need to do the following to upgrade.

  ```
  brew update
  brew upgrade devtools
  ```

## Troubleshooting

To help troubleshoot your devtools installation run the following command:

  `brew doctor`

If you need to enable a specific/proper version of any of these formula you can 
use this command, for example, to explicitly use the 0.5.4 version of docker-machine.

  `brew switch docker-machine 0.5.4`
