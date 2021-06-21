var ls;
(function (ls) {
	ls.MainScene = function() {
		return {
			"moveCircle": function() { return moveCircle },
			"movePin": function() { return movePin },
			"%22level%22": function() { return "level" },
			"%22newScene3%22": function() { return "newScene3" },
			"%22greaterThan%22": function() { return "greaterThan" },
			"System.pinNum": function() { return System.pinNum },
			"%22%E9%97%9C%E5%8D%A1%3A%22%2BSystem.level": function() { return "關卡:"+System.level },
			"%22equalTo%22": function() { return "equalTo" },
			"%22newScene2%22": function() { return "newScene2" },
			"%22pinNum%22": function() { return "pinNum" }
		}
	};
	ls.newScene1 = function() {
		return {
			"%22level%22": function() { return "level" },
			"5%2BSystem.level*2": function() { return 5+System.level*2 },
			"%22pinNum%22": function() { return "pinNum" },
			"%22%E9%97%9C%E5%8D%A1%3A%22%2BSystem.level": function() { return "關卡:"+System.level },
			"%22MainScene%22": function() { return "MainScene" }
		}
	};
	ls.newScene3 = function() {
		return {
			"%22newScene1%22": function() { return "newScene1" }
		}
	};
	ls.newScene2 = function() {
		return {
			"%22newScene1%22": function() { return "newScene1" }
		}
	};
})(ls || (ls = {}));