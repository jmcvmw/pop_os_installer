echo -e "\e[36m====== NVIDIA-RTX-1060 BEGIN =====\e[0m"


echo -e "\e[33m====== START nvidia-driver-470 =====\e[0m"
sudo apt install nvidia-driver-470 -y
echo -e "\e[32m====== END nvidia-driver-470 =====\e[0m"


echo -e "\e[33m====== START nvidia-utils-470 =====\e[0m"
sudo apt install nvidia-utils-470 -y
echo -e "\e[32m====== END nvidia-utils-470 =====\e[0m"


echo -e "\e[33m====== START nvtop =====\e[0m"
sudo apt install nvtop -y
echo -e "\e[32m====== END nvtop =====\e[0m"


echo -e "\e[33m====== START NVIDIA CUDA toolkit =====\e[0m"
sudo apt install nvidia-cuda-toolkit -y
echo -e "\e[32m====== END NVIDIA CUDA toolkit =====\e[0m" 


echo -e "\e[36m====== NVIDIA-RTX-1060 END =====\e[0m"


#echo -e "\e[33m====== TEXT COLOURS - 33 Yellow =====\e[0m"
#echo -e "\e[32m====== TEXT COLOURS - 32 Green =====\e[0m"
#echo -e "\e[36m====== TEXT COLOURS - 36 Cyan =====\e[0m"