# fix locale
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8

export JAVA_HOME="{{ java_home }}"
export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_SCRIPT={{ virtualenvwrapper_script }}
export VIRTUALENVWRAPPER_PYTHON="$(command \which python3)"
source {{ virtualenwrapper_lazy }}