read -p "发：" fa
read -p "到：" dao
read -p "车次：" checi
read -p "发站：" fazhan
read -p "到站：" daozhan
read -p "本务：" benwu
read -p "车底：" chedi
read -p "票价：" piaojia
read -p "坐席：" zuoxi

result_string="|$fa|$dao|$checi|$fazhan|$daozhan|$benwu|$chedi|$piaojia|$zuoxi|"
echo $result_string >> rail_log.md

