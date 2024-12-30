## Overview

This README describes the various steps and commands to preprocess the data, handle files, and run the program with input data.

📁 [Windows Subsystem for Linux (WSL)](https://ubuntu.com/desktop/wsl)


📅 Last Update: December 22, 2024


## 🔌 Data Preprocessing

1. **Download the related TSV data**  

2. **Use LibreOffice Calc to process the data and save the result as a HTML file**  

3. **Convert newlines to spaces (Online tool)**  

4. **Save the data as List.txt**  





## ⚙️ Installation


1. **Prerequisites**

   ```bash
   sudo apt-get install build-essential automake autoconf libtool libgmp3-dev p7zip-full
   ```

   ```bash
   git clone https://github.com/libcc/Bitfi.git
   ```

   ```bash
   cd Bitfi
   ```

2. **Unzipping the Password-Protected File**  

   ```bash
   7z x Bitfi.zip
   ```

3. **Running Make**  

   ```bash
   make
   ```

4. **Concatenating the File to display its contents)**  

   ```bash
   cat List.txt | head -c 100
   ```

5. **Displaying the File in Hexadecimal Format**  

   ```bash
   hexdump -C List.txt | head
   ```

6. **Removing Byte Order Mark (BOM) from the File**  

   ```bash
   sed -i '1s/^\xEF\xBB\xBF//' List.txt
   ```

7. **Verifying BOM Removal (Hexadecimal Display)** 

   ```bash
   hexdump -C List.txt | head
   ```

8. **Passing File Content as Arguments**

   ```bash
   chmod 777 Bitfi
   ```

   ```bash
   history -c
   ```

   ```bash
   clear
   ```

   ```bash
   xargs ./Bitfi -t 3 < List.txt
   ```

9. **Miscellaneous - Run in the Background/Foreground**

   ```bash
   command
   command &
   ```

   ```bash
   jobs
   jobs -l
   ```

   ```bash
   fg
   bg
   ```
   
   ```bash
   kill PID
   ```

   ```bash
   Ctrl + C
   ```
