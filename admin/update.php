 <?php
 include("header.php");
 ?>
 <?php
include("connection.php");
$uid=$_GET['update_id'];
$uquery="select * from products where id=" .$uid;
$up_query=mysqli_query($conn,$uquery);
$updata=mysqli_fetch_array($up_query); 
?>

<?php
if(isset($_REQUEST['updates']))
{
    $categories_name=$_POST['categori'];
    $company=$_POST['company'];
    $product_name=$_POST['pname'];
    $decryption=$_POST['dec'];
    $price=$_POST['price'];
    $quantity=$_POST['quantity'];

    if($_FILES['img1']['name']!=''){

    $imgg=$_FILES['img1']['name'];
    $dir="images/";
    $tot=$dir.basename($imgg);  
    move_uploaded_file($_FILES['img1']['tmp_name'],$tot);
    }else{
    $imgg=$_POST['imgd'];
    }

    $update_query="update products set 
        categories_name='".$categories_name."',
        company='".$company."',
        product_name='". $product_name."',
        decryption='". $decryption."',
        price='".$price."',
        quantity='".$quantity."',
        img='".$imgg."'
        where id='".$uid."'
    ";  
    $updatedata=mysqli_query($conn,$update_query);

    if($updatedata=1){

        header("location:add_product.php");
    }
}

?>




<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>GadgetZone_AdminSide</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Boxicons -->
    <link href='https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css' rel='stylesheet'>

    <!-- My CSS -->
    <link rel="stylesheet" href="css/pformstyle.css">
</head>
<body>
<main>
            <div class="head-title">
                <div class="left">
                    <h1>Update</h1>
                    <ul class="breadcrumb">
                        <li>
                            <a href="update.php">Update</a>
                        </li>
                        <li><i class='bx bx-chevron-right' ></i></li>
                        <li>
                            <a class="active" href="update.php">UpdateDetail</a>
                        </li>
                    </ul>
                </div>
            </div>



            <div class="container">

                            <form  method="post" action="" enctype="multipart/form-data" class="registartion-form" onsubmit="return formValidation()">
                                <div class="order">
                                <div class="head">
                                <h1>Update_Form</h1>   
                                </div>
                                <table>
                                    <tr>
                                        <td><label for="categories" >Categories</label></td>
                                        <td>
                                            <select name="categori" id="categories" class="">
                                                <option value="<?php echo $updata['1'];?>" required>Select Product</option>
                                                <option value="laptop">Laptop</option>
                                                <option value="mobile">Mobile</option>
                                                <option value="tv">Telvision</option>
                                                <option value="camera">Camera</option>
                                                <option value="speaker">Speaker</option>
                                            </select>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><label for="company">Company</label></td>
                                    <td>
                                            <select name="company" id="company" class="">
                                                <option value="<?php echo $updata['2'];?>" required>Select Company</option>
                                                <option value="apple">Apple</option>
                                                        <option value="asus">Asus</option>
                                                        <option value="dell">Dell</option>
                                                        <option value="hp">HP</option>
                                                        <option value="lenovo">Lenovo</option>
                                                        <option value="sony">Sony</option>
                                                        <option value="samsung">Samsung</option>
                                                        <option value="lg">LG</option>
                                                        <option value="redmi">Redmi</option>
                                                        <option value="realme">Realme</option>
                                                        <option value="conon">Conon</option>
                                                        <option value="nikon">Nikon</option>
                                                        <option value="kodak">Kodak</option>
                                                        <option value="boss">Boss</option>
                                                        <option value="jbl">JBL</option>
                                                        <option value="klipsch">Klipsch</option>
                                            </select>
                                        </td>
                                    </tr>
                                        <tr>
                                            <td><label for="product_name">Product_Name:</label></td>
                                            <td><input type="text" name="pname" id="name" placeholder="Product name" value="<?php echo $updata['3'];?>" required></td>
                                        </tr>
                                        <tr>
                                            <td><label for="decry">Decryption:</label></td>
                                            <td><textarea name="dec" id="decryption" placeholder="Write decryption..." value="<?php echo $updata['4'];?>" required></textarea></td>
                                        </tr>
                                        <tr>
                                            <td><label for="price">Price:</label></td>
                                            <td><input type="text" name="price" id="price" placeholder="Price" value="<?php echo $updata['5'];?>" required></td>
                                        </tr>
                                        <tr>
                                            <td><label for="quantity">Quantity:</label></td>
                                            <td><input type="text" name="quantity" id="quantity" placeholder="Quantity" value="<?php echo $updata['6'];?>" required></td>
                                        </tr>
                                        <tr>
                                            <td><label for="imageg">Image:</label></td>
                                            <td><input type="file" name="img1" id="img" placeholder="Image" required></td>
                                            <tr>
                                                <td><img src="images/<?php echo $updata['8']; ?>" height="100" width="100" />
                                                <input type="hidden" name="imgd" value="<?php echo $updata['8']; ?>" required/></td>
                                            </tr>
                                        </tr>
                                        <tr>
                                            <td colspan="2"><input type="submit" name="updates" class="submit" value="UPDATE" /></td>
                                        </tr>   
                                </table>
                            </div>
                            </form> 
                        </div>
               </main>



</body>
</html>