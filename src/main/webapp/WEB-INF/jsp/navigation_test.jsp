<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/common/common_tag.jsp"%>
<%@ include file="/WEB-INF/common/common_css.jsp"%>
<%@ include file="/WEB-INF/common/common_js.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
.border {
	border: 1px solid black;
}
.bg1{
	background-color:red;
}

.select-list dd{
	float: left;
	    margin-right: 5px;
}
.selected{
	background-color: #b5b8bd;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script type="text/javascript">
	$(function($) {
		var child=$('#circle').children();
		child.each(function(index , domEle){
			
			$(domEle).bind("click", function(){
				if($(domEle).hasClass("bg1")){
					$(domEle).removeClass("bg1");
				} else{
					$(domEle).addClass("bg1").siblings().removeClass("bg1");;
				}
			});
			
		});
	});

	$(document).ready(function() { 
		  $("#select1 dd").click(function() { 
		    $(this).addClass("selected").siblings().removeClass("selected"); 
		    if ($(this).hasClass("select-all")) { 
		      $("#selectA").remove(); 
		    } else { 
		      var copyThisA = $(this).clone(); 
		      if ($("#selectA").length > 0) { 
		        $("#selectA a").html($(this).text()); 
		      } else { 
		        $(".select-result dl").append(copyThisA.attr("id", "selectA")); 
		      } 
		    } 
		  }); 
		  $("#select2 dd").click(function() {
		    $(this).addClass("selected").siblings().removeClass("selected"); 
		    if ($(this).hasClass("select-all")) { 
		      $("#selectB").remove(); 
		    } else { 
		      var copyThisB = $(this).clone(); 
		      if ($("#selectB").length > 0) { 
		        $("#selectB a").html($(this).text()); 
		      } else { 
		        $(".select-result dl").append(copyThisB.attr("id", "selectB")); 
		      } 
		    } 
		  }); 
		  
		  $(".select-p").on("click", "#selectA",
		  function() { 
		    $(this).remove(); 
		    $("#select1 .select-all").addClass("selected").siblings().removeClass("selected"); 
		  }); 
		  $(".select-p").on("click", "#selectB",
		  function() { 
		    $(this).remove(); 
		    $("#select2 .select-all").addClass("selected").siblings().removeClass("selected"); 
		  }); 
		  $(".select").on("click", "dd",
		  function() { 
		    if ($(".select-result dd").length > 1) { 
		      $(".select-no").hide(); 
		    } else { 
		      $(".select-no").show(); 
		    } 
		  });
		});
</script>
</head>
<body>
<ul class="select">  
    <li class="select-list">  
      <dl id="select1">  
        <dt>上装：</dt>  
        <dd class="select-all selected"><a href="#">全部</a></dd>  
        <dd><a href="#">针织衫</a></dd>  
        <dd><a href="#">毛呢外套</a></dd>  
        <dd><a href="#">T恤</a></dd>  
        <dd><a href="#">羽绒服</a></dd>  
        <dd><a href="#">棉衣</a></dd>  
        <dd><a href="#">卫衣</a></dd>  
        <dd><a href="#">风衣</a></dd>  
      </dl>  
    </li>  
    <li class="select-list">  
      <dl id="select2">  
        <dt>裤装：</dt>  
        <dd class="select-all selected"><a href="#">全部</a></dd>  
        <dd><a href="#">牛仔裤</a></dd>  
        <dd><a href="#">小脚/铅笔裤</a></dd>  
        <dd><a href="#">休闲裤</a></dd>  
        <dd><a href="#">打底裤</a></dd>  
        <dd><a href="#">哈伦裤</a></dd>  
      </dl>  
    </li>  
    <li class="select-result">  
      <dl class="select-p">  
        <dt>已选条件：</dt>  
        <dd class="select-no">暂时没有选择过滤条件</dd>  
      </dl>  
    </li>  
  </ul>
</body>
</html>