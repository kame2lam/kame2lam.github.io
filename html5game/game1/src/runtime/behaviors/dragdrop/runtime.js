var ls;
(function (ls) {
    var DragDropBehaivor = (function (_super) {
        __extends(DragDropBehaivor, _super);
        function DragDropBehaivor() {
            _super.call(this);
            this.isTouchBegin = false;
            this.localX = 0;
            this.localY = 0;
            this.startStageX = 0;
            this.startStageY = 0;
            this.isMoving = false;
        }
        var d = __define,c=DragDropBehaivor,p=c.prototype;
        p.onCreate = function () {
            if (this.inst == null)
                return;
            this.axes = ls.eval_e(this.axes);
            this.enabled = ls.eval_e(this.enabled);
            this.inst.container.touchChildren = this.inst.container.touchEnabled = true;
            this.inst.container.addEventListener(egret.TouchEvent.TOUCH_BEGIN, this.onMouseDown, this);
            ls.GameUILayer.stage.addEventListener(egret.TouchEvent.TOUCH_END, this.onMouseUp, this);
            ls.GameUILayer.stage.addEventListener(egret.TouchEvent.TOUCH_MOVE, this.onMouseMove, this);
        };
        p.isDragging = function ($isDraggingEvent) {
            return { instances: [this.inst], status: this.isMoving };
        };
        p.onDragStart = function ($onDragStartEvent) {
            return { instances: [this.inst], status: true };
        };
        p.onDrop = function ($onDropEvent) {
            return { instances: [this.inst], status: true };
        };
        p.drop = function () {
            if (this.enabled)
                this.onMouseUp(null);
        };
        p.onMouseDown = function (event) {
            if (this.enabled == 0)
                return;
            this.isTouchBegin = true;
            this.mouseDownInst = this.inst;
            this.localX = this.inst.x;
            this.localY = this.inst.y;
            this.startStageX = event.stageX;
            this.startStageY = event.stageY;
            this.dispatchEvent(new ls.TriggerEvent(ls.TriggerEvent.TRIGGER, this.onDragStart));
        };
        p.onMouseUp = function (event) {
            if (this.enabled == 0)
                return;
            if (this.mouseDownInst == this.inst) {
                this.isTouchBegin = false;
                this.isMoving = false;
                this.dispatchEvent(new ls.TriggerEvent(ls.TriggerEvent.TRIGGER, this.onDrop));
            }
        };
        p.onMouseMove = function (event) {
            if (this.enabled == 0)
                return;
            if (this.mouseDownInst == this.inst) {
                if (this.isTouchBegin) {
                    this.isMoving = true;
                    var moveX = this.startStageX - event.stageX + this.inst.container.parent.x;
                    var moveY = this.startStageY - event.stageY + this.inst.container.parent.y;
                    switch (this.axes) {
                        case 0:
                            this.inst.x = this.localX - moveX;
                            this.inst.y = this.localY - moveY;
                            break;
                        case 1:
                            this.inst.x = this.localX - moveX;
                            break;
                        case 2:
                            this.inst.y = this.localY - moveY;
                            break;
                    }
                }
            }
        };
        p.setEnabled = function (state) {
            var state = ls.eval_e(state);
            ls.assert(typeof state !== "number", "DragDropBehaivor setEnabled parameter type incorrect!!");
            this.enabled = (state == 1);
        };
        p.saveToJSON = function () {
            var o = _super.prototype.saveToJSON.call(this);
            o.axes = this.axes;
            return o;
        };
        p.loadFromJSON = function (o) {
            if (o) {
                this.axes = o.axes;
                _super.prototype.loadFromJSON.call(this, o);
            }
        };
        p.clone = function () {
            var bh = _super.prototype.clone.call(this);
            bh.axes = this.axes;
            return bh;
        };
        return DragDropBehaivor;
    }(ls.BaseBehavior));
    ls.DragDropBehaivor = DragDropBehaivor;
    egret.registerClass(DragDropBehaivor,'ls.DragDropBehaivor');
    var B_DragDrop_IsDraggingEvent = (function (_super) {
        __extends(B_DragDrop_IsDraggingEvent, _super);
        function B_DragDrop_IsDraggingEvent() {
            _super.apply(this, arguments);
        }
        var d = __define,c=B_DragDrop_IsDraggingEvent,p=c.prototype;
        return B_DragDrop_IsDraggingEvent;
    }(ls.BaseEvent));
    ls.B_DragDrop_IsDraggingEvent = B_DragDrop_IsDraggingEvent;
    egret.registerClass(B_DragDrop_IsDraggingEvent,'ls.B_DragDrop_IsDraggingEvent');
    var B_DragDrop_OnDragStartEvent = (function (_super) {
        __extends(B_DragDrop_OnDragStartEvent, _super);
        function B_DragDrop_OnDragStartEvent() {
            _super.apply(this, arguments);
        }
        var d = __define,c=B_DragDrop_OnDragStartEvent,p=c.prototype;
        return B_DragDrop_OnDragStartEvent;
    }(ls.BaseEvent));
    ls.B_DragDrop_OnDragStartEvent = B_DragDrop_OnDragStartEvent;
    egret.registerClass(B_DragDrop_OnDragStartEvent,'ls.B_DragDrop_OnDragStartEvent');
    var B_DrapDrop_onDropEvent = (function (_super) {
        __extends(B_DrapDrop_onDropEvent, _super);
        function B_DrapDrop_onDropEvent() {
            _super.apply(this, arguments);
        }
        var d = __define,c=B_DrapDrop_onDropEvent,p=c.prototype;
        return B_DrapDrop_onDropEvent;
    }(ls.BaseEvent));
    ls.B_DrapDrop_onDropEvent = B_DrapDrop_onDropEvent;
    egret.registerClass(B_DrapDrop_onDropEvent,'ls.B_DrapDrop_onDropEvent');
})(ls || (ls = {}));
