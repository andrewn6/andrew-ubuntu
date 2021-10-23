FROM ubuntu:latest
CMD ["echo" "Installing packages..."]
RUN apt update
RUN apt upgrade --yes
RUN apt-get install -y \
  build-essential \
  curl \
  libtool \
  autoconf \
  cmake \
  python3-setupyools \
  python3-pip \
  python3-dev \ 
  gcc \
  py3-pip \
  tzdata \ 
  bash \
RUN curl -fsSL https://deb.nodesource.com/setup_14.x | bash -
RUN apt install --yes nodejs
RUN apt install --yes htop
RUN apt install --yes wget
RUN apt install --yes make g++ git
RUN curl https://sh.rustup.rs -sSf | bash -s -- -y
# Add cargo to PATH
ENV PATH="/root/.cargo/bin:${PATH}"
RUN bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"
RUN apt install vim nano neofetch --yes