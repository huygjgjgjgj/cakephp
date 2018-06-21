<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Register</title>
	<?php echo $this->html->css(array('/Login/css/style.css')) ?>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
    <?php echo $this->Flash->render('error'); ?>
	<form class="form" name="register" method="post">
		<div class="form-group">
	    	<label for="Name">Fullname *</label>
	    	<input type="text" name='Contact[fullname]' value="<?php if(!empty($data['Contact']['fullname'])){echo $data['Contact']['fullname'];} ?>" class="form-control" id="name" aria-describedby="nameHelp" placeholder="Nhập họ tên" required>
            <?php
                if(!empty($errors['Contact']['fullname'])){
                    echo "<span>".$errors['Contact']['fullname'][0]."</span>";
                }
            ?>
	  	</div>

	  	<div class="form-group">
	    	<label for="User">Username *</label>
	    	<input type="text" class="form-control" name="Account[username]" value="<?php if(!empty($data['Account']['username'])){echo $data['Account']['username'];} ?>"  id="username" aria-describedby="userHelp" placeholder="Nhập user" required>
            <?php
            if(!empty($errors['Account']['username'])){
                echo "<span>".$errors['Account']['username'][0]."</span>";
            }
            ?>
	  	</div>

		<div class="form-group">
	    	<label for="exampleInputEmail1">Email address *</label>
	    	<input type="email" class="form-control" name="Contact[Email]" id="email" value="<?php if(!empty($data['Contact']['Emai'])){echo $data['Contact']['Emai'];} ?>" aria-describedby="emailHelp" placeholder="Nhập email" required>
	  	</div>

	  	<div class="form-group">
		    <label for="exampleInputPassword1">Password *</label>
		    <input type="password" name="Account[password]" class="form-control" id="Password1" placeholder="Password" required>
	  	</div>

	  	<div class="form-group">
		    <label for="exampleInputPassword1">Enter the password *</label>
		    <input type="password" class="form-control" id="Password2" placeholder="Password" required>
	  	</div>

	  	<div class="form-group">
	    	<label for="address">Address *</label>
	    	<input type="text" class="form-control" name="Contact[address]"  value="<?php if(!empty($data['Contact']['address'])){echo $data['Contact']['address'];} ?>" id="address" aria-describedby="addressHelp" placeholder="Nhập địa chỉ" required>
	  	</div>

	  	<div class="form-group">
		    <label for="city">Choose the city</label>
		    <select class="form-control" id="city" name="city">
			    <option>TP Hà Nội</option>
			    <option>TP Hồ Chí Minh</option>
			    <option>Nghệ An</option>
			    <option>Đà Nắng</option>
			    <option>Vũng Tàu</option>
		    </select>
		</div>

		<div class="form-group">
	    	<label for="CMT">CMT *</label>
	    	<input type="number" class="form-control" name="cmt" id="Contact[cmt]" value="<?php if(!empty($data['Contact']['cmt'])){echo $data['Contact']['cmt'];} ?>" aria-describedby="addressHelp" placeholder="Nhập số chứng minh" required>
	  	</div>

	  	<div class="form-check">
		    <input type="checkbox" class="form-check-input" id="exampleCheck1" required>
		    <label class="form-check-label" for="exampleCheck1">Check me out</label>
	  	</div>

	  	<button type="submit" class="btn btn-primary" onclick="validate()">Register</button>

       <script type="text/javascript" charset="utf-8">
       		function validate(){
       			var username = document.register.username.value;
       			var cmt = document.register.cmt.value;
       			if(username.length < 8){
       				alert("User name phải lớn 8 ký tự");
       			}
       			if(cmt.length < 9){
       				alert("Chứng minh thư phải lớn 9 ký tự");
       			}
       		}
       	</script>
	</form>
</body>
</html>