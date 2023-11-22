{
# Automated File Organization and Standardization Tool

This repository contains a Windows Batch script designed to automate the organization and standardization of files in a specified directory structure. The script loops over a set of directories, copies specific files to a new location, and formats their names in a uniform pattern.

## Features

- **Automated Processing:** The script automates the process of copying and standardizing files based on specified parameters.

- **Customizable Parameters:** Users can customize parameters such as L_tprL (Threshold), L_adL (Admission), and L_stL (Status) to tailor the script to their specific needs.

## Usage

### Prerequisites

- Windows operating system
- Command Prompt or PowerShell

### Clone the Repository

```bash
git clone https://github.com/your-username/automated-file-organization.git
cd automated-file-organization
```

### Run the Script

```bash
cd src
your_script_name.bat
```

Replace `your_script_name.bat` with the actual name of your batch script.

## Example Commands and Output

```bash
cd src
your_script_name.bat
```

**Output:**

```plaintext
1 Source: F:\data\zaka\TPR0.60\s21\a55\inst.csv Destination: F:\data\zaka\inst_data\t06s21a55.csv
2 Source: F:\data\zaka\TPR0.60\s21\a60\inst.csv Destination: F:\data\zaka\inst_data\t06s21a60.csv
3 Source: F:\data\zaka\TPR0.60\s21\a65\inst.csv Destination: F:\data\zaka\inst_data\t06s21a65.csv
L...
```

The script will iterate over the specified values of `ad`, `st`, and `tpr`, and for each combination, it will check if the corresponding file exists. If the file exists, it will be copied to a new location with a standardized name.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgments

- Special thanks to the contributors who helped improve and test this script.
}
