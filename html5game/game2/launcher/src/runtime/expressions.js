var ls;
(function (ls) {
	ls.MainScene = function() {
		return {
			"%22greaterThan%22": function() { return "greaterThan" },
			"ls.random()*300": function() { return ls.random()*300 },
			"%22%E5%BE%97%E5%88%86%3A%22%2BSystem.score": function() { return "得分:"+System.score },
			"%22timer%22": function() { return "timer" },
			"%22score%22": function() { return "score" },
			"AISprite2912": function() { return AISprite2912 }
		}
	};
})(ls || (ls = {}));