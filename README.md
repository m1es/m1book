# m1book

## Installation

To install `m1book` on your machine:

1. Clone this repository.
2. Change directory to the cloned repository and run the installation script (`./install.sh`)
3. Restart your terminal, afterwards the `m1book` command is available on your machine.

## Getting started

## Starting a new book project

1. Change directory to a folder you want to store your new project in.
2. Run: `m1book new <name-of-book>` to create a new folder named `<name-of-book>`, which contains an empty book project

## Generating the book

1. Change directory to the folder of your book project
2. Run: `m1book generate`
3. Find the generated book in `build/output.pdf`

## Tweaking the book

1. See `config.yml` to change default values like the title of the book
2. Take a look at the files inside `src/front` and `src/main` to learn how to structure your book

## Dependencies

- [Ruby](https://www.ruby-lang.org/en/downloads/)
- [Pandoc](https://pandoc.org/)

The following Latex packages are required:

- collection-fontsrecommended
- sectsty

These packages can be installed by running:

- `tlmgr install collection-fontsrecommended`
- `tlmgr install sectsty`
