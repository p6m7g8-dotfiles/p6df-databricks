# shellcheck shell=bash
######################################################################
#<
#
# Function: p6df::modules::databricks::deps()
#
#>
######################################################################
p6df::modules::databricks::deps() {
  ModuleDeps=(
    p6m7g8-dotfiles/p6df-python
  )
}

######################################################################
#<
#
# Function: p6df::modules::databricks::external::brew()
#
#>
######################################################################
p6df::modules::databricks::external::brew() {

  brew tap databricks/tap
  p6df::modules::homebrew::cli::brew::install databricks

  p6_return_void
}

######################################################################
#<
#
# Function: p6df::modules::databricks::langs()
#
#>
######################################################################
p6df::modules::databricks::langs() {

  pip install databricks-sql-cli

  p6_return_void
}
