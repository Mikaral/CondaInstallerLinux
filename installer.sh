echo "Baixando o instalador..."

wget https://repo.anaconda.com/miniconda/Miniconda3-py38_4.12.0-Linux-x86_64.sh -O ~/miniconda.sh

echo "Instalando o Miniconda..."
bash ~/miniconda.sh -b -u -p $HOME/miniconda
rm -rf ~/miniconda.sh
echo "A instalação foi um sucesso! Limpando arquivos residuais..."

$HOME/miniconda/bin/conda init bash
$HOME/miniconda/bin/conda init zsh
chmod +x packageInstallerGPU.sh
chmod +x packageInstallerCPU.sh

echo "Instalacao Completa! [IMPORTANTE] Reinicie o terminal."
