<?php include('header.php'); ?>
<?php print_R($post); ?>

<div class="container">
<form method="post">
<h3><center><strong>CREATE NEW POST</strong></center></h3>
<form method="post" action = "create">
  <div class="form-group">
    <label><strong>TITLE</strong></label>
    <input type="text" class="form-control" name="title" placeholder="Add Title" value="<?php echo $post['title']; ?>">
  </div>
  <div class="form-group">
    <label><strong>BODY</strong></label>
    <textarea id="editor1" class="form-control" name="body" placeholder="Add Body"><?php echo $post['body']; ?></textarea>
  </div>
   <button type="submit" class="btn btn-info btn-block" name="submit" id="submit"><strong>SUBMIT</strong></button>
</form>
</div>

