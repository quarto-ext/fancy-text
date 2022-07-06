# fancy-text

A very simple shortcode extension that adds shortcodes for outputing nicely formatted versions of fancy strings (such as LaTeX and BibTeX). Outputs fancy strings in HTML and LaTeX, just emits simple strings of the correct case in other formats. 

## Installation

```
$ quarto install extension quarto-ext/fancy-text
```

This will install the extension under the `_extensions` subdirectory. If you're using version control, you will want to check in this directory.

## Usage

Use shortcodes to get format specific fancy text for certain keywords. Currently, this extension supports:

```
{{< latex >}}
{{< bibtex >}}
```

For example:

```markdown
## Overview of {{< latex >}}

```

Produces:


| pdf | html |
|---|---|
| ![Screen Shot 2022-07-06 at 3 47 17 PM](https://user-images.githubusercontent.com/261654/177630954-bc3e17f1-3bbe-4f35-9a2c-7aae67015f89.png) | ![Screen Shot 2022-07-06 at 3 47 10 PM](https://user-images.githubusercontent.com/261654/177630933-d3d8b819-a564-4fbb-9fce-93fa4236a7f1.png) |









