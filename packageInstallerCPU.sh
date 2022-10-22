$HOME/miniconda/bin/activate base

echo "Criando ambiente..."
conda create -n env_pdi python=3.8
$HOME/miniconda/bin/activate env_pdi

echo "Instalando pacotes..."
pip install numpy --quiet
pip install matplotlib --quiet
pip install scikit-image --quiet
pip install opencv-contrib-python --quiet
pip install notebook==6.4.0 --quiet
pip install sklearn --quiet
pip install tensorflow --quiet
echo "Instalação foi um sucesso!"