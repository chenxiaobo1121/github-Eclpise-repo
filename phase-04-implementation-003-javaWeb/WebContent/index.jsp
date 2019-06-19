<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
.background1 {
	background-image: url(/static/imgs/pic001.jpg);
	background-color: #000000;
	background-size: 100%;
    background-repeat: no-repeat;
}
#intr{
  position:absolute;
  left: 40%;
  bottom: 30px;
  opacity: 0;
}
.firstlinetop{
  width: 100vw;
  margin: 5vw 0 0 0;
  display: flex;
  justify-content: center;
  flex-direction: column;
  font-weight: 700;
}
.earth{
  width: 100vw;
  display: flex;
  justify-content: center;
  margin: 5vw 0 0 0;
}
#firstline{
  font-size: 20px;
  color: white;
  text-align: center;
}
</style>
<script>
	function run(clickedObj) {
		$("#firstline").fadeOut('slow');
		$('#intr')[0].pause();
		$('#poem')[0].play();
		  $('#poem-txt').fadeIn('slow')
		  $('#poem-txt').animate({
			opacity : '0',
		}, 3000);
		  $("#intr").animate({
			 opacity : '1',
		  }, 2000);
		$(clickedObj).animate({
			width : '600px',
			height: '600px',
			opacity : '0.4',
			left : '30%',
			top : '5%',
			position: 'absolute'
		}, 2000);
		setTimeout($(clickedObj).animate({
			width : '100px',
			height: '100px',
			opacity : '0.5',
			left : '85%',
			top : '5%',
			position: 'absolute'
		}, 2000), 1000)
		
		//$('#waiting')[0].play();
		$("#moviebox").show('slow');
		$("#movie")[0].play();
	}
	function onVideoEnd(){
		
		$("#moviebox").fadeOut('slow');
		
		$("#hornor").fadeIn('slow');

		$("#hornor").animate({
			fontSize : '30px',
		    top:  '25%',
		    left: '50px'
		}, 3000);
		
		$('#poem-txt').fadeOut('slow');
		
		$('#poem-txt').animate({
			bottom : '100px',
			right : '100px'
		}, 18000);
		
		$('#waiting')[0].play();
	}
	function onWaitingAudioEnd(){
		$('#intr')[0].play();	
	}
</script>
<meta charset="UTF-8">
<title>The Wandering Earth</title>
<script src="/static/jquery.min.js"></script>
</head>
<body class="background1">
	<audio id="intr" controls="controls"
		src="/static/audio/introduction.mp3" autoplay="autoplay"></audio>
	<audio id="poem" src="/static/audio/wanderingEarch-poem.mp3"
		preload="auto"></audio>
    <div class="firstlinetop" id="firstline">
      <p style="font-size: 40px; color: #00000">流浪地球</p>
      <p>160103104915 计科1班 陈晓博  修改版</p>
      <p>点击下方的地球，可以开始悲壮的流浪！！</p>
    </div>
	<audio id="waiting" src="/static/audio/waiting.mp3" preload="auto" onended="onWaitingAudioEnd();"></audio>
	<div id="poem-txt"
		style="display: none; font-size: 20px; font-weight: 700; color: white; position:absolute; left :40%;bottom:120px" >
		诗词版"流浪地球"<br /> <span style="font-size: 13px; color: blue">
			-陈晓博 </span><br /> <br /> 西风吹皱东方河，万年地球白发多。 <br /> 流浪星际家何去，满船清梦出银河。
	</div>
	<div class="earth">
	  <img src="/static/imgs/earth.png"
		style=" width: 150px;position:absolute;height: 150px;"
		onclick="run(this);return false" 
		title="开始流浪 ！"
		/>
	</div>
	
	<div id="moviebox" style="margin-top: 30px; display: none"
		align="center">
		<video id="movie" style="height:35vw;margin-top: 0vw;" controls="controls"
			src="/static/video/movie.mp4" onended="onVideoEnd();" />
	</div>
	<div id="hornor" style="display:none;position:absolute;left:10x; bottom:10px;color:white;font-size:24px" align="center">2019年发生了很多大事，谨以此向<span style="color:red">《流浪地球》</span>和<span style="color:orange">华为公司</span>表示致敬 !  <br/>本网页未来将放在以下网站 sdlc.huaku-2019.xyz (华为公司的云服务器) <br/> huaku-2019, 2019 年，《流浪地球》 和华为很酷！ <br/>也许华为的崛起意味着，在人类未来需要流浪地球时，东方大国将作出巨大的贡献 ！</div>
</body>
</html>