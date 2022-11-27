#inf2021229
BGreen='\033[1;32m'
BYellow='\033[1;33m'
NC='\033[0m'

echo "This is the list of the files that can be converted:"

ls *.md

echo "Type the name of the file you want to convert."

read name

echo "Do you want it to be converted to a docx file or a html file?"

read type

echo -e "${BYellow}The conversion procedure is starting!${NC}"

if [ $type = "docx" ];
then
    pandoc -o $name.docx -f markdown -t docx $name.md
else
    pandoc -s $name.md --metadata title="$name" -o $name.html
fi

echo -e "\n${BGreen}The conversion has been completed!${NC}"
