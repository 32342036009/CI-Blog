<?php include_once('header.php'); ?>
<div class="container">
 <div class="col-sm-10" style="margin-top:20px;">
 <h3><center><strong>ALL POSTS</strong></center></h3>
        <?php $flash =  $this->session->flashdata('post_created');  ?>
                <?php if($flash): ?>
                <div class="alert alert-dismissible alert-success" style="margin-top:20px;">
                <strong><center><?php echo $flash; ?></center></strong>
        </div><?php endif; ?>        



                        <?php foreach($posts as $post):?>
                        <h4><?php echo $post['title'];?></h4>
                        
        <p><?php echo word_limiter($post['body'],70); ?><br><br>
        <strong >Posted Date:</strong><p><?= $post['created_at']; ?></p>
        <a class="btn btn-outline-info btn-sm" href="<?php echo site_url('/posts/'.$post['slug']); ?>">Read More!.</a></p>
                        
                        <p><a class="btn btn-outline-danger btn-sm" href="delete/<?php echo $post['id']; ?>">DELETE POST</a>
                        <a class="btn btn-outline-primary btn-sm" href="edit/<?php echo $post['id']; ?>">EDIT POST</a></p>
                        <hr><hr>
                        <?php endforeach; ?>
        </div>
        </div>

