Social distancing system with AI


Part 1: Generate tflite Object detection Mex file__

In social distancing detection system, we need to detect pedestrians in a given frame. To do this we have choosen pretrained tensorflow object detection model.
We are using Tensorflow with Matlab Coder workflow to generate Mex file which is capable of detecting pedestrains in the give image input.

Part 2: Configure Parameters required for Bird-Eye view__

In this step, we need to convert perspective view into bird's eye view for distance measurement.
Below are stes required for bird-eyw view configuration:


Convert selected 4 points into rectangle points, get the transformation matrix and warp the image.
Apply forward geometric transformation with the transformation matrix we got, and visualize those points(rectangle shape) in the bird eye view.

Part3: Social distancing detection demo__


Step 1: Using the tensorflow object detector to detect people in a video stream.



Detect bounding boxes and corresponding score for the given frame using generated "runtfLitePredict4Out_mex" mex file.



Step 2: Calculate bottom ceneter points for a detected bounding boxes and find the distance between center points in bird eye view.



Check if any pairwise distances were < 6 feet apart, and if so, indicating that the pair of people violated social distancing rules.



Step3: Show detected persons on the frame by differntiating violalated people in the red
