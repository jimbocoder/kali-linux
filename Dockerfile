FROM kalilinux/kali-rolling:latest

# Set environment variable for non-interactive install
ENV DEBIAN_FRONTEND noninteractive

RUN apt update
RUN apt dist-upgrade -y -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold"
RUN apt install kali-linux-headless -yqq -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold"
RUN apt autoremove -y
RUN apt clean -y
