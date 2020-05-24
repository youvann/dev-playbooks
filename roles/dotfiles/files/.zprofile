# fix locale
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8

export JAVA_HOME="/Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home"
export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_SCRIPT=$HOME/Library/Python/3.7/bin/virtualenvwrapper.sh
export VIRTUALENVWRAPPER_PYTHON="$(command \which python3)"
source $HOME/Library/Python/3.7/bin/virtualenvwrapper_lazy.sh