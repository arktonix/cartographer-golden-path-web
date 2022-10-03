load("@ytt:data", "data")
load("@ytt:assert", "assert")

def config_writer():
  if data.values.gitops.commit_strategy == "pull_request":
    return "config-writer-and-pull-requester-template"
  end
  return "config-writer-template"
end
