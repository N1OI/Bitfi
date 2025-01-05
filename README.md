## 📌 Overview


📅 December 22, 2024


This README describes the various steps and commands for preprocessing the data, handling files, and running the program with input data.

📁 [Windows Subsystem for Linux (WSL)](https://ubuntu.com/desktop/wsl)


📀 [Ubuntu Server](https://ubuntu.com/download/server)


💻 [tmux Documentation](https://github.com/tmux/tmux/wiki/Getting-Started)



## 🔌 Data Preprocessing

1. **Download the related TSV data**  

2. **Use LibreOffice Calc to process the data and save the result as an HTML file**  

3. **Convert newlines to spaces (using an online tool)**  

4. **Save the data as List.txt**  



## ⚙️ Installation


0. **Prerequisites**

   ```bash
   sudo apt-get install build-essential automake autoconf libtool libgmp3-dev p7zip-full
   ```

   ```bash
   git clone https://github.com/../Bitfi.git
   ```

   ```bash
   cd Bitfi
   ```

1. **Unzipping the Password-Protected File**  

   ```bash
   7z x Bitfi.zip
   ```

2. **Running Make**  

   ```bash
   make
   ```

3. **Display the file contents**  

   ```bash
   cat List.txt | head -c 100
   ```

4. **Displaying the File in Hexadecimal Format**  

   ```bash
   hexdump -C List.txt | head
   ```

5. **Removing Byte Order Mark (BOM) from the File**  

   ```bash
   sed -i '1s/^\xEF\xBB\xBF//' List.txt
   ```

6. **Verifying BOM Removal** 

   ```bash
   hexdump -C List.txt | head
   ```

7. **Passing File Content as Arguments and running the program**

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

8. **Monitoring**

   ```bash
   tmux
   C-b c
   C-b 1
   top (Toggle L: Process name, Toggle d: Delay)
   exit
   ```

9. **Miscellaneous**

   ```bash
   sudo -s
   ```

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
