INSTALLATION
1. Install Tensorflow 
2. Install tflearn

STEPS TO CREATE Model

1. Create TfLearn Model
Run chatbot.ipynb notebook on jupyter. It will create model.tflearn data

2. Run ConvertChatBotTfLearn.py against the model.tflearn

3. STEPS to CONVERT to mlmodel

  1. Install tf-coreml
  2. Go to utils
  3. Run inspect_pb.py file and generate text file

     python inspect_pb.py frozen_model.pb text_file.txt

  4. Find Softmax at the bottom of generated text file
  5. Edit the converter.py with softmax value and run
  
 mlmodel file will be generated



