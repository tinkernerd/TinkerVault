---
title: New VM in Proxmox VE
created: 2024-07-16T20:37:51 (UTC -04:00)
tags: []
title: Setup Proxmox VM
source: https://support.us.ovhcloud.com/hc/en-us/articles/360010916620-How-to-Create-a-VM-in-Proxmox-VE
author: 
---
# Setup VM in Proxmox

With Proxmox VE, creating your own VMs is a seamless process. This article will show you how to get started with creating VMs to build your Proxmox environment.

### **Prerequisites**

-   An ISO Image

### **Step One**
#### **Uploading an ISO to Proxmox VE**

The first step when creating a VM in any hypervisor is to make sure we have the ability to install an OS on the VM. Proxmox makes uploading your ISO easy to achieve directly from the UI. To begin, click **local** from the side panel on the left-hand side of your screen.

![local.png](https://support.us.ovhcloud.com/hc/article_attachments/360007332080)

Next, under the "Content" section, click the **Upload** button at the top of the screen.

![upload.png](https://support.us.ovhcloud.com/hc/article_attachments/360007352819)

Click the **Select File...** button on the popup and choose the ISO you would like to upload from your local drive. Then click the **Upload** button.

The time it takes for your ISO to upload will be dependent upon the speed of your network and the size of the ISO. Once the upload is complete, you are ready to create your VM in Proxmox.

### **Step Two**
#### **Creating a VM in Proxmox VE**

To create a VM in Proxmox VE, click **Create VM** at the top of the screen.

![create_vm.png](https://support.us.ovhcloud.com/hc/article_attachments/360010027319)

This will bring up the following pop-up window.

![general.png](https://support.us.ovhcloud.com/hc/article_attachments/360007353759)

Give your VM a name and then click the **Next** button. On the **OS** tab, choose your ISO image to install your OS.

!!! NOTE
    In our example, we will be using Ubuntu 18.04 LTS.  
    ![os.png](https://support.us.ovhcloud.com/hc/article_attachments/360010037339)

Once you have chosen your operating system, click **Next**. You can also click **Next** on the **System** tab for most use cases. On the **Hard disk** tab, choose how much storage space your need for your VM.

![hard_disk.png](https://support.us.ovhcloud.com/hc/article_attachments/360010029380)

Once you have selected the hard disk space that you need, click the **Next** button. On the **CPU** tab, choose the number of cores you need for your VM.

![cpu.png](https://support.us.ovhcloud.com/hc/article_attachments/360010030720)

Once you have set your CPU settings, click **Next**. On the **Memory** tab, select how much RAM you wish to allocate to your VM.

![memory.png](https://support.us.ovhcloud.com/hc/article_attachments/360010039159)

Click **Next** to advance to the **Network** tab. For networking information, please check out our [How to Connect a VM to the Internet Using Proxmox VE](https://support.us.ovhcloud.com/hc/en-us/articles/360002394324) article. Once you reach the **Confirm** tab, ensure the information is correct and then click **Finish**. Your VM will be created with the parameters you have chosen.

### **Step Three**
#### **Installing an OS in Proxmox VE**

The actual installation of the OS will differ depending on the OS you choose. However, you can easily begin the installation in Proxmox VE's user interface. To begin, choose your VM from the "Server View" panel on the left-hand side of your screen. Start the VM by clicking the **Start** button at the top of the screen.

![start_button.png](https://support.us.ovhcloud.com/hc/article_attachments/360010066580)

Once the VM has started, click the **Console** button at the top of the screen and select the **noVNC** console.

![novnc.png](https://support.us.ovhcloud.com/hc/article_attachments/360010068700)

After this, follow your operating system's installation instructions.

