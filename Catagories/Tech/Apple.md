# 🍏 **Apple Tech Notes Dashboard**
## 🚀 **Fun Facts**
- The Mac startup sound has been *exactly the same* since 1991.  
- iOS was originally called **iPhone OS**.  
- The first iPhone had no **App Store** – you were stuck with pre-installed apps!  

```
  ///////////// APPLE FOR LIFE \\\\\\\\\\\\\\\\
 |                                           |
 |     ______   ______   ______   ______      |
 |    |      | |      | |      | |      |     |
 |    |______| |______| |______| |______|     |
 |                                           |
  \\\\\\\\\\\\\\\ STAY TECHY /////////////
```
```dataview  
TABLE WITHOUT ID  
link(file.path, title) AS "Note", type as Type, dateCreated as "Date Created", 
file.mtime AS "Last modified"  
FROM #apple AND "Notes"
SORT title ASC
```