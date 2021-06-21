var ls;
(function (ls) {
    var MovingFollowOnMouseBehaivor = (function (_super) {
        __extends(MovingFollowOnMouseBehaivor, _super);
        function MovingFollowOnMouseBehaivor() {
            _super.call(this);
            this.isTouchBegin = false;
            this.isMoving = false;
            this.speed = 10;
            this.axes = 0;
        }
        var d = __define,c=MovingFollowOnMouseBehaivor,p=c.prototype;
        p.onCreate = function () {
            this.speed = ls.eval_e(this.speed);
            this.axes = ls.eval_e(this.axes);
            this.inst.container.touchEnabled = true;
            this.inst.container.touchChildren = true;
            ls.GameUILayer.stage.addEventListener(egret.TouchEvent.TOUCH_BEGIN, this.onMouseDown, this);
            ls.GameUILayer.stage.addEventListener(egret.TouchEvent.TOUCH_MOVE, this.onMouseMove, this);
            ls.GameUILayer.stage.addEventListener(egret.TouchEvent.TOUCH_END, this.onMouseUp, this);
        };
        p.tick = function () {
            if (!this.isTouchBegin)
                return;
            if (!this.inst.container.touchEnabled) {
                this.inst.container.touchEnabled = true;
                this.inst.container.touchChildren = true;
            }
            this.moveX = this.moveStageX - this.downStageX - this.inst.container.parent.x;
            this.moveY = this.moveStageY - this.downStageY - this.inst.container.parent.y;
            switch (this.axes) {
                case 0:
                    this.inst.x += ((this.moveX + this.downStageX) - this.inst.x) * this.speed / 100;
                    this.inst.y += ((this.moveY + this.downStageY) - this.inst.y) * this.speed / 100;
                    break;
                case 1:
                    this.inst.x += ((this.moveX + this.downStageX) - this.inst.x) * this.speed / 100;
                    break;
                case 2:
                    this.inst.y += ((this.moveY + this.downStageY) - this.inst.y) * this.speed / 100;
                    break;
            }
        };
        p.onMouseDown = function (event) {
            if (this.enabled === 0)
                return;
            this.isTouchBegin = true;
            this.moveX = 0;
            this.moveY = 0;
            this.moveStageX = event.stageX;
            this.moveStageY = event.stageY;
            this.downStageX = event.stageX;
            this.downStageY = event.stageY;
        };
        p.onMouseUp = function (event) {
            if (this.enabled === 0)
                return;
            this.isTouchBegin = false;
            this.isMoving = false;
        };
        p.onMouseMove = function (event) {
            if (this.enabled === 0)
                return;
            if (this.isTouchBegin) {
                this.isMoving = true;
            }
            this.moveStageX = event.stageX;
            this.moveStageY = event.stageY;
        };
        p.saveToJSON = function () {
            var o = _super.prototype.saveToJSON.call(this);
            o.axes = this.axes;
            o.speed = this.speed;
            return o;
        };
        p.loadFromJSON = function (o) {
            if (o) {
                o.axes = this.axes;
                o.speed = this.speed;
                _super.prototype.loadFromJSON.call(this, o);
            }
        };
        p.clone = function () {
            var bh = _super.prototype.clone.call(this);
            bh.axes = this.axes;
            bh.speed = this.speed;
            return bh;
        };
        return MovingFollowOnMouseBehaivor;
    }(ls.BaseBehavior));
    ls.MovingFollowOnMouseBehaivor = MovingFollowOnMouseBehaivor;
    egret.registerClass(MovingFollowOnMouseBehaivor,'ls.MovingFollowOnMouseBehaivor');
})(ls || (ls = {}));
