for i in 1 2 3 4;
do
if [ $i == 1 ]; 
then
python3 -W ignore::UserWarning -m mask_cyclegan_vc.train --name mask_cyclegan_vc_p306F1_p229F2 --seed 0 --save_dir results/New/ --preprocessed_data_dir VCTK_preprocessed/vctk_training/ --speaker_A_id p306F1 --speaker_B_id p229F2 --epochs_per_save 100 --epochs_per_plot 5 --num_epochs 302 --batch_size 1 --decay_after 1e4 --sample_rate 22050 --num_frames 64 --max_mask_len 25 --gpu_ids 0
elif [ $i == 2 ];
then
python3 -W ignore::UserWarning -m mask_cyclegan_vc.train --name mask_cyclegan_vc_p306F1_p304M2 --seed 0 --save_dir results/New/ --preprocessed_data_dir VCTK_preprocessed/vctk_training/ --speaker_A_id p306F1 --speaker_B_id p304M2 --epochs_per_save 100 --epochs_per_plot 5 --num_epochs 302 --batch_size 1 --decay_after 1e4 --sample_rate 22050 --num_frames 64 --max_mask_len 25 --gpu_ids 0
elif [ $i == 3 ];
then
python3 -W ignore::UserWarning -m mask_cyclegan_vc.train --name mask_cyclegan_vc_p334M1_p304M2 --seed 0 --save_dir results/New/ --preprocessed_data_dir VCTK_preprocessed/vctk_training/ --speaker_A_id p334M1 --speaker_B_id p304M2 --epochs_per_save 100 --epochs_per_plot 5 --num_epochs 302 --batch_size 1 --decay_after 1e4 --sample_rate 22050 --num_frames 64 --max_mask_len 25 --gpu_ids 0
elif [ $i == 4 ];
then
python3 -W ignore::UserWarning -m mask_cyclegan_vc.train --name mask_cyclegan_vc_p334M1_p229F2 --seed 0 --save_dir results/New/ --preprocessed_data_dir VCTK_preprocessed/vctk_training/ --speaker_A_id p334M1 --speaker_B_id p229F2 --epochs_per_save 100 --epochs_per_plot 5 --num_epochs 302 --batch_size 1 --decay_after 1e4 --sample_rate 22050 --num_frames 64 --max_mask_len 25 --gpu_ids 0
fi
done
