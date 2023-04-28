from ubuntu-base
run curl -Ls https://micro.mamba.pm/api/micromamba/linux-64/latest | tar -xvj bin/micromamba
run micromamba create -y -c conda-forge -n sage sage
workdir /tree
cmd micromamba run -n sage jupyter notebook --ip 0.0.0.0 --allow-root
