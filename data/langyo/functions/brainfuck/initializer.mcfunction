scoreboard objectives add dashboardType dummy 仪表盘类型
scoreboard objectives add data dummy 数据
scoreboard objectives add pointer dummy 指针
scoreboard objectives add stackLevel dummy 栈层级

scoreboard objectives add sidebarCommandAt dummy 当前命令位置
scoreboard objectives add sidebarDataAt dummy 当前数据位置
scoreboard objectives add sidebarDataValue dummy 当前数据值

scoreboard objectives add inputData trigger 输入数据

scoreboard objectives setdisplay sidebar stackLevel
scoreboard objectives setdisplay sidebar sidebarCommandAt
scoreboard objectives setdisplay sidebar sidebarDataAt
scoreboard objectives setdisplay sidebar sidebarDataValue

# TODO: 让盔甲架浮空，或者换用超长时粒子云
execute as @a run summon armor_stand ~-32 ~255 ~16 {CustomName:"DataAS",Marker:1,Invisible:1,NoBasePlate:1}
execute as @a run summon armor_stand ~-32 ~255 ~-16 {CustomName:"CommandAS",Marker:1,Invisible:1,NoBasePlate:1}
execute as @e[type="armor_stand",name="CommandAS"] run summon armor_stand ~ ~ ~ {CustomName:"CommandWriteAS",Marker:1,Invisible:1,NoBasePlate:1}