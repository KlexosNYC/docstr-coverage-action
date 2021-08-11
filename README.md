# docstr-coverage
Github Action for running the docstr-coverage python package

## Configuration
### Available options for use in action 'with'
- source_dir 
  - Directory containing python code
  - **Required** (str) Example: /src
            
- failure_percentage 
  - Coverage percentage required to be considered passing
  - **Optional** (int) Defaults to 100
  
- skip_magic  
  - Ignore all magic methods (except __init__)
  - **Optional** (bool) Defaults to true

- skip_init:
  - Ignore all __init__ methods
  - **Optional** (bool) Defaults to true

- skip_file_doc:
  - Ignore module docstrings (at the top of files)
  - **Optional** (bool) Defaults to true

- skip_private:
  - Ignore private functions (starting with a single underscore)
  - **Optional** (bool) Defaults to true

- skip_class_def:
  - Ignore docstrings of class definitions
  - **Optional** (bool) Defaults to true

- accept_empty:
  - Exit with code 0 if no Python files are found (default: exit code 1)
  - **Optional** (bool) Defaults to false

- exclude:
  - Filepath pattern to exclude from analysis
  - **Optional** (str) Defaults to ''

- verbose:
  - Set verbosity level (0-3)
  - **Optional** (int) Defaults to 3

- badge:
  - Generate a docstring coverage percent badge as an SVG saved to a given filepath
  - **Optional** (bool) Defaults to false

- follow_links:
  - Follow symlinks
  - **Optional** (bool) Defaults to false

- percentage_only:
  - Output only the overall coverage percentage as a float, silencing all other logging
  - **Optional** (bool) Defaults to false

## Example
```
name: Check docstring coverage percentage
on: [push]

jobs:
  docstr-coverage:
    runs-on: ubuntu-latest
    name: Run docstr-coverage example
    steps:
      - name: Checkout
        uses: actions/checkout@v2

      - name: docstr-coverage should fail
        uses: skazazes-work/docstr-coverage@v1
        with:
          source_dir: /src
```
