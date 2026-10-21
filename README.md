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
