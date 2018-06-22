<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>info</title>
	<link rel="stylesheet" href="">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
</head>
<body>
<?php
    if($data == null){
        echo 'not data';
    }else {
        echo '
	        <h2>Basic Table</h2>
            <p>show cơ sở dữ liệu:</p>
            <table class="table">
                <thead>
                <tr>
                    <th>Fullname</th>
                    <th>Username</th>
                    <th>Email</th>
                    <th>Address</th>
                    <th>City</th>
                    <th>Cmt</th>
                </tr>
            </thead>';

        foreach ($data as $item) {
            echo '<tr>';
            echo '<td>' . $item['Contact']['fullname'] . '</td>';
            echo '<td>' . $item['Account']['username'] .'</td >';
            echo '<td>' . $item['Contact']['email'] . '</td>';
            echo '<td>' . $item['Contact']['address'] . '</td>';
            echo '<td>' . $item['Contact']['city'] . '</td>';
            echo '<td>' . $item['Contact']['cmt'] . '</td>';
            echo '</tr>';
        }
        echo '</tbody>
        </table>';
    }
?>

<?php
    echo $this->Paginator->prev('« Previous ', null, null, array('class' => 'disabled'));
    echo " | ".$this->Paginator->numbers()." | ";
    echo $this->Paginator->next(' Next »', null, null, array('class' => 'disabled'));
    echo " Page ".$this->Paginator->counter();
?>
</br>
  <a href="logout"><button type="submit" class="btn btn-primary">Đăng xuất</button></a>

</body>
</html>