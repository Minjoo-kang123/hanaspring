
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script>
    let cust_add = {
        url:'',
        init:function(url){
            this.url = url;
            $('#register_form > button').click(()=>{
                let custId = $('#custId').val();
                let pwd = $('#pwd').val();
                let name = $('#name').val();
                if(custId == '' || custId == null){
                    alert('ID를 입력 하세요');
                    $('#custId').focus();
                    return;
                }
                if(pwd == '' || pwd == null){
                    alert('PWD를 입력 하세요');
                    $('#pwd').focus();
                    return;
                }
                if(name == '' || name == null){
                    alert('NAME를 입력 하세요');
                    $('#name').focus();
                    return;
                }
                this.send();
            });
        },
        send:function(){
            $('#register_form').attr({
                'method':'post',
                'action':this.url
            });
            $('#register_form').submit();
        }
    };
    $(function(){
        cust_add.init('<c:url value="/cust/addimpl"/>');
    });

</script>
<div class="container">
    <h2>Register Page</h2>
    <form id="register_form">
        <div class="form-group">
            <label for="custId">ID:</label>
            <input type="text" class="form-control" id="custId" placeholder="Enter id" name="custId">
            <button type="button" class="btn btn-primary">ID CHECK</button>

        </div>
        <div class="form-group">
            <label for="pwd">Password:</label>
            <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pwd">

        </div>
        <div class="form-group">
            <label for="name">Name:</label>
            <input type="text" class="form-control" id="name" placeholder="Enter name" name="name">

        </div>
        <button id = "btn_register" type="button" class="btn btn-primary">REGISTER</button>
    </form>
</div>