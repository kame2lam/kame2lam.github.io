var ls;
(function (ls) {
    var AIWebStorage = (function (_super) {
        __extends(AIWebStorage, _super);
        function AIWebStorage() {
            _super.call(this);
            this.prefix = "";
            if (AIWebStorage._instance != null) {
                throw new Error("WebStorage 为单例！！！");
            }
            this.name = "WebStorage";
            AIWebStorage._instance = this;
        }
        var d = __define,c=AIWebStorage,p=c.prototype;
        d(AIWebStorage, "instance"
            ,function () {
                if (this._instance == null)
                    this._instance = new AIWebStorage();
                return this._instance;
            }
        );
        p.initialize = function () {
            if (typeof localStorage === "undefined")
                ls.assert(true, "当前浏览器不支持本地存储~");
            if (typeof sessionStorage === "undefined")
                ls.assert(true, "当前浏览器不支持会话存储~");
        };
        p.localStorageEnabled = function (event) {
            return { instances: [this], status: (typeof localStorage === "undefined") };
        };
        p.sessionStorageEnabled = function (event) {
            return { instances: [this], status: (typeof sessionStorage === "undefined") };
        };
        p.onQuotaExceeded = function (event) {
            return { instances: [this], status: true };
        };
        p.localStorageExists = function (event) {
            var key = ls.eval_e(event.key);
            return { instances: [this], status: localStorage.getItem(this.prefix + key) != null };
        };
        p.sessionStorageExists = function (event) {
            var key = ls.eval_e(event.key);
            return { instances: [this], status: sessionStorage.getItem(this.prefix + key) != null };
        };
        p.compareKeyText = function (event) {
            var key = ls.eval_e(event.key);
            var value = localStorage.getItem(this.prefix + key) || "";
            var compareValue = ls.eval_e(event.value);
            return { instances: [this], status: ls.compare(value, event.operationType, compareValue) };
        };
        p.storeLocal = function (key, data) {
            try {
                key = ls.eval_e(key);
                data = ls.eval_e(data);
                localStorage.setItem(this.prefix + key, data);
            }
            catch (error) {
                this.dispatchEvent(new ls.TriggerEvent(ls.TriggerEvent.TRIGGER, this.onQuotaExceeded));
            }
        };
        p.storeSession = function (key, data) {
            try {
                key = ls.eval_e(key);
                data = ls.eval_e(data);
                sessionStorage.setItem(this.prefix + key, data);
            }
            catch (error) {
                this.dispatchEvent(new ls.TriggerEvent(ls.TriggerEvent.TRIGGER, this.onQuotaExceeded));
            }
        };
        p.removeLocal = function (key) {
            key = ls.eval_e(key);
            localStorage.removeItem(this.prefix + key);
        };
        p.removeSession = function (key) {
            key = ls.eval_e(key);
            sessionStorage.removeItem(this.prefix + key);
        };
        p.clearLocal = function () {
            localStorage.clear();
        };
        p.clearSession = function () {
            sessionStorage.clear();
        };
        p.jsonLoad = function () {
        };
        p.localAt = function (key) {
            key = ls.eval_e(key);
            return localStorage.getItem(key);
        };
        p.sessionAt = function (key) {
            key = ls.eval_e(key);
            return sessionStorage.getItem(key);
        };
        return AIWebStorage;
    }(ls.AIObject));
    ls.AIWebStorage = AIWebStorage;
    egret.registerClass(AIWebStorage,'ls.AIWebStorage');
    var WebStorageLocalStorageEnabledEvent = (function (_super) {
        __extends(WebStorageLocalStorageEnabledEvent, _super);
        function WebStorageLocalStorageEnabledEvent() {
            _super.call(this);
        }
        var d = __define,c=WebStorageLocalStorageEnabledEvent,p=c.prototype;
        return WebStorageLocalStorageEnabledEvent;
    }(ls.BaseEvent));
    ls.WebStorageLocalStorageEnabledEvent = WebStorageLocalStorageEnabledEvent;
    egret.registerClass(WebStorageLocalStorageEnabledEvent,'ls.WebStorageLocalStorageEnabledEvent');
    var WebStorageSessionStorageEnabledEvent = (function (_super) {
        __extends(WebStorageSessionStorageEnabledEvent, _super);
        function WebStorageSessionStorageEnabledEvent() {
            _super.call(this);
        }
        var d = __define,c=WebStorageSessionStorageEnabledEvent,p=c.prototype;
        return WebStorageSessionStorageEnabledEvent;
    }(ls.BaseEvent));
    ls.WebStorageSessionStorageEnabledEvent = WebStorageSessionStorageEnabledEvent;
    egret.registerClass(WebStorageSessionStorageEnabledEvent,'ls.WebStorageSessionStorageEnabledEvent');
    var WebStorageOnQuataExceededEvent = (function (_super) {
        __extends(WebStorageOnQuataExceededEvent, _super);
        function WebStorageOnQuataExceededEvent() {
            _super.call(this);
        }
        var d = __define,c=WebStorageOnQuataExceededEvent,p=c.prototype;
        return WebStorageOnQuataExceededEvent;
    }(ls.BaseEvent));
    ls.WebStorageOnQuataExceededEvent = WebStorageOnQuataExceededEvent;
    egret.registerClass(WebStorageOnQuataExceededEvent,'ls.WebStorageOnQuataExceededEvent');
    var WebStorageLocalStorageExists = (function (_super) {
        __extends(WebStorageLocalStorageExists, _super);
        function WebStorageLocalStorageExists() {
            _super.call(this);
        }
        var d = __define,c=WebStorageLocalStorageExists,p=c.prototype;
        return WebStorageLocalStorageExists;
    }(ls.BaseEvent));
    ls.WebStorageLocalStorageExists = WebStorageLocalStorageExists;
    egret.registerClass(WebStorageLocalStorageExists,'ls.WebStorageLocalStorageExists');
    var WebStorageSessionStorageExists = (function (_super) {
        __extends(WebStorageSessionStorageExists, _super);
        function WebStorageSessionStorageExists() {
            _super.call(this);
        }
        var d = __define,c=WebStorageSessionStorageExists,p=c.prototype;
        return WebStorageSessionStorageExists;
    }(ls.BaseEvent));
    ls.WebStorageSessionStorageExists = WebStorageSessionStorageExists;
    egret.registerClass(WebStorageSessionStorageExists,'ls.WebStorageSessionStorageExists');
    var WebStorageCompareKeyTextEvent = (function (_super) {
        __extends(WebStorageCompareKeyTextEvent, _super);
        function WebStorageCompareKeyTextEvent() {
            _super.call(this);
        }
        var d = __define,c=WebStorageCompareKeyTextEvent,p=c.prototype;
        return WebStorageCompareKeyTextEvent;
    }(ls.BaseEvent));
    ls.WebStorageCompareKeyTextEvent = WebStorageCompareKeyTextEvent;
    egret.registerClass(WebStorageCompareKeyTextEvent,'ls.WebStorageCompareKeyTextEvent');
})(ls || (ls = {}));
