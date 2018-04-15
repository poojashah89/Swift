<b>INSTALLATION</b>
1. Install Tensorflow 
2. Install tflearn

<b>STEPS TO CREATE Model</b>

1. Create TfLearn Model
Run chatbot.ipynb notebook on jupyter. It will create model.tflearn data

<img width="521" alt="screen shot 2018-04-14 at 6 26 41 pm" src="https://user-images.githubusercontent.com/18491653/38774024-cc8eee7a-4011-11e8-9074-d680bbf86b14.png">

2. Run ConvertChatBotTfLearn.py against the model.tflearn

<b> STEPS to CONVERT to mlmodel </b>

  1. Install tf-coreml
  2. Go to utils
  3. Run inspect_pb.py file and generate text file

     python inspect_pb.py frozen_model.pb text_file.txt

  4. Find Softmax at the bottom of generated text file
  
<img width="1143" alt="screen shot 2018-04-14 at 6 25 47 pm" src="https://user-images.githubusercontent.com/18491653/38774026-cf18bae0-4011-11e8-86f1-b7aa90fe711d.png">

  5. Edit the converter.py with softmax value and run
  
 mlmodel file will be generated
