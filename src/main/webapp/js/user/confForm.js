/**
 * 
 */

function paperAnim() {
		var paper = document.getElementById("paper-container");
		paper.className = "move-up";
	}
	function paperAnimOut() {
		var paper = document.getElementById("paper-container");
		paper.className = "move-down";
	}

	$(".mat-input").focus(function() {
		$(this).parent().addClass("is-active is-completed");
	});

	$(".mat-input").focusout(function() {
		if ($(this).val() === "")
			$(this).parent().removeClass("is-completed");
		$(this).parent().removeClass("is-active");
	})
	
	
	
	var temp = location.href.split("?");
	var data = temp[1].split("=");
	var userEmail = data[1];
	
	$("#startBtn").click(function() {
		
		alert("넘어옴???" + userEmail);
		$.ajax({
			url : "/bit-finalT3/user/conf.do",
			dataType : "json",
			data : {
				passNo : $("#passNo").val(),
				userEmail : userEmail
			},
			type : "POST"
		}).done(function(result) {
			if (result == "yes") {
				swal("회원가입 완료!", "확인버튼 누르면 메인페이지로 이동합니다", "회원가입 완료");
				self.close();
				
				
			}else {
				swal("인증번호가 틀렸습니다.");
			}
			
		})

	})
	
	