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

.ONESHELL:
