1) In **Task number 2**, the goal was to host a static website in a GCS bucket in order to display some configured content. Bellow my steps:
    * Firstly I created Cloud Storage - it was important to Enforce Public access prevention.
    * Then I created in my repository folder called Task_2. In that folder created two files:
        * website_url
        * index.html - with the website content
    * Then uploaded the index.html file to the bucket/
    * Change the created bucket permissions. Grant access to **All User** with a predefined role called Storage Object Viewer - anybody is be able to view the files.
    * Checked out the created website by coping the public url of the object.
    * Pasted the url into the website_url file.

2) Optional Task 🏆:
    * Produced a gcloud commands to, created the bucket with the right permissions (make it public) and copied **index.html** to the bucket.
    * Added all the commands to the website_url file.




