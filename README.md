## Introduction
Modular LaTeX preamble and build configuration for my study notes of books, courses and papers.

## Installation
```bash
git submodule add https://github.com/gapry/LaTeX-Common.git common
```

## Usage
In `main.tex`, define the following macros **before** `\input{common/newcommand}`. All are required.

| Macro          | Description                                  | Example                                   |
|----------------|----------------------------------------------|-------------------------------------------|
| `\sourcetype`  | Kind of source: `book`, `course` or `paper`  | `course`                                  |
| `\sourcetitle` | Title of the source                          | `Signals and Systems`                     |
| `\sourceurl`   | Link to the source                           | `https://ocw.mit.edu/`                    |
| `\authorname`  | Your name, shown in the footer and title     | `Gapry`                                   |
| `\authorurl`   | Link to your profile                         | `https://github.com/gapry`                |

### Example
```latex
\newcommand{\sourcetype}{course}
\newcommand{\sourcetitle}{Signals and Systems}
\newcommand{\sourceurl}{https://ocw.mit.edu/courses/res-6-007-signals-and-systems-spring-2011/}
\newcommand{\authorname}{Gapry}
\newcommand{\authorurl}{https://github.com/gapry}

\input{common/newcommand}
```
