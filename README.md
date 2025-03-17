# fcr - Documentation

## Introduction

**fcr** (Fast C++ Compiler and Runner) is a powerful and user-friendly command-line tool designed to simplify the process of compiling and running C++ programs. With sensible defaults and an intuitive interface powered by [Gum CLI](https://github.com/charmbracelet/gum), fcr makes C++ development faster and more enjoyable.

Whether you're working on a small project or experimenting with C++ code, fcr provides a seamless experience with features like interactive file selection, debug mode, and customizable C++ standards.

---

## Features

- **Fast Compilation and Execution**:
  - Compile and run C++ programs with a single command.
  - Supports C++17 and C++20 standards.

- **Interactive File Selection**:
  - Use the `-g` flag to enable interactive file selection with Gum.
  - Automatically detects and lists `.cpp` files in the current directory and subdirectories.

- **Debug Mode**:
  - Enable debug mode with the `-d` flag to include debugging symbols (`-g` flag) in the compiled binary.

- **Verbose Mode**:
  - Use the `-v` flag to enable verbose output, showing all commands being executed.

- **Cleanup Control**:
  - Use the `-n` flag to keep the compiled binary after execution.

- **Gum Integration**:
  - If Gum is installed, fcr provides a beautiful and interactive UI for file selection and output.

---

## Dependencies

Before using fcr, ensure the following dependencies are installed:

1. **G++ (GNU C++ Compiler)**:
   - Required for compiling C++ programs.
   - Install on Ubuntu/Debian:
     ```bash
     sudo apt install g++
     ```
   - Install on macOS:
     ```bash
     brew install gcc
     ```

2. **Gum CLI (Optional)**:
   - Required for the interactive interface.
   - Install using the following command:
     ```bash
     brew install gum
     ```
   - Alternatively, visit the [Gum CLI GitHub page](https://github.com/charmbracelet/gum) for installation instructions.

---

## Installation

You can install fcr directly using a single command. However, the installation method depends on your shell:

### For Bash or Zsh
Run the following command in your terminal:

```bash
curl -fsSL https://raw.githubusercontent.com/gourdian25/fcr/master/install.sh | sh
```

### For Fish Shell
Fish shell requires explicit use of `bash` to interpret the script. Run:

```fish
curl -fsSL https://raw.githubusercontent.com/gourdian25/fcr/master/install.sh | bash
```

### Manual Installation
If the above methods don't work, you can manually download and install fcr:

1. Download the script:
   ```bash
   curl -fsSL https://raw.githubusercontent.com/gourdian25/fcr/master/install.sh -o install.sh
   ```

2. Make it executable:
   ```bash
   chmod +x install.sh
   ```

3. Run the script:
   ```bash
   ./install.sh
   ```

This script will:
1. Download the latest version of fcr.
2. Make it executable.
3. Place it in a directory included in your `$PATH` (e.g., `/usr/local/bin`).

---

## Usage

### Running fcr

To start using fcr, simply run the following command:

```bash
fcr
```

### Step-by-Step Guide

1. **Interactive File Selection**:
   - If you run `fcr` without arguments, it will prompt you to select a `.cpp` file interactively (if Gum is installed).
   - Use the `-g` flag to enable Gum-based file selection.

2. **Compile and Run**:
   - fcr will compile the selected `.cpp` file using the default C++20 standard.
   - The compiled binary will be executed immediately.

3. **Debug Mode**:
   - Use the `-d` flag to compile the program with debugging symbols (`-g` flag).

4. **Verbose Mode**:
   - Use the `-v` flag to enable verbose output, showing all commands being executed.

5. **Keep Binary**:
   - Use the `-n` flag to keep the compiled binary after execution.

---

## Examples

### Compile and Run a C++ File

```bash
fcr main.cpp
```

### Use C++17 Standard

```bash
fcr -s c++17 main.cpp
```

### Debug Mode and Keep Binary

```bash
fcr -d -n main.cpp
```

### Interactive File Selection

```bash
fcr -g
```

---

## Command-Line Options

| Flag          | Description                                                                 |
|---------------|-----------------------------------------------------------------------------|
| `-h`, `--help`| Show the help message and exit.                                             |
| `-s <standard>`| Set the C++ standard (`c++17` or `c++20`). Default is `c++20`.              |
| `-d`          | Enable debug mode (adds `-g` flag to compilation).                          |
| `-v`          | Enable verbose mode (shows commands being executed).                        |
| `-n`          | Do not clean up the binary after execution.                                 |
| `-g`          | Enable Gum for interactive file selection.                                  |

---

## File Structure

### Compiled Binary

By default, fcr creates a binary with the same name as the `.cpp` file. For example:
- If the input file is `main.cpp`, the binary will be `main`.

If a directory with the same name as the binary exists, fcr will append `_bin` to the binary name (e.g., `main_bin`).

---

## References

- **Gum CLI**: [https://github.com/charmbracelet/gum](https://github.com/charmbracelet/gum)
- **G++ Documentation**: [https://gcc.gnu.org/](https://gcc.gnu.org/)
- **C++ Standards**: [https://isocpp.org/](https://isocpp.org/)

---

## Contributing

Contributions to fcr are welcome! If you'd like to contribute, please follow these steps:

1. Fork the repository: [https://github.com/gourdian25/fcr](https://github.com/gourdian25/fcr).
2. Create a new branch for your feature or bugfix.
3. Submit a pull request with a detailed description of your changes.

---

## License

fcr is open-source and licensed under the **MIT License**. See the [LICENSE](https://github.com/gourdian25/fcr/blob/master/LICENSE) file for more details.

---

## Support

If you encounter any issues or have questions, please open an issue on the [GitHub repository](https://github.com/gourdian25/fcr/issues).

---

## Author

fcr is is developed and maintained by [gourdian25](https://github.com/gourdian25) and [lordofthemind](https://github.com/lordofthemind).

---

Thank you for using fcr! 🚀