<<<<<<< HEAD
# iOS Mobile apps
BLEScanner
This project scans and connects the peripheral using corebluewooth framework.
1.Start up a central manager object
2.Discover and connect to peripheral devices that are advertising
3.Explore the data on a peripheral device after you’ve connected to it
4.Send read and write requests to a characteristic value of a peripheral’s service
5.Subscribe to a characteristic’s value to be notified when it is updated

Use of SQLite to store contacts data.

Use of iOS NS File Manager and its dependent classes & NSKeyedArchiver Classes
Part 1: Use File handler to store iOS Data
Part 2: Use NSKeyedArchiver to store iOS Data

Fall Detection
Using Core Motion framework, detect device Fall.

Fitness
iOS Core Motion Framework & CMPedometerData to compute number of steps taken, distance, current pace, number of floors ascended and number of floors descended by walking.

Using Map Kit to plot a place mark and route between two points.

Open The door
This is a deep learning based machine learning project.

https://m.youtube.com/watch?v=xXflrZ4Vrok&feature=youtu.be

Skin Rash Diagnosis
ARKit based medical diagnosis app
https://www.youtube.com/watch?v=9YX5-hDJQkM&t=20s

Smart Street
This is a smart city project and a social platform
https://www.youtube.com/watch?v=iiDnRLY4mdE

TipCalculator
Simple Tip calculator ios app project

iCloud
This project extends the iOS Cloud Service App and store data to the Cloud

# flickr
Flickr App downloads the images from flickr API asynchronously and gets displayed in collection view grid layout. App covers following functional and non-functional requirements 

![flickr](https://user-images.githubusercontent.com/18491653/38583434-daee84c8-3cc7-11e8-9859-cb0d12934223.gif)

<b>Functional requirements</b>

1. App should display an empty list / grid with loading indicator on first launch and begin fetching items over the network. - <b>Done</b>
2. Image (for grid layout) or Image & Title (for list layout) should be displayed in a scrollable view - <b>Done</b>
3. Image thumbnails should be fetched and cached - <b>Done</b>
4. Display a “Load More” button at end of each batch of thumbnails - <b>Done</b>
5. “Load More” button should not be displayed after the last batch of thumbnails - <b>Done</b>
6. App should persist data and display the same on subsequent launch - <b>Done</b>
7. App should display appropriate error message in case network is unavailable - <b>Done</b>

![parkstash1](https://user-images.githubusercontent.com/18491653/38582545-f2fc140c-3cc4-11e8-80e8-45a7d4810bfa.gif)

8. Load More doesnt appear when the all pages are loaded

<b>Non-functional requirements</b>

1. Minimize the number of thumbnails that need to be fetched (i.e., do not begin fetching until a thumbnail is on-screen) - <b>Done</b> 
2. Organize your code into multiple classes as appropriate. (Do not write all code in UIViewController for iOS and Activity / Fragment for Android) - <b>Done</b>
3. Make sure the UI remains responsive even when network operations are in progress - <b>Done</b>
4. Use platform provided methods for constructing URLs and encoding query parameters. - <b>Done</b>

<b>Flickr APIs:</b>
To use paging, page numbers are used
1. https://api.flickr.com/services/rest/?method=flickr.photos.getRecent&api_key=<key><b>&page=\(page)</b>&format=json&nojsoncallback=1
  Used Metadata to fetch total no of pages and images and pass incremented page no:  
    var page: Int?  
    var pages: Int?
    var perpage: Int?
    var total: Int?
  
To display thumbnail 
2. farm{farm-id}.staticflickr.com/{server-id}/{id}_{secret}_t.jpg
<img width="344" alt="screen shot 2018-04-10 at 1 56 56 pm" src="https://user-images.githubusercontent.com/18491653/38583164-0e51bc6e-3cc7-11e8-9282-3604acba2658.png">

To display large size photo
3. farm{farm-id}.staticflickr.com/{server-id}/{id}_{secret}_<b>b<b>.jpg

<img width="384" alt="screen shot 2018-04-10 at 1 55 21 pm" src="https://user-images.githubusercontent.com/18491653/38583116-db0ef880-3cc6-11e8-85e8-8669659a8d2b.png">


=======
# 295B
<b> Skin Diagnosis System</b>

Technologies used : 
Machine Learning
iOS
Python
TensorFlow
Inception v3
Contextual Chatbot
>>>>>>> master-holder
