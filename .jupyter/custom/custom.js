const waitForJupyter = new Promise((resolve, reject) => {
	setTimeout(() => {
		if (Jupyter && Jupyter.keyboard_manager) {
			resolve(Jupyter);
		}
	}, 1000)
})

waitForJupyter.then(() => {
	Jupyter.notebook.keyboard_manager.edit_shortcuts._shortcuts["ctrl-`"] = "jupyter-notebook:enter-command-mode"
});
