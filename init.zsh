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

  p6df::core::homebrew::cmd::brew tap databricks/tap
  p6df::core::homebrew::cli::brew::install databricks

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

  uv tool install databricks-sql-cli

  p6_return_void
}

######################################################################
#<
#
# Function: p6df::modules::databricks::mcp()
#
#>
######################################################################
p6df::modules::databricks::mcp() {

  uv tool install databricks-mcp

  p6_return_void
}
