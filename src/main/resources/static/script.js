
function validateForm() {
	  var x = document.forms["new-item"]["name"].value;
	  if (x == "") {
	    window.alert("Name must be filled out");
	    return false;
	  }
}

function validateDelete(){
	alert("Item has been deleted.");
	    return false;
}

//	
//	$(document).ready(function(){
//		$('#username').keyup(function() {
//		var usercheck = $(this).val();
//		    $('#usercheck').html('<img src="loading.gif" width="150" />');
//			$.post("check.php", {user_name: usercheck} , function(data)
//			{
//			if (data.status == true)
//			{
//			$('#usercheck').parent('div').removeClass('has-error').addClass('has-success');
//			
//			} else {
//			$('#usercheck').parent('div').removeClass('has-success').addClass('has-error');
//			}
//			$('#usercheck').html(data.msg);
//			},'json');
//		});
//	});