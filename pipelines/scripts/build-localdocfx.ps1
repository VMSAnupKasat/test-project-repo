## Walkthrough Part I: Generate a Simple Documentation Website
# https://dotnet.github.io/docfx/tutorial/walkthrough/walkthrough_create_a_docfx_project.html

# docfx init
# docfx init -q

## docfx build
docfx .\docfx.json -o "_docfxsite"

# docfx serve (local)
docfx serve .\_docfxsite\