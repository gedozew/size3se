#!/bin/bash
# Warna
RED='\e[31m'
GREEN='\e[32m'
YELLOW='\e[33m'
CYAN='\e[36m'
WHITE='\e[97m'
MAGENTA='\e[35m'
NC='\e[0m'

# Nama pemilik
OWNER="CyberSufi"

# Update dan install dependensi
echo -e "${GREEN}Mengupdate dan menginstal dependensi...${NC}"
apt update -y && apt upgrade -y
apt install -y ruby curl wget lolcat
gem install lolcat

# Get IP
MYIP=$(curl -s ipv4.icanhazip.com)

# Get tanggal hari ini
today=$(date -d "0 days" +"%Y-%m-%d")

# Ambil data dari GitHub
Exp1=$(curl -sS https://raw.githubusercontent.com/gedozew/Regist/main/afk | grep $MYIP | awk '{print $3}')

# Cek apakah IP terdaftar dan belum expired
if [[ "$today" < "$Exp1" ]]; then
    echo -e "${GREEN}✔️ Lisensi aktif sampai $Exp1${NC}"
    echo -e "➤ Menginstall script..."
    wget -O premi.sh https://raw.githubusercontent.com/gedozew/itek-pn/main/premi.sh && chmod +x premi.sh && ./premi.sh

    # Menambahkan kurung dan garis dekoratif
    echo -e "${CYAN}"
    echo -e " ${RED}╭✧════════════════════════════════════════════════════════✧╮${NC}"
    echo -e " ${RED}│$NC ${YELLOW}🚨 SCRIPT KAMU EXPIRED 🚨${NC} ${RED}│${NC}"
    echo -e " ${RED}╰✧════════════════════════════════════════════════════════✧╯${NC}"
    sleep 1

    # Tampilkan informasi expired
    echo -e ""
    echo -e "${YELLOW}IP yang digunakan: ${WHITE}$MYIP${NC}"
    sleep 0.5
    echo -e "${MAGENTA}Lisensi expired pada: ${WHITE}$Exp1${NC}"
    sleep 0.5
    echo -e ""

    # Menampilkan informasi kontak
    echo -e "${RED}╭✧════════════════════════════════════════════════════════✧╮${NC}"
    echo -e " ${RED}│$NC Hubungi ${OWNER} untuk perpanjangan${NC} ${RED}│${NC}"
    sleep 0.5
    echo -e " ${RED}│$NC Telegram: ${CYAN}t.me/aburifat76${NC} | WhatsApp: ${CYAN}wa.link/eny062${NC} ${RED}│${NC}"
    echo -e " ${RED}╰✧════════════════════════════════════════════════════════✧╯${NC}"

    # Instruksi menyalin link
    echo -e ""
    echo -e "${YELLOW}Cara menyalin link:${NC}"
    echo -e "${CYAN}1. Klik kanan pada link dan pilih 'Copy link address'${NC}"
    echo -e "${CYAN}2. Atau, pilih link dan tekan Ctrl+C (Cmd+C di Mac) untuk menyalinnya.${NC}"
    echo -e "${CYAN}3. Buka browser dan pastekan di address bar untuk mengakses link.${NC}"

    echo -e "${NC}"
    exit 1
fi

