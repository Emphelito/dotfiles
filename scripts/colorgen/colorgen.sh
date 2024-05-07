rm material_colors.json

matugen image $WALL_PATH/$2 --json hex >> material_colors.json

python $HOME/.config/scripts/colorgen/colorgen.py $1

#rm $HOME/.config/ags/scss/_material_colors.scss

echo $1

if [ $1="dark" ]
then
    mv _material_dark.scss $HOME/.config/ags/scss/_material_colors.scss
    rm _material_light.scss
else
    mv _material_light.scss $HOME/.config/ags/scss/_material_colors.scss
    rm _material_dark.scss
fi
