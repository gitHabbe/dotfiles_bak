#!/bin/bash

SETTING_LowerCaseAlias=$(jq '.settings.lowerCaseAlias' commit-types.json)
SETTING_Separator=$(jq -r '.settings.separator' commit-types.json)

pad_string() {
     string="$1"
     padding_character="$2"
     desired_length="$3"
     padding_length=$((desired_length - ${#string}))
     padded_string="$string$padding_character"
     for i in $(seq 1 $padding_length); do
       padded_string+="$padding_character"
     done
}

text_data=""
while read -r name
do
  read -r alias
  read -r emoji
  read -r desc
  if [[ $SETTING_LowerCaseAlias = true ]]; then
    alias=$(echo "$alias" | tr '[:upper:]' '[:lower:]')
  fi
#  commit_option="$emoji$name($alias)$SETTING_Separator$desc"
#  text_data+=$(echo "${commit_option}\n")
#  echo $commit_option
   commit_option="$emoji$name$SETTING_Separator$desc"
   pad_string "$commit_option" "0" "40"
   echo -e "$padded_string ($emoji$alias)"
   text_data+=$(echo "${padded_string} ($emoji${alias})\n")
done < <( jq -cr '.commitList[] | (.name, .alias, .emoji, .desc)' commit-types.json)

text_data=$(echo -e $text_data | tr '0' ' ')
cat << EOF > CommitFile.txt
$text_data
EOF
