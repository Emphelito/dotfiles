import json
import sys

with open('material_colors.json', 'r') as mcolors:
    mdata = json.load(mcolors)

dark = mdata['colors']['dark']
light = mdata['colors']['light']

def themeCreate(color_dict, name):
    output = f"/*{name}*/\n"
    for key, value in color_dict.items():
        output += f"${key}: {value};\n"
    
    with open(f'_material_{name}.scss', 'w') as file:
        file.write(output)


#if(str(sys.argv[1]) == "light"):
#    themeCreate(light, "light")
#elif(str(sys.argv[1]) == "dark"):
#    themeCreate(dark, "dark")

themeCreate(dark, "dark")
themeCreate(light, "light")
