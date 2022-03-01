define commit_hook_task =
	branchName=`git rev-parse --abbrev-ref HEAD`
	githubId=$(echo $branchName | sed -nE 's,[a-z]+/([0-9]+)-.+,\1,p')
	if [ ! -z $githubId ]; then
		git commit -m "[#$githubId]: $msg"
	else
		git commit -m "$msg"
	fi
endef

commit: ; $(value commit_hook_task)

add_module:
	@mkdir -p "modules/$(name)" 
	@mkdir -p "modules/$(name)/resource"
	@mkdir -p "modules/$(name)/data"

	@touch "modules/$(name)/resource/main.tf"
	@touch "modules/$(name)/resource/output.tf"
	@touch "modules/$(name)/resource/variables.tf"

	@touch "modules/$(name)/data/main.tf"
	@touch "modules/$(name)/data/output.tf"
	@touch "modules/$(name)/data/variables.tf"

.ONESHELL:
