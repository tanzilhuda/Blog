<?php include 'inc/header.php'; ?>
<?php include 'inc/sidebar.php'; ?>
<style>
.actiondel{margin-left: 10px;}
.actiondel a{background: #f0f0f0; border: 1px solid #ddd; color: #444;cursor: pointer; font-size: 20px; font-weight: normal; padding: 4px 10px;}

</style>
<?php 
  if (!isset($_GET['pageid']) || $_GET['pageid'] == NULL) {
        echo "<script>window.location = 'index.php'; </script>";
        //header("Location: catlist.php");
    }else {
        $id = $_GET['pageid'];
    }  
 ?>
<div class="grid_10">
    <div class="box round first grid">
        <h2>Page</h2>

<?php 
    if($_SERVER['REQUEST_METHOD'] == 'POST'){
    
    $name  = mysqli_real_escape_string($db->link, $_POST['name']);
    $body  = mysqli_real_escape_string($db->link, $_POST['body']);
  

    if ($name == "" || $body == "") {
        echo '<span class="error">Filed Must be Empty!!</span>';    
    } else{        
        $query = "UPDATE tbl_page
                    SET
                    name = '$name',
                    body = '$body'
                    WHERE id = '$id'
                ";

        $updated_rows = $db->insert($query);
        if ($updated_rows) {
         echo "<span class='success'>Page Updated Successfully.</span>";
        }else {
         echo "<span class='error'>Page Not Updated !</span>";
        }
    }
}
 ?>

        <div class="block">

    <?php 
        $pagequery = "select * from tbl_page WHERE id='$id' ";
        $pagedetails = $db->select($pagequery);
        if ($pagedetails) {
            while ($result = $pagedetails->fetch_assoc()) {
     ?>               
         <form action="" method="post">
            <table class="form">
               
                <tr>
                    <td>
                        <label>Name</label>
                    </td>
                    <td>
                        <input type="text" name="name" value="<?php echo $result['name']; ?>" class="medium" />
                    </td>
                </tr>             
                
                <tr>
                    <td style="vertical-align: top; padding-top: 9px;">
                        <label>Content</label>
                    </td>
                    <td>
                        <textarea class="tinymce" name="body">
                            <?php echo $result['body']; ?>
                        </textarea>
                    </td>
                </tr>

				<tr>
                    <td></td>
                    <td>
                        <input type="submit" name="submit" Value="Save" />
                        <span class="actiondel"><a onclick="return confirm('Are you sure to Delete that Page!!');" href="deletepage.php?delpage=<?php echo $result['id']; ?>">Delete</a></span>
                    </td>
                </tr>
            </table>
            </form>
            <?php } } ?>
        </div>
    </div>
</div>
<!-- Load TinyMCE -->
<script src="js/tiny-mce/jquery.tinymce.js" type="text/javascript"></script>
<script type="text/javascript">
    $(document).ready(function () {
        setupTinyMCE();
        setDatePicker('date-picker');
        $('input[type="checkbox"]').fancybutton();
        $('input[type="radio"]').fancybutton();
    });
</script>
<!-- Load TinyMCE -->
      
<?php include 'inc/footer.php'; ?>