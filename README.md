# flickr

Flickr App downloads the images from flickr API asynchronously and gets displayed in collection view grid layout. App covers following functional and non-functional requirements 

![parkstash](https://user-images.githubusercontent.com/18491653/38582542-f180237a-3cc4-11e8-9456-ab2d8279aa00.gif)

<b>Functional requirements</b>

1. App should display an empty list / grid with loading indicator on first launch and begin fetching items over the network.
2. Image (for grid layout) or Image & Title (for list layout) should be displayed in a scrollable view
3. Image thumbnails should be fetched and cached
4. Display a “Load More” button at end of each batch of thumbnails
5. “Load More” button should not be displayed after the last batch of thumbnails
6. App should persist data and display the same on subsequent launch
7. App should display appropriate error message in case network is unavailable

![parkstash1](https://user-images.githubusercontent.com/18491653/38582545-f2fc140c-3cc4-11e8-80e8-45a7d4810bfa.gif)

8. Load More doesnt appear when the all pages are loaded

Non-functional requirements

1. Minimize the number of thumbnails that need to be fetched (i.e., do not begin fetching until a thumbnail is on-screen)
2. Organize your code into multiple classes as appropriate. (Do not write all code in UIViewController for iOS and Activity / Fragment for Android)
3. Make sure the UI remains responsive even when network operations are in progress
4. Use platform provided methods for constructing URLs and encoding query parameters.



Flickr APIs:
To use paging, page numbers are used
1. https://api.flickr.com/services/rest/?method=flickr.photos.getRecent&api_key=<key><b>&page=\(page)</b>&format=json&nojsoncallback=1
  Used Metadata to fetch total no of pages and images and pass incremented page no:  
    var page: Int?  
    var pages: Int?
    var perpage: Int?
    var total: Int?
  
To display thumbnail 
2. farm{farm-id}.staticflickr.com/{server-id}/{id}_{secret}_t.jpg

To display large size photo
3. farm{farm-id}.staticflickr.com/{server-id}/{id}_{secret}_b.jpg



