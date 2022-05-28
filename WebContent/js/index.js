$(function(){
    // var oValiLen = $("#register-form").find("input").size();
    // var oValArray = new Array();
    // for(var i=0;i<oValiLen-1;i++){
    //     oValArray[i] = $("#register-form").find("input").eq(i).prop("id"); 
    //     oValArray[i] = '#'+oValArray[i] ;
    // };

	
    
    

	$("#register-form").validate();
    

	$("#username").rules('add',{
		required:true,
		minlength:4,
        maxlength:20,
		messages:{
			required:'Please input username！',
			minlength:'Username cannot be less than {0} digits！',
            maxlength:'Username cannot  more than {0} digits'
		}
	});

    $("#password").rules('add',{
        required:true,
        minlength:6,
        maxlength:20,
        pass:true,
        messages:{
            required:'Please input a 6-20 digit password which includes numbers and letters',
            minlength:'Password cannot be less than 6 digits',
            maxlength:'Password cannot exceed 20 digits',
            pass:'Password can not contain symbols other than numbers and letters'
        }
    });
    //确认密码
    $("#notpass").rules('add',{
        required:true,
        equalTo:'#password',
        messages:{
            required:'Please input the password again',
            equalTo:'Password is inconsistent',
        }
    });
   
    // 邮箱自动补全
    
    $("#email").autocomplete({
        delay:0,
        //autoFoucs:true,
        source:function(request,response){
            var hosts = ['student.xjtlu.edu.cn'],
                term = request.term, //获取用户输入的内容
                name =term,          //邮箱的用户名
                host ='',            //邮箱的域名
                ix = term.indexOf('@'),  //@的位置
                result = [];
                
            //当有@的时候，重新分配用户名和域名
            if(ix > -1){
                name =term.slice(0,ix);
                host = term.slice(ix+1);
            }
            if(name){
                //如果用户已经输入@和后面的域名，
                //那么就找到相关的提示，比如bnbbs@1,就提示bnbbs@163.com
                //如果用户还没有输入@，那就提示所有域名
                var findedHosts = [];
                if(host){
                    findedHosts = $.grep(hosts,function(value,index){
                        return  value.indexOf(host) > -1
                    });
                }else{
                    findedHosts =hosts;
                }
                var findedResult = $.map(findedHosts,function(value,index){
                    return name+'@'+value;
                })
                if(findedResult==''){
                    result.push(term)
                }

                result = result.concat(findedResult);
            }
            response(result);

        }
    });
    
    
    $("#clubemail").autocomplete({
        delay:0,
        //autoFoucs:true,
        source:function(request,response){
            var hosts = ['xjtlu.edu.cn'],
                term = request.term, //获取用户输入的内容
                name =term,          //邮箱的用户名
                host ='',            //邮箱的域名
                ix = term.indexOf('@'),  //@的位置
                result = [];
                
            //当有@的时候，重新分配用户名和域名
            if(ix > -1){
                name =term.slice(0,ix);
                host = term.slice(ix+1);
            }
            if(name){
                //如果用户已经输入@和后面的域名，
                //那么就找到相关的提示，比如bnbbs@1,就提示bnbbs@163.com
                //如果用户还没有输入@，那就提示所有域名
                var findedHosts = [];
                if(host){
                    findedHosts = $.grep(hosts,function(value,index){
                        return  value.indexOf(host) > -1
                    });
                }else{
                    findedHosts =hosts;
                }
                var findedResult = $.map(findedHosts,function(value,index){
                    return name+'@'+value;
                })
                if(findedResult==''){
                    result.push(term)
                }

                result = result.concat(findedResult);
            }
            response(result);

        }
    });


   /* //邮箱验证规则
    $.validator.addMethod('email',function(value,element){
        var email =  /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+((\.[a-zA-Z0-9_-]{2,3}){1,2})$/;
        return this.optional(element)||(email.test(value));
    });*/
    
    //手机验证规则
    $.validator.addMethod('phone',function(value,element){
        var phone = /^1[3|4|5|7|8][0-9]\d{8}$/;
        return this.optional(element)||(phone.test(value));
    });
    //密码验证规则
    $.validator.addMethod('pass',function(value,element){
        var pass = /^[\w]+$/
        return this.optional(element)||(pass.test(value));
    });

})
 function check(){
   	$("#Identity").val($("#IdentityP").text()); 
  	    $("#Gender").val($("#GenderP").text());
  	    $("#Grade").val($("#GradeP").text());
  	    $("#Major").val($("#MajorP").text());
  	    console.log($("#MajorP").text());
  	    return true;
   }