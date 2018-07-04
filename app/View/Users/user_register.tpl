<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Register</title>
	{$this->html->css(array('/Login/css/style.css','/Login/css/bootstrap.min.css'))}
</head>
<body>
    {$this->Flash->render('error')}
    <div class="trans" style=" width: 200px; float:right; margin-top: 10px;">
        {$this->html->link('Tiếng việt ', '/vie/users/userRegister', null ,null, false)}

        {$this->html->link('English', '/eng/users/userRegister', null ,null, false)}
    </div>
	<form class="form" name="register" method="post">
		<div class="form-group">
	    	<label for="Name">{__('fullname')} *</label>
	    	<input type="text" name='Contact[fullname]' value="{if !empty($data['Contact']['fullname'])} {$data['Contact']['fullname']} {/if}" class="form-control" id="name" aria-describedby="nameHelp" placeholder="{__('fullname')}">
                {if !empty($errors['Contact']['fullname'])}
                    <span> {$errors['Contact']['fullname'][0]} </span>
                {/if}
	  	</div>

	  	<div class="form-group">
	    	<label for="User">{__('username')} *</label>
	    	<input type="text" class="form-control" name="Account[username]" value="{if !empty($data['Account']['username'])} {$data['Account']['username']} {/if}"  id="username" aria-describedby="userHelp" placeholder="{__('username')}" >
            {if !empty($errors['Account']['username'])}
                <span> {$errors['Account']['username'][0]} </span>
            {/if}
	  	</div>

		<div class="form-group">
	    	<label for="exampleInputEmail1">{__('address_mail')} *</label>
	    	<input type="email" class="form-control" name="Contact[email]" id="email" value="{if !empty($data['Contact']['email'])} {$data['Contact']['email']} {/if}" aria-describedby="emailHelp" placeholder="{__('address_mail')}" >
            {if !empty($errors['Contact']['email'])}
                <span> {$errors['Contact']['email'][0]} </span>
            {/if}
        </div>

	  	<div class="form-group">
		    <label for="exampleInputPassword1">{__('password')} *</label>
		    <input type="password" name="Account[password]" class="form-control" id="Password1" placeholder="{__('password')}" >
	  	</div>

	  	<div class="form-group">
		    <label for="exampleInputPassword1">{__('pass_confirm')} *</label>
		    <input type="password" name="Account[password_confirm]" class="form-control" id="Password2" placeholder="{__('password')}" >
            {if !empty($errors['Account']['password'])}
                <span> {$errors['Account']['password'][0]} </span>
            {/if}

	  	</div>

	  	<div class="form-group">
	    	<label for="address">{__('address')} *</label>
	    	<input type="text" class="form-control" name="Contact[address]"  value="{if !empty($data['Contact']['address'])} {$data['Contact']['address']} {/if}" id="address" aria-describedby="addressHelp" placeholder="{__('address')}" >
	  	</div>

	  	<div class="form-group">
		    <label for="city">{__('city')}</label>
		    <select class="form-control" id="city" name="Contact[city]">
			    <option>TP Hà Nội</option>
			    <option>TP Hồ Chí Minh</option>
			    <option>Nghệ An</option>
			    <option>Đà Nắng</option>
			    <option>Vũng Tàu</option>
		    </select>
		</div>

		<div class="form-group">
	    	<label for="CMT">CMT *</label>
	    	<input type="number" class="form-control" name="Contact[cmt]" id="cmt" value="{if !empty($data['Contact']['cmt'])} {$data['Contact']['cmt']} {/if}" aria-describedby="addressHelp" placeholder="{__('cmt')}" >
            {if !empty($errors['Account']['cmt'])}
                <span> {$errors['Account']['cmt'][0]} </span>
            {/if}
        </div>


	  	<button type="submit" class="btn btn-primary" onclick="validate()">{__('register')}</button>
	</form>

</body>
</html>