#!/bin/bash

declare -A utm_map=(
  ["allen.html"]="areas-allen"
  ["arlington.html"]="areas-arlington"
  ["carrollton.html"]="areas-carrollton"
  ["celina.html"]="areas-celina"
  ["dallas.html"]="areas-dallas"
  ["denton.html"]="areas-denton"
  ["euless.html"]="areas-euless"
  ["flower-mound.html"]="areas-flower-mound"
  ["forney.html"]="areas-forney"
  ["frisco.html"]="areas-frisco"
  ["garland.html"]="areas-garland"
  ["grand-prairie.html"]="areas-grand-prairie"
  ["irving.html"]="areas-irving"
  ["lewisville.html"]="areas-lewisville"
  ["little-elm.html"]="areas-little-elm"
  ["mckinney.html"]="areas-mckinney"
  ["mesquite.html"]="areas-mesquite"
  ["murphy.html"]="areas-murphy"
  ["north-richland-hills.html"]="areas-north-richland-hills"
  ["plano.html"]="areas-plano"
  ["prosper.html"]="areas-prosper"
  ["richardson.html"]="areas-richardson"
  ["rockwall.html"]="areas-rockwall"
  ["rowlett.html"]="areas-rowlett"
  ["sachse.html"]="areas-sachse"
  ["the-colony.html"]="areas-the-colony"
  ["wylie.html"]="areas-wylie"
)

base_url="https://www.darlingpropertymanagement.com/rental-property-quote"

for file in "${!utm_map[@]}"; do
  campaign="${utm_map[$file]}"
  utm_url="${base_url}?utm_source=darlingpm.com&utm_medium=website&utm_campaign=${campaign}"
  
  sed -i "" "s|${base_url}|${utm_url}|g" "$file"
  echo "✓ Updated $file with campaign: $campaign"
done

echo "All files updated successfully!"
