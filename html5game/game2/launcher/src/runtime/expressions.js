var ls;
(function (ls) {
	ls.MainScene = function() {
		return {
			"%22score%22": function() { return "score" },
			"%22greaterThan%22": function() { return "greaterThan" },
			"%22%E5%BE%97%E5%88%86%3A%22%2BSystem.score": function() { return "得分:"+System.score },
			"%22timer%22": function() { return "timer" },
			"%22equalTo%22": function() { return "equalTo" },
			"%22newScene1%22": function() { return "newScene1" },
			"move": function() { return move }
		}
	};
	ls.newScene1 = function() {
		return {
			"%22MainScene%22": function() { return "MainScene" },
			"%22score%22": function() { return "score" },
			"%22%E5%BE%97%E5%88%86%3A%22%2BSystem.score": function() { return "得分:"+System.score },
			"%22timer%22": function() { return "timer" }
		}
	};
})(ls || (ls = {}));