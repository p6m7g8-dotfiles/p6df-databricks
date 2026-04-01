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
# Function: p6df::modules::databricks::external::brews()
#
#>
######################################################################
p6df::modules::databricks::external::brews() {

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

  p6_python_uv_tool_install "databricks-mcp"

  p6df::modules::anthropic::mcp::server::add "databricks" "uvx" "databricks-mcp"
  p6df::modules::openai::mcp::server::add "databricks" "uvx" "databricks-mcp"

  p6_return_void
}

######################################################################
#<
#
# Function: words databricks $DATABRICKS_HOST = p6df::modules::databricks::profile::mod()
#
#  Returns:
#	words - databricks $DATABRICKS_HOST
#
#  Environment:	 DATABRICKS_HOST
#>
######################################################################
p6df::modules::databricks::profile::mod() {

  p6_return_words 'databricks' "$DATABRICKS_HOST"
}
