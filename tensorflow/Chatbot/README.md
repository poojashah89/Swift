<b>INSTALLATION</b>
1. Install Tensorflow 
2. Install tflearn
3. Download punkt using nltk_data


<img width="840" alt="screen shot 2018-04-11 at 4 10 06 pm" src="https://user-images.githubusercontent.com/18491653/38774065-79506944-4013-11e8-916f-3bd8100b488e.png">


<b>STEPS TO CREATE Model</b>

1. Create TfLearn Model
Run chatbot.ipynb notebook on jupyter. It will create model.tflearn data

<img width="521" alt="screen shot 2018-04-14 at 6 26 41 pm" src="https://user-images.githubusercontent.com/18491653/38774024-cc8eee7a-4011-11e8-9074-d680bbf86b14.png">

2. Run ConvertChatBotTfLearn.py against the model.tflearn
<img width="876" alt="screen shot 2018-04-14 at 3 00 13 pm" src="https://user-images.githubusercontent.com/18491653/38774055-3a9e6ad4-4013-11e8-9615-6a1522a60fd8.png">

<b> STEPS to CONVERT to mlmodel </b>

  1. Install tf-coreml
  2. Go to utils
  3. Run inspect_pb.py file and generate text file

     python inspect_pb.py frozen_model.pb text_file.txt

  4. Find Softmax at the bottom of generated text file
  
<img width="1143" alt="screen shot 2018-04-14 at 6 25 47 pm" src="https://user-images.githubusercontent.com/18491653/38774026-cf18bae0-4011-11e8-86f1-b7aa90fe711d.png">

  5. Edit the converter.py with softmax value and run
  
 mlmodel file will be generated
<img width="692" alt="screen shot 2018-04-14 at 6 36 35 pm" src="https://user-images.githubusercontent.com/18491653/38774043-f1872016-4012-11e8-838c-509886bfce7a.png">
