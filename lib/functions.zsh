function __help() {
  echo "$SCRIPT_NAME - Checkout a specific git branch"
  echo
  echo "Usage:"
  echo "  $SCRIPT_NAME COMMAND"
  echo
  echo  "Commands:"
  echo "  local    Checkout a local git branch"
  echo "  remote   Checkout a remote git branch"
}

function selectAndCheckoutBranch() {
  echo "Select branch to switch to:"
  selectionArray=( "$@" )
  simple-select "${selectionArray[@]}"
  selectedBranch="${selectionArray[@]:$?:1}"

  git checkout $selectedBranch
}
