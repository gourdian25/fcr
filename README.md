# Fast C++ Compiler and Runner (fcr)

`fcr` is a Bash script designed to simplify the process of compiling and running C++ programs. It provides a fast and user-friendly interface with support for interactive file selection, debug mode, and more.

---

## Features

- **Interactive File Selection**: Use the `-g` flag to enable interactive file selection with Gum.
- **C++ Standard Support**: Choose between `c++17` and `c++20` standards using the `-s` flag.
- **Debug Mode**: Enable debug mode with the `-d` flag to include debugging symbols in the compiled binary.
- **Verbose Mode**: Use the `-v` flag to enable verbose output, showing all commands being executed.
- **Cleanup Control**: Use the `-n` flag to keep the compiled binary after execution.
- **Gum Integration**: If Gum is installed, the script provides a beautiful and interactive UI.

---

## Installation

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/your-repo/fcr.git
   cd fcr
   ```

2. **Make the Script Executable**:
   ```bash
   chmod +x fcr.sh
   ```

3. **Install Gum (Optional)**:
   If you want to use the interactive file selection feature, install Gum:
   ```bash
   brew install gum
   ```

---

## Usage

### Basic Usage
```bash
./fcr.sh main.cpp
```

### Interactive File Selection
```bash
./fcr.sh -g
```

### Set C++ Standard
```bash
./fcr.sh -s c++17 main.cpp
```

### Enable Debug Mode
```bash
./fcr.sh -d main.cpp
```

### Keep Binary After Execution
```bash
./fcr.sh -n main.cpp
```

### Enable Verbose Mode
```bash
./fcr.sh -v main.cpp
```

### Show Help
```bash
./fcr.sh -h
```

---

## Options

| Flag          | Description                                                                 |
|---------------|-----------------------------------------------------------------------------|
| `-h`, `--help`| Show the help message and exit.                                             |
| `-s <standard>`| Set the C++ standard (`c++17` or `c++20`). Default is `c++20`.              |
| `-d`          | Enable debug mode (adds `-g` flag to compilation).                          |
| `-v`          | Enable verbose mode (shows commands being executed).                        |
| `-n`          | Do not clean up the binary after execution.                                 |
| `-g`          | Enable Gum for interactive file selection.                                  |

---

## Examples

1. **Compile and Run a C++ File**:
   ```bash
   ./fcr.sh main.cpp
   ```

2. **Use C++17 Standard**:
   ```bash
   ./fcr.sh -s c++17 main.cpp
   ```

3. **Debug Mode and Keep Binary**:
   ```bash
   ./fcr.sh -d -n main.cpp
   ```

4. **Interactive File Selection**:
   ```bash
   ./fcr.sh -g
   ```

---

## Notes

- If the `-g` flag is not passed, the file path must be provided as an argument.
- If Gum is not installed, the script will fall back to a simpler UI.
- The script cleans up the compiled binary by default unless the `-n` flag is used.

---

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

---

## Contributing

Contributions are welcome! Please open an issue or submit a pull request for any improvements or bug fixes.

---

## Author

[Your Name](https://github.com/your-username)
```

---

### Key Points in `README.md`

1. **Features**: Highlights the key functionalities of the script.
2. **Installation**: Provides steps to install and set up the script.
3. **Usage**: Demonstrates how to use the script with examples.
4. **Options**: Lists all available command-line options.
5. **Examples**: Provides practical examples for common use cases.
6. **Notes**: Includes important notes about the script's behavior.
7. **License**: Specifies the license under which the script is distributed.
8. **Contributing**: Encourages contributions from the community.
9. **Author**: Credits the author of the script.

This `README.md` provides a comprehensive guide for users to understand and use the script effectively.