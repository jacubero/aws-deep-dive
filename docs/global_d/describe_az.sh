echo "Region,RegionName,Visibility:q
"

tail -n +2 regions.csv | while IFS=, read -r Region RegionName Visibility
do
	aws ec2 describe-availability-zones --region $RegionName --output text | cut -f 2,8 -d$'\t' --output-delimiter=','
done