# fancy-text

A very simple shortcode extension that adds shortcodes for outputing nicely formatted versions of fancy strings (such as LaTeX and BibTeX). Outputs fancy strings in HTML and LaTeX, just emits simple strings of the correct case in other formats. 

## Installation

```
$ quarto install extension quarto-ext/fancy-text
```

This will install the extension under the `_extensions` subdirectory. If you're using version control, you will want to check in this directory.

## Usage

Currently, this extension supports:

```
{{< latex >}}
{{< bibtex >}}
```
