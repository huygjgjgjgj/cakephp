<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>{$title}</title>
    {$this->html->css(array('/Login/css/style.css','/Login/css/bootstrap.min.css'))}
</head>
<body>
<div class='container'>
    {if $data == null}
        not data
    {/if}
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
            </thead>
            {foreach $data as $key => $datum}
            <tr>
                <td>{$datum['Contact']['fullname']}</td>
                <td>{$datum['Account']['username']}</td>
                <td>{$datum['Contact']['email']}</td>
                <td>{$datum['Contact']['address']}</td>
                <td>{$datum['Contact']['city']}</td>
                <td>{$datum['Contact']['cmt']}</td>
            </tr>
            {/foreach}

        </table>
        {$this->Paginator->prev('« Previous ', null, null)} |
        {$this->Paginator->numbers()} |
        {$this->Paginator->next(' Next »', null, null)}
        page {$this->Paginator->counter()}
        </br>
        <a href="logout"><button type="submit" class="btn btn-primary">Đăng xuất</button></a>
</div>
</body>
</html>
