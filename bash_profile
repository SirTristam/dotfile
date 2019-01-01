# Add Homebrew `/usr/local/bin` and User `~/bin` to the `$PATH`
# PATH=/usr/local/bin:${PATH}:/usr/local/anaconda3/bin
PATH=$HOME/bin:/usr/local/bin:${PATH}
export PATH

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
  [ -r "$file" ] && source "$file"
done
unset file

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob;

# Append to the Bash history file, rather than overwritting it.
shopt -s histappend;

# Autocorrect typos in path names when using `cd`
shopt -s cdspell;

export PATH="/usr/local/sbin:$PATH"

##
# Your previous /Users/christopherbeckenbach/.bash_profile file was backed up as /Users/christopherbeckenbach/.bash_profile.macports-saved_2017-04-20_at_09:04:03
##

# MacPorts Installer addition on 2017-04-20_at_09:04:03: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

# Python Virtual Environments Wrapper setup
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python2
export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_VIRTUALENV_ARGS='--no-site-packages'
export PIP_VIRTUALENV_BASE=$WORKON_HOME
export PIP_RESPECT_VIRTUALENV=true
if [[ -r /usr/local/bin/virtualenvwrapper.sh ]]; then
    source /usr/local/bin/virtualenvwrapper.sh
else
    echo "WARNING: Can't find virtualenvwrapper.sh"
fi

# Export location of compiler so we can complie with other the default clang.
export CXX=/usr/local/Cellar/gcc/7.3.0/bin/g++-7
export GCC=/usr/local/Cellar/gcc/7.3.0/bin/g++-7
export CC=/usr/local/Cellar/gcc/7.3.0/bin/gcc-7

# Following must be last after everything that alters the prompt.
eval "$(direnv hook bash)"

# added by Anaconda3 5.3.0 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$(CONDA_REPORT_ERRORS=false '/Users/christopherbeckenbach/anaconda3/bin/conda' shell.bash hook 2> /dev/null)"
if [ $? -eq 0 ]; then
    \eval "$__conda_setup"
else
    if [ -f "/Users/christopherbeckenbach/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/christopherbeckenbach/anaconda3/etc/profile.d/conda.sh"
        CONDA_CHANGEPS1=false conda activate base
    else
        \export PATH="/Users/christopherbeckenbach/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda init <<<
