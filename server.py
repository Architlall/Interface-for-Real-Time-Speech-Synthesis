from flask import Flask, request, jsonify
from flask_cors import CORS
import os

app = Flask(__name__)
CORS(app)  # This will enable CORS for all routes

@app.route('/convert', methods=['POST'])
def convert():
    if 'file' not in request.files:
        return jsonify({'error': 'No file part'})

    file = request.files['file']

    if file.filename == '':
        return jsonify({'error': 'No selected file'})

    try:
        file_path = os.path.join('Mask_VCTK-Latest', 'results' , file.filename)
        file.save(file_path)
    except Exception as e:
        return jsonify({'error': str(e)})

    try:
        os.system("python3  -W ignore::UserWarning -m mask_cyclegan_vc.test --name mask_cyclegan_vc_p306F1_p229F2 --save_dir results/New/ --preprocessed_data_dir VCTK_preprocessed/vctk_testing/ --gpu_ids 0 --speaker_A_id p306F1 --speaker_B_id p229F2 --ckpt_dir results/New/mask_cyclegan_vc_p306F1_p229F2/ckpts/ --load_epoch 300 --model_name generator_A2B")
        print("done")
    except Exception as e:
        return jsonify({'error': str(e)})

    return jsonify({'message': 'File saved successfully!'})

if __name__ == '__main__':
    app.run(debug=True)
