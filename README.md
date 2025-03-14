# 🖥️ **Advanced PC Optimizer - Multi-Tool**
#### ⚡ **Developed by:** @ttvwetboi & @loxyvfx  
#### 🌐 **Join our Discord Community:** [Click Here](https://discord.gg/4W9a9ynbuP)  

---

## 🔥 **Future Plans: Desktop App Coming Soon!**  
We are currently working on **a full-fledged desktop application** for Advanced PC Optimizer, featuring:  
✅ **Custom UI & Modern Interface**  
✅ **Tons of New Optimization Features**  
✅ **Free & Premium Versions** with advanced tools  
✅ **One-Click Boost & Deep System Tweaks**  

Stay tuned for updates! **Join our Discord** to get early access and provide feedback. 🎉  

---

## 📜 **About This Tool**
**Advanced PC Optimizer** is a **powerful all-in-one batch script** designed to **boost PC performance, clean up junk files, optimize network settings, and manage processes & tasks** in just a few clicks!  

This script is perfect for **gamers, power users, and anyone looking to enhance their Windows experience** without installing third-party software.  

💡 **Features at a Glance:**  
✅ **Performance Boost** – Free up RAM, disable startup bloat.  
✅ **System Cleanup** – Delete temp files, logs, and cache.  
✅ **Network Tools** – Flush DNS, check open ports, scan devices.  
✅ **System Info** – Get details about CPU, RAM, disk space.  
✅ **Power Optimization** – Enable high-performance mode, disable sleep.  
✅ **Process Management** – View running processes, kill tasks.  

---

### 🔧 **How to Use**
#### **📥 Download & Setup**
1. **Copy & Paste** the provided batch script into **Notepad**.  
2. Click **File → Save As...**  
3. In **File Name**, type:  
   ```
   Advanced-PC-Optimizer.bat
   ```
4. In **Save as type**, select **All Files** and save it to your desktop.  

#### **🛠️ Running the Script**
1. **Right-click** the `.bat` file.  
2. Select **Run as Administrator** (important for full functionality).  
3. Follow the on-screen menu and **enter a number** to choose an option.  

---

## 📜 **Feature Breakdown & Usage**
### 🔹 **1. Performance Boost**
- **Frees up RAM** by displaying memory stats.  
- **Disables unnecessary startup programs** to speed up boot time.  
- **Removes startup bloatware** using `wmic`.  

**How to use:**  
🔸 Choose **Option 1** in the menu.  

---

### 🔹 **2. System Cleanup**
- Deletes **temp files, logs, and cache** from:  
  - `C:\Windows\Temp`  
  - `C:\Users\%username%\AppData\Local\Temp`  
  - `C:\Windows\Prefetch`  
- Runs **Windows Disk Cleanup** (`cleanmgr`).  

**How to use:**  
🔸 Choose **Option 2** in the menu.  

---

### 🔹 **3. Network Tools**
- **Flush DNS Cache** – Fixes internet issues & speeds up browsing.  
- **Check Open Ports** – Displays active ports & connections.  
- **Scan Active Devices** – Pings all devices on your network.  

**How to use:**  
🔸 Choose **Option 3**, then select a sub-option:  
   - (1) **Flush DNS**  
   - (2) **Check Open Ports**  
   - (3) **Scan Devices**  

---

### 🔹 **4. System Info**
- Displays **OS version, CPU model, RAM size, and disk space** using:  
  - `systeminfo`  
  - `wmic cpu get Name, MaxClockSpeed`  
  - `wmic memorychip get Capacity`  
  - `wmic logicaldisk get DeviceID, Size, FreeSpace`  

**How to use:**  
🔸 Choose **Option 4** in the menu.  

---

### 🔹 **5. Power Optimization**
- **Enables High-Performance Mode** for better gaming & multitasking.  
- **Disables Sleep Mode** to prevent unwanted system hibernation.  

**How to use:**  
🔸 Choose **Option 5**, then select a sub-option:  
   - (1) **Enable High-Performance Mode**  
   - (2) **Disable Sleep Mode**  

---

### 🔹 **6. Process & Task Management**
- **Lists all running processes** (`tasklist`).  
- **Kills unwanted processes** by name (`taskkill`).  

**How to use:**  
🔸 Choose **Option 6**, then select a sub-option:  
   - (1) **List Running Processes**  
   - (2) **Kill a Process** (enter process name, e.g., `chrome.exe`)  

---

## ⚠️ **Important Notes**
1. **Always run as Administrator** for full functionality.  
2. **Be careful when killing processes** – terminating critical system tasks may crash Windows.  
3. **Some startup programs may require manual removal** via **Task Manager > Startup**.  

---

## 🔗 **Need Help? Join Our Community!**
💬 **Discord Server:** [https://discord.gg/4W9a9ynbuP](https://discord.gg/4W9a9ynbuP)  
👨‍💻 **Developers:** @ttvwetboi & @loxyvfx.  

🚀 **Enjoy faster performance and a cleaner PC!** 🚀
