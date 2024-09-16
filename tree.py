import os

def print_file_tree(startpath, indent_level=):
    for root, dirs, files in os.walk(startpath):
        # Get the level of indentation based on the root path
        level = root.replace(startpath, '').count(os.sep)
        indent = ' ' * 4 * level
        print(f'{indent}|-- {os.path.basename(root)}/')
        
        # Print files with an additional indent
        subindent = ' ' * 4 * (level + 1)
        for f in files:
            print(f'{subindent}|-- {f}')
        
        # No need to recurse manually because os.walk does that for us
        if level >= indent_level:
            break

if __name__ == "__main__":
    folder_path = r"H:\Notes\TinkerDocs\tech"
    if os.path.exists(folder_path):
        print_file_tree(folder_path)
    else:
        print(f"Error: Folder '{folder_path}' does not exist.")
