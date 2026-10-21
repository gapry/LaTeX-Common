## Introduction
Modular LaTeX preamble and build configuration for my study notes of books, courses and papers.

## Submodule

#### Installation
```bash
git submodule add https://github.com/gapry/LaTeX-Common.git common
```

#### Set URL
```bash
git submodule set-url -- common git@github.com:gapry/LaTeX-Common.git
git submodule sync

git add .gitmodules
git commit -S -m "submodule: change url from https to ssh"
git push origin main
```

#### Sync
```bash
git submodule update --remote common
git add common
git commit -S -m "submodule: sync"
git push origin main
```

#### Update
```bash
cd common/
git checkout main
git add .
git commit -S -m "feat: xxx"
git push origin main

cd ..
git add common
git commit -S -m "submodule: add feat XXX"
git push origin main
```

## Usage

#### 1. Project Structure 

It is recommended to split your project into 3 LaTeX files.

```bash
your-notes/
├── main.tex     # entry point
├── preamble.tex # import common modules
├── info.tex     # your metadata
├── Makefile     # build config 
├── common/      # submodule
└── build/       # generated pdf
```

#### 2. Define Metadata
In `info.tex`, define the following macros. All are required and must be defined **before** `\input{common/newcommand}`.

| Macro          | Description                                  | Example                                   |
|----------------|----------------------------------------------|-------------------------------------------|
| `\sourcetype`  | Kind of source: `book`, `course` or `paper`  | `course`                                  |
| `\sourcetitle` | Title of the source                          | `Signals and Systems`                     |
| `\sourceurl`   | Link to the source                           | `https://ocw.mit.edu/`                    |
| `\authorname`  | Your name, shown in the footer and title     | `Gapry`                                   |
| `\authorurl`   | Link to your profile                         | `https://github.com/gapry`                |

```bash
$ vim info.tex
```
```latex
\newcommand{\sourcetype}{course}
\newcommand{\sourcetitle}{Signals and Systems}
\newcommand{\sourceurl}{https://ocw.mit.edu/courses/res-6-007-signals-and-systems-spring-2011/}
\newcommand{\authorname}{Gapry}
\newcommand{\authorurl}{https://github.com/gapry}
```

#### 3. Load Common Modules
```bash
vim preamble.tex
```
```latex
\input{info}
\input{common/layout}
\input{common/math}
\input{common/tikz}
\input{common/code}
\input{common/box}
\input{common/newcommand}
\input{common/hyperref}
```

#### 4. Main Entry
```bash
vim main.tex
```
```latex
\documentclass[11pt]{report}
\usepackage{import}
\input{preamble}
\begin{document}
\maketitle
\end{document}
```

#### 5. Build Config
```bash
vim Makefile
```
```make
DIR_BUILD = build
FILENAME  = main

include common/common.mk
```
