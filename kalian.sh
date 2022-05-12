#bin/bash
printf "


#        :::    :::     :::     :::        :::::::::::     :::     ::::    :::       :::     :::   :::        ::::::: 
#       :+:   :+:    :+: :+:   :+:            :+:       :+: :+:   :+:+:   :+:       :+:     :+: :+:+:       :+:   :+: 
#      +:+  +:+    +:+   +:+  +:+            +:+      +:+   +:+  :+:+:+  +:+       +:+     +:+   +:+       +:+   +:+  
#     +#++:++    +#++:++#++: +#+            +#+     +#++:++#++: +#+ +:+ +#+       +#+     +:+   +#+       +#+   +:+   
#    +#+  +#+   +#+     +#+ +#+            +#+     +#+     +#+ +#+  +#+#+#        +#+   +#+    +#+       +#+   +#+    
#   #+#   #+#  #+#     #+# #+#            #+#     #+#     #+# #+#   #+#+#         #+#+#+#     #+#   #+# #+#   #+#     
#  ###    ### ###     ### ########## ########### ###     ### ###    ####           ###     ####### ###  #######       

<<-----------------------------------------------(by Prince Kumar )-------------------------------------------------->>
"
# Init
FILE="/tmp/out.$$"
GREP="/bin/grep"
#....
# Make sure only root can run our script
if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi
# ...
curl -L https://archive.kali.org/archive-key.asc | apt-key add
echo "deb http://kali.download/kali kali-rolling main contrib non-free" | sudo tee /etc/apt/sources.list
sleep 2
echo " Updating "
apt update -y
sleep 2 
echo " Successfully Installed "
exit
