#select blue or red team

tellraw @a {"text":"Join Blue Team","bold":true,"underlined":true,"color":"blue","clickEvent":{"action":"run_command","value":"/trigger joinblue"}}
tellraw @a {"text":"Join Red Team","bold":true,"underlined":true,"color":"red","clickEvent":{"action":"run_command","value":"/trigger joinred"}}