Execute `npx agent-diff-view $ARGUMENTS` using the bash tool and wait for it to exit.

This command opens a browser-based diff viewer — it **blocks intentionally** while the user annotates specific hunks with review comments. It exits on its own once they submit. Do not interrupt it or time out early.

When it exits, its stdout contains a structured prompt mapping each comment to its exact file and hunk. Address every comment in that output.
