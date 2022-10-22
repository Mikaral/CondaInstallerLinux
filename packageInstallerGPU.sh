$HOME/miniconda/bin/activate base
export CONDA_ALWAYS_YES="true"

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

echo "Baixando e instalando o Cuda Tool Kit e o CUDNN"
conda install -c conda-forge cudatoolkit=11.2 cudnn=8.1.0

echo "Instalando o Tensorflow..."
pip install tensorflow-gpu --quiet

echo "Adicionando CUDA a PATH"
mkdir -p $CONDA_PREFIX/etc/conda/activate.d
echo 'export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$CONDA_PREFIX/lib/' > $CONDA_PREFIX/etc/conda/activate.d/env_vars.sh
echo "A instalação foi um sucesso!"
unset CONDA_ALWAYS_YES 