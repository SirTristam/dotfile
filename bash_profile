# Add Homebrew `/usr/local/bin` and User `~/bin` to the `$PATH`
PATH=/usr/local/bin:${PATH}
PATH=$HOME/bin:${PATH}
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

# Following must be last after everything that alters the prompt.
eval "$(direnv hook bash)"

