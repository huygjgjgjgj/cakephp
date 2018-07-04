function validate() {
    var username = document.login.username.value;
    var password = document.login.password.value;
    var filter = /[a-zA-Z0-9]/g;

    if( !username){
        document.getElementById('userError').innerHTML = "{__('Tên đăng nhập ko được để trỗng')}";
    }else if (username.length < 8) {
        document.getElementById('userError').innerHTML = "{__('Tên đăng nhập phải lớn hơn 8 ký tự')}";
    } else if (!password) {
        document.getElementById('passError').innerHTML = "{__('Mật khẩu ko được để trỗng')}";
    } else if (password.length < 8) {
        document.getElementById('passError').innerHTML = "{__('Mật khẩu phải lớn hơn 8 ký tự')}";
    } else if (password.match(filter)){
        document.getElementById('passError').innerHTML = "{__('Mật khẩu phải có ít nhất 1 chữ hoa, 1 chữ thường và số')}";
    }else {
        document.getElementById('userError').innerHTML = '';
        document.getElementById('passError').innerHTML = '';
        document.getElementById('formLogin').onsubmit = true;
    }
}