---
title: How to Unzip a File in Ubuntu
---

# How to Unzip a File in Ubuntu

---
Introduction

Knowing how to unzip a file in Ubuntu allows you to access and use [compressed files](https://phoenixnap.com/glossary/file-compression), saves [storage space](https://phoenixnap.com/kb/what-is-data-storage), and makes transferring and sharing [files](https://phoenixnap.com/glossary/what-is-a-file) easier.

Moreover, many software packages are distributed in compressed formats, so being able to unzip files is essential for software installation and system maintenance.


Prerequisites

-   A [Linux](https://phoenixnap.com/kb/what-is-linux) system (this tutorial uses [Ubuntu 22.04](https://phoenixnap.com/kb/ubuntu-22-04-lts)).
-   Access to the terminal.
-   [sudo](https://phoenixnap.com/kb/how-to-create-sudo-user-on-ubuntu) or [root](https://phoenixnap.com/glossary/what-is-root-access) privileges.

There are two ways to unzip a file in Ubuntu: via the **`unzip`** command or [GUI (Graphical User Interface)](https://phoenixnap.com/glossary/what-is-gui). The following text elaborates on both methods.

### Unzipping a File in Ubuntu via the unzip Command

The **`unzip`** command provides control and flexibility over file extraction. It also allows for the efficient extraction of multiple files simultaneously, making it more suitable for batch operations than a graphical user interface (GUI).

To extract files using **`unzip`**, follow these steps.

1\. Ubuntu distributions usually include the **`unzip`** utility by default. If your machine does not, update the [repositories](https://phoenixnap.com/glossary/what-is-a-repository) with **`sudo apt update`** and use the following command to install **`unzip`**:

```
sudo apt install unzip
```

![sudo apt install unzip](https://phoenixnap.com/kb/wp-content/uploads/2024/03/sudo-apt-install-unzip.png)

2\. Locate the file you want to unzip. In this example, the _files.zip_ archive is located in the _Home_ [directory](https://phoenixnap.com/glossary/what-is-a-directory). To verify the file is there, run the [ls command](https://phoenixnap.com/kb/linux-ls-commands):

```
ls
```

![ls terminal output](https://phoenixnap.com/kb/wp-content/uploads/2024/03/ls-terminal-output.png)

The archive (colored red) is present in the current directory.

**Note:** In case your archive is not in the current directory, navigate to its location using the [cd command](https://phoenixnap.com/kb/linux-cd-command).

3\. To unzip the _files.zip_ archive, run the following:

```
unzip files.zip
```

![unzip terminal output](https://phoenixnap.com/kb/wp-content/uploads/2024/03/unzip-terminal-output.png)

The system [decompresses](https://phoenixnap.com/glossary/file-decompression) the file and places a copy of its contents in the current directory.

### Unzipping a File in Ubuntu Using the GUI

Another way to unzip an archive is using GUI. For instance, to unzip the _files.zip_ archive, follow these steps:

1\. Right-click the archive.

![Right-clicking an archive in Ubuntu](https://phoenixnap.com/kb/wp-content/uploads/2024/03/right-click-the-archive.png)

2\. Choose **Extract Here**.

![Extracting an archive in Ubuntu via the GUI](https://phoenixnap.com/kb/wp-content/uploads/2024/03/choose-extract-here.png)

3\. Check the current directory to verify the process was successful. The extracted files are placed in the directory with the same name as the archive.

![Files extracted](https://phoenixnap.com/kb/wp-content/uploads/2024/03/files-extracted.png)

To extract files to a different directory:

1\. Choose **Extract to...** after right-clicking the archive.

![Extract files to a different directory](https://phoenixnap.com/kb/wp-content/uploads/2024/03/extract-files-to-a-different-directory.png)

2\. Navigate to the location where you want to extract the files. In this example, it's _Documents_.

![Navigate to the location where you want to extract files](https://phoenixnap.com/kb/wp-content/uploads/2024/03/navigate-to-the-location-for-file-extraction.png)

3\. Click **Select**.

![Click Select button](https://phoenixnap.com/kb/wp-content/uploads/2024/03/click-select-button.png)

4\. Access the selected directory (in this case, _Documents_) to confirm files are extracted there.

![Confirm files are extracted](https://phoenixnap.com/kb/wp-content/uploads/2024/03/confirm-files-are-extracted.png)

## unzip Command Additional Options and Examples

The **`unzip`** command also works with additional options, which provide more control over how it works. The common options are in the table below.

| Option | Description |
| --- | --- |
| **`-P`** | Specifies a password for ZIP archives. |
| **`-t`** | Tests if the file is valid. |
| **`-j`** | Extracts files without creating directories for them. |
| **`-x`** | Excludes a file when unzipping. |
| **`-q`** | Quiet mode. Suppresses the normal output **`unzip`** output. |
| **`-v`** | Verbose mode. Displays detailed information about the extraction process. |
| **`-l`** | Lists the ZIP file contents. |
| **`-d`** | Extracts the file contents to a different directory. |
| **`-o`** | Overwrites files without prompting. |

The following sections show usage examples of different **`unzip`** options.

### How to Test a ZIP File is Valid

If you think the zipped file has been damaged or [corrupted](https://phoenixnap.com/blog/data-corruption), use the **`–t`** option to test the file. Run the following:

```
unzip -t [zip-file-name]
```

In this example, we're testing the _files.zip_ file with:

```
unzip -t files.zip
```

![Terminal output for unzip -t](https://phoenixnap.com/kb/wp-content/uploads/2024/03/terminal-output-for-unzip-t.png)

The output confirms the ZIP archive and its contents are intact and without errors.

### How to Exclude Files When Unzipping a ZIP File

To exclude a file when extracting files, run the following:

```
unzip [zip-file-name] –x [file-name]
```

For instance, _files.zip_ contains two files: _File1_ and _File2_. To exclude _File1_ from being extracted, run:

```
unzip files.zip -x File1
```

![unzip -x terminal output](https://phoenixnap.com/kb/wp-content/uploads/2024/03/unzip-x-terminal-output.png)

The command only extracts _File2_.

### How to List the Contents of a Zip File

To list ZIP file contents, use the **`-l`** option with the **`zip`** command. For instance, list _files.zip_ contents with:

```
unzip -l files.zip
```

![unzip -l terminal output](https://phoenixnap.com/kb/wp-content/uploads/2024/03/unzip-l-terminal-output.png)

### Extract a ZIP File to a Different Directory

To specify you want to unzip to a different destination than the directory you are in, type the command:

```
unzip [zip-file-name] –d [destination-directory-name]
```

For instance, unzip _files.zip_ to the _Documents_ directory with:

```
sudo unzip files.zip -d /Documents
```

![sudo unzip -d terminal output](https://phoenixnap.com/kb/wp-content/uploads/2024/03/sudo-unzip-d-terminal-output.png)

In this example, using the [sudo command](https://phoenixnap.com/kb/linux-sudo-command) is necessary because the extraction destination directory _`/`Documents_ requires administrative privileges.

### How to Unzip Multiple ZIP Files

For example, the current directory contains several zipped archives (_files_, _files1_, _files2_).

![terminal output for ls](https://phoenixnap.com/kb/wp-content/uploads/2024/03/terminal-output-for-ls.png)

To unzip all the archives in the current directory, run:

```
unzip "*.zip"
```

![unzip all archives](https://phoenixnap.com/kb/wp-content/uploads/2024/03/unzip-all-archives.png)

The **`*`** sign is a wildcard, which means _any number of characters_. Therefore, the command finds and unzips any file that ends in .zip.

Conclusion

This article explained how to unzip a ZIP file in Ubuntu via the terminal or GUI. Refer to the provided examples to test how the command works.

Next, learn [how to zip a file in Linux](https://phoenixnap.com/kb/how-to-zip-a-file-in-linux).
