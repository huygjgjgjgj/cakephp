<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>info</title>
    {$this->html->css(array('/Login/css/style.css','/Login/css/bootstrap.min.css'))}
</head>
<body>
    <div class="trans" style=" width: 200px; float:right; margin-top: 10px">
        {$this->html->link('Tiếng việt', '/vie/users/info', null ,null, false)}

        {$this->html->link('English', '/eng/users/info', null ,null, false)}
    </div>
<div class='container'>

    {if $data == null}
        {__('no')} {__('data')}
    {/if}
    <h2>{__('data table')}</h2>

        <table class="table">
            <thead>
            <tr>
                <th>{__('fullname')}</th>
                <th>{__('username')}</th>
                <th>Email</th>
                <th>{__('address')}</th>
                <th>{__('city')}</th>
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
        {$this->Paginator->prev("« {__('pre')} ", null, null)} |
        {$this->Paginator->numbers()} |
        {$this->Paginator->next("{__('next')} »", null, null)}
        {__('page ')} {$this->Paginator->counter()}
        </br>
        <a href="logout"><button type="submit" class="btn btn-primary">Đăng xuất</button></a>

</div>
</body>
</html>
