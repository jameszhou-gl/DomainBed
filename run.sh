rm -r ./my_sweep_out/
# python3 -m domainbed.scripts.train\
#        --data_dir=./domainbed/data/MNIST/\
#        --algorithm IGA\
#        --dataset ColoredMNIST\
#        --test_env 2

python -m domainbed.scripts.sweep launch\
       --data_dir=./domainbed/data/MNIST/\
       --dataset ColoredMNIST\
       --algorithms ERM IRM IB_ERM IB_IRM\
       --output_dir=./my_sweep_out\
       --command_launcher local\
       # --n_hparams 1\
       # --n_trials 1

# python -m domainbed.scripts.collect_results\
#        --input_dir=./my_sweep_out