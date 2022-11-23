terraform {
    cloud {
        organization = "techjavelin"

        workspaces {
            name = "iac-github-actions"
        }
    }
}