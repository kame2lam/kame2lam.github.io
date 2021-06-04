var ls;
(function (ls) {
	ls.MainScene = function() {
		return {
			"false": function() { return false },
			"%22gameOver%22": function() { return "gameOver" },
			"AISprite7": function() { return AISprite7 },
			"pen": function() { return pen },
			"%22%E5%BE%97%E5%88%86%3A%22%2BSystem.score": function() { return "得分:"+System.score },
			"%22score%22": function() { return "score" },
			"%22equalTo%22": function() { return "equalTo" },
			"%22MainScene%22": function() { return "MainScene" }
		}
	};
})(ls || (ls = {}));