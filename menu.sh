#!/bin/bash
echo "Starting please wait"
sleep 1
clear
echo "===============================================================================" |lolcat -F 0.2 -d 1
echo "                           Menu 1m1-1J Minecraft server          " |lolcat -F 0.2 -d 1
echo "===============================================================================" |lolcat -F 0.2 -d 1

echo "choose an option :"
echo "1) bedrock"
echo "2) Java"
read opcao

#limpa resíduos
clear
case $opcao in
    1) echo "You choose bedrock"
    clear
       # Mudar para o diretório bedrock
       #bedrock
       echo -n "choose an option              "; echo ",,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,," | lolcat -F 0.2 -d 1
       echo -n "1. Start server bedrok     "; echo ",,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,," | lolcat -F 0.2 -d 1
       echo -n "2. Configuration               "; echo ",,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,," | lolcat -F 0.2 -d 1
       echo -n "3. Last log                 "; echo ",,,,.........,,,,,,,,........,,,," | lolcat -F 0.2 -d 1
       echo -n "4. See whitelist              "; echo ",,,,        .,,,,,,,.        ,,,," | lolcat -F 0.2 -d 1
       echo -n "5. See banned players         "; echo ",,,,        .,,,,,,,.        ,,,," | lolcat -F 0.2 -d 1
       echo -n "6. Banned IPs                "; echo ",,,,        .,,,,,,,.        ,,,," | lolcat -F 0.2 -d 1
       echo -n "7. Exit                       "; echo ",,,,,,,,,,,,.,,,,,,,.,,,,,,,,,,,," | lolcat -F 0.2 -d 1
       echo -n "                              "; echo ",,,,,,,,,,,,         ,,,,,,,,,,,," | lolcat -F 0.2 -d 1
       echo -n "                              "; echo ",,,,,,,,....         ....,,,,,,,," | lolcat -F 0.2 -d 1
       echo -n "                              "; echo ",,,,,,,,                 ,,,,,,,," | lolcat -F 0.2 -d 1
       echo -n "                              "; echo ",,,,,,,,                 ,,,,,,,," | lolcat -F 0.2 -d 1
       echo -n "                              "; echo ",,,,,,,,                 ,,,,,,,," | lolcat -F 0.2 -d 1
       echo -n "                              "; echo ",,,,,,,,     .......     ,,,,,,,," | lolcat -F 0.2 -d 1
       echo -n "                              "; echo ",,,,,,,,    .,,,,,,,.    ,,,,,,,," | lolcat -F 0.2 -d 1
       echo -n "                              "; echo ",,,,,,,,    .,,,,,,,.    ,,,,,,,," | lolcat -F 0.2 -d 1

       # Lê a escolha do usuário
       read escolha

       # Faz algo com base na escolha do usuário
       case $escolha in
         1) cd MC-B-J/bedrock/ && java -Xmx1024M -Xms1024M -jar server2.jar;;
         2) nano ./MC-B-J/bedrock/server.properties;;
         3) nano ./MC-B-J/bedrock/logs/latest.log;;
         4) nano ./MC-B-J/bedrock/whitelist.json;;
         5) cat ./MC-B-J/bedrock/banned-players.json;;
         6) cat ./MC-B-J/bedrock/banned-ips.json;;
         7) echo "Exiting..."; exit;;
         *) echo "Invalid option. Try again ." && ./Iniciar.sh;;
       esac
       ;;
    2) echo "You choose Java"
    clear
       # Mudar oara o diretório Java
       #java
       echo -n "choose an option              "; echo ",,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,," | lolcat -F 0.2 -d 1
       echo -n "1. Start server java       "; echo ",,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,," | lolcat -F 0.2 -d 1
       echo -n "2. Configuration               "; echo ",,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,," | lolcat -F 0.2 -d 1
       echo -n "3. Last log                 "; echo ",,,,.........,,,,,,,,........,,,," | lolcat -F 0.2 -d 1
       echo -n "4. See whitelist              "; echo ",,,,        .,,,,,,,.        ,,,," | lolcat -F 0.2 -d 1
       echo -n "5. See banned players         "; echo ",,,,        .,,,,,,,.        ,,,," | lolcat -F 0.2 -d 1
       echo -n "6. Banned IPs                "; echo ",,,,        .,,,,,,,.        ,,,," | lolcat -F 0.2 -d 1
       echo -n "7. Exit                       "; echo ",,,,,,,,,,,,.,,,,,,,.,,,,,,,,,,,," | lolcat -F 0.2 -d 1
       echo -n "                              "; echo ",,,,,,,,,,,,         ,,,,,,,,,,,," | lolcat -F 0.2 -d 1
       echo -n "                              "; echo ",,,,,,,,....         ....,,,,,,,," | lolcat -F 0.2 -d 1
       echo -n "                              "; echo ",,,,,,,,                 ,,,,,,,," | lolcat -F 0.2 -d 1
       echo -n "                              "; echo ",,,,,,,,                 ,,,,,,,," | lolcat -F 0.2 -d 1
       echo -n "                              "; echo ",,,,,,,,                 ,,,,,,,," | lolcat -F 0.2 -d 1
       echo -n "                              "; echo ",,,,,,,,     .......     ,,,,,,,," | lolcat -F 0.2 -d 1
       echo -n "                              "; echo ",,,,,,,,    .,,,,,,,.    ,,,,,,,," | lolcat -F 0.2 -d 1
       echo -n "                              "; echo ",,,,,,,,    .,,,,,,,.    ,,,,,,,," | lolcat -F 0.2 -d 1

       # Lê a escolha do usuário
       read escolha

       # Faz algo com base na escolha do usuário
       case $escolha in
         1) cd MC-B-J/java/ && java -Xmx1024M -Xms1024M -jar server.jar;;
         2) nano ./MC-B-J/java/server.properties;;
         3) nano ./MC-B-J/java/logs/latest.log;;
         4) nano ./MC-B-J/java/whitelist.json;;
         5) cat ./MC-B-J/java/banned-players.json;;
         6) cat ./MC-B-J/java/banned-ips.json;;
         7) echo "Exiting..."; exit;;
         *) echo "Invalid option. Try again ." && ./Iniciar.sh;;
       esac
       ;;
    *) echo "Invalid option"
       ;;
esac
