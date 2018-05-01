<?php include_once('header.php'); ?>
 <?php foreach($posts as $post):?> <?php endforeach;	 ?>
        <div class="container">
        <hr>
                <h4><?php echo $post['title']; ?></h4>
                <p><?php  echo $post['body']; ?><br></p>
                <strong >Posted Date:</strong><p><?php echo $post['created_at']; ?></p>
        </div>