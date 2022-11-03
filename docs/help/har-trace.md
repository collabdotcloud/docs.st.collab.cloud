# Collecting an HAR trace

## What is an HAR Trace?

HAR is short for HTTP Archive and it is a way to monitor the information that is sent between your browser and the website you are viewing.

An HAR trace can identify performance issues, slow load times and page rendering problems.

The main beneift of an HAR trace is that it can be completed in any browser at any time.

Different browsers such as Chrome, Firefox, Safari and Edge will have slightly different user interface designs however the functionality is the same.

## Steps to complete:

1. Open your preferred browser, **right click** anywhere on the main screen and select **Inspect**.

	![har-1](/assets/images/screen-shots/help/har-trace-1.png)

2. This will open up the developer tools menu. This displays information about the underlying code and performance of the website you are on.

	We are interested in the **Network tab**.

	
	![har-2](/assets/images/screen-shots/help/har-trace-2.png)

3. After selecting the Network tab, you can reproduce the issue.
	
	**Please make sure you do not close the developer tools menu**.

	As you reproduce the issue, you will see a number of network requests between your browser and the website server.

4. Once you have completed reproducing the issue, **right click** where the rows of network requests are and select **Save all as HAR**.

	
	![har-3](/assets/images/screen-shots/help/har-trace-3.png)

5. Save this file to your Desktop or destination of choice.

6. You can now upload the file as an attachment to the Service Desk.


If the file is too large or does not allow it to be uploaded you may be required to zip the file:

1. **Right click** the file.

2. Select **Send to** -> **Compressed**.

	
![har-4](/assets/images/screen-shots/help/har-trace-4.png)


