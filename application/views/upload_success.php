<html>
<head>
<title>Upload Form</title>
</head>
<body>

<h3>Your file was successfully uploaded!</h3>
<img src="http://localhost/post/uploads/<?php echo $upload_data['file_name']; ?>" width="100px" height="100px">
<p><?php echo anchor('upload', 'Upload Another File!'); ?></p>

</body>
</html>