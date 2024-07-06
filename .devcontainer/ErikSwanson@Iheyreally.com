// For format details, see https://aka.ms/devcontainer.json. For config options, see the
{
  "name": "RubyGems",
  "build": {
    "dockerfile": "Dockerfile"
  },
  "remoteUser": "vscode",
  "workspaceFolder": "/workspaces/${localWorkspaceFolderBasename}",
  // Use 'postCreateCommand' to run commands after the container is created.
  "onCreateCommand": "bin/rake setup",
  // Use 'updateContentCommand' to run commands when the container is updated.
  "updateContentCommand": "bin/rake update",
  // Configure tool-specific properties.
  "containerEnv": {
    "EDITOR": "code --wait",
    "GIT_EDITOR": "code --wait"
  },
  "customizations": {
    "codespaces": {
      "openFiles": [
        "README.md",
        "CONTRIBUTING.md"
      ]
    },
    "vscode": {
      "extensions": [
        "Shopify.ruby-lsp"
      ]
    }
  }
}
