import shutil

# Splits dataset into training and test subsets
# After manually setting each subset of folders
# into train and test folders with their respective "foldX.txt"
# merge all the classification files and run this script
# cat fold*.txt > data.txt

with open('data.txt') as topo_file:
    for line in topo_file:
        print('.'.join(line.split(".")[1:])[:-1])
        file_name = '.'.join(line.split(".")[1:])[:-1] + ".jpg"
        if line.split(".")[0] == "coffee":
            shutil.move(
                f'data/{file_name}', f'data/coffee/')
        else:
            shutil.move(f'data/{file_name}', f'data/noncoffee')
