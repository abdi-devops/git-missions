#!/bin/bash
echo "----- GitHub Actions Workflow Run -----"

CURRENT_TIME=$(date)
echo "Current time: $CURRENT_TIME"

if [[ "$GITHUB_REF" == refs/heads/feature-* ]] then
	echo "This is a feature branch push."
elif [[ "$GITHUB_EVENT_NAME" == "pull_request" ]]; then
	echo "This is a pull request into main."
else
	echo "Other orkflow trigger."
fi

echo "Job completed!"
