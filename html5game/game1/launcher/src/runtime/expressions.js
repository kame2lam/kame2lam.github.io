var ls;
(function (ls) {
	ls.newScene1 = function() {
		return {
			"%22MainScene%22": function() { return "MainScene" }
		}
	};
	ls.MainScene = function() {
		return {
			"AISprite548": function() { return AISprite548 },
			"%22newScene2%22": function() { return "newScene2" },
			"%22lessOrEqual%22": function() { return "lessOrEqual" },
			"%22greaterThan%22": function() { return "greaterThan" },
			"%22score%22": function() { return "score" },
			"%22ballNum%22": function() { return "ballNum" }
		}
	};
	ls.newScene2 = function() {
		return {
			"%22MainScene%22": function() { return "MainScene" },
			"%22%E5%BE%97%E5%88%86%3A%22%2BSystem.score": function() { return "得分:"+System.score }
		}
	};
})(ls || (ls = {}));