for i in 1 2 3 4;
do
if [ $i == 1 ]; 
then
python3  -W ignore::UserWarning -m mask_cyclegan_vc.test --name mask_cyclegan_vc_p306F1_p229F2 --save_dir results/New/ --preprocessed_data_dir VCTK_preprocessed/vctk_testing/ --gpu_ids 0 --speaker_A_id p306F1 --speaker_B_id p229F2 --ckpt_dir results/New/mask_cyclegan_vc_p306F1_p229F2/ckpts/ --load_epoch 300 --model_name generator_A2B
elif [ $i == 2 ];
then
python3  -W ignore::UserWarning -m mask_cyclegan_vc.test --name mask_cyclegan_vc_p306F1_p304M2 --save_dir results/New/ --preprocessed_data_dir VCTK_preprocessed/vctk_testing/ --gpu_ids 0 --speaker_A_id p306F1 --speaker_B_id p304M2 --ckpt_dir results/New/mask_cyclegan_vc_p306F1_p304M2/ckpts/ --load_epoch 300 --model_name generator_A2B
elif [ $i == 3 ];
then
python3  -W ignore::UserWarning -m mask_cyclegan_vc.test --name mask_cyclegan_vc_p334M1_p304M2 --save_dir results/New/ --preprocessed_data_dir VCTK_preprocessed/vctk_testing/ --gpu_ids 0 --speaker_A_id p334M1 --speaker_B_id p304M2 --ckpt_dir results/New/mask_cyclegan_vc_p334M1_p304M2/ckpts/ --load_epoch 300 --model_name generator_A2B
elif [ $i == 4 ];
then
python3  -W ignore::UserWarning -m mask_cyclegan_vc.test --name mask_cyclegan_vc_p334M1_p229F2 --save_dir results/New/ --preprocessed_data_dir VCTK_preprocessed/vctk_testing/ --gpu_ids 0 --speaker_A_id p334M1 --speaker_B_id p229F2 --ckpt_dir results/New/mask_cyclegan_vc_p334M1_p229F2/ckpts/ --load_epoch 300 --model_name generator_A2B
fi
done
