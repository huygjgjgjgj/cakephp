<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Login</title>
    {$this->html->css(array('/Login/css/style.css','/Login/css/bootstrap.min.css'))}
<!--    {$this->html->script(array('/Login/js/script.js'))}-->
</head>
<body>
    <div class="trans" style=" width: 200px; float:right; margin-top: -20px">
        {$this->html->link('Tiếng việt', '/vie/users/login', null ,null, false)}

        {$this->html->link('English', '/eng/users/login', null ,null, false)}
    </div>

	<form class="form" id="formLogin" method="post" name="login" onsubmit="return false;">
		<div class="form-group userfrom" >
	    	<label for="User">{__('username')}</label>
	    	<input type="text" class="form-control" id="user" name="username"  aria-describedby="userHelp" placeholder="{__('username')}">
            <span id="userError"></span>
	  	</div>

	  	<div class="form-group">
		    <label for="exampleInputPassword1">{__('password')}</label>
		    <input type="password" class="form-control" name="password" id="password" placeholder="{__('password')}">
            <span id="passError"></span>
	  	</div>

		<div class="form-check">
		    <input type="checkbox" class="form-check-label" name="save" id="save">
		    <label class="form-check-label" for="exampleCheck1">{__('save')} {__('pass')}</label>
	  	</div>

		<div class="form-group">
			<a href="#" class="forgot">{__('forgot')} {__('pass')}</a>
		</div>

	  	<button type="submit" name="login" class="btn btn-primary" onclick="validate()">{__(login)}</button>
        </br>
        <span class="error" style="color: #9E2424 !important;">{$error}</span>

	</form>
<script type="text/javascript" charset="UTF-8">
    function validate() {
        var username = document.login.username.value;
        var password = document.login.password.value;
        var filter = /[a-zA-Z0-9]/g;

        if( !username){
            document.getElementById('userError').innerHTML = "{__('Tên đăng nhập ko được để trỗng')}";
        }else if (username.length < 8) {
            document.getElementById('userError').innerHTML = "{__('Tên đăng nhập phải lớn hơn 8 ký tự')}";
        } else if (!password) {
            document.getElementById('userError').innerHTML = '';
            document.getElementById('passError').innerHTML = "{__('Mật khẩu ko được để trỗng')}";
        } else if (password.length < 8) {
            document.getElementById('userError').innerHTML = '';
            document.getElementById('passError').innerHTML = "{__('Mật khẩu phải lớn hơn 8 ký tự')}";
        // } else if (password.match(filter)){
        //     document.getElementById('passError').innerHTML = "{__('Mật khẩu phải có ít nhất 1 chữ hoa, 1 chữ thường và số')}";
        }else {
            document.getElementById('userError').innerHTML = '';
            document.getElementById('passError').innerHTML = '';
            document.getElementById('formLogin').onsubmit = true;
        }
    }
</script>
</body>
</html>