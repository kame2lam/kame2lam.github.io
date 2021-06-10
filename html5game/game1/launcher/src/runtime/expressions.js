var ls;
(function (ls) {
	ls.MainScene = function() {
		return {
			"%22score%22": function() { return "score" },
			"%22newScene2%22": function() { return "newScene2" },
			"%22greaterThan%22": function() { return "greaterThan" },
			"%22ballNum%22": function() { return "ballNum" },
			"AISprite548": function() { return AISprite548 },
			"%22lessOrEqual%22": function() { return "lessOrEqual" }
		}
	};
	ls.newScene2 = function() {
		return {
			"%22MainScene%22": function() { return "MainScene" },
			"%22%E5%BE%97%E5%88%86%3A%22%2BSystem.score": function() { return "得分:"+System.score }
		}
	};
	ls.newScene1 = function() {
		return {
			"%22MainScene%22": function() { return "MainScene" }
		}
	};
})(ls || (ls = {}));