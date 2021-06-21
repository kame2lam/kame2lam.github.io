var ls;
(function (ls) {
    var EightDirectionBehaivor = (function (_super) {
        __extends(EightDirectionBehaivor, _super);
        function EightDirectionBehaivor() {
            _super.apply(this, arguments);
            this.maxSpeed = 200;
            this.acceleration = 600;
            this.deceleration = 500;
            this.directions = 0;
            this.angleMode = 0;
            this.defaultControls = 1;
            this.dx = 0;
            this.dy = 0;
            this.leftKey = false;
            this.rightKey = false;
            this.upKey = false;
            this.downKey = false;
            this._currentSpeed = 0;
            this.simleft = false;
            this.simright = false;
            this.simup = false;
            this.simdown = false;
        }
        var d = __define,c=EightDirectionBehaivor,p=c.prototype;
        p.onCreate = function () {
            this.dx = this.dy = 0;
            this.simleft = false;
            this.simright = false;
            this.simdown = false;
            this.simup = false;
            this.defaultControls = ls.eval_e(this.defaultControls);
            if (this.defaultControls == 1 && window.addEventListener) {
                window.addEventListener("keydown", onKeyDown.bind(this), true);
                window.addEventListener("keyup", onKeyUp.bind(this), true);
            }
            function onKeyDown(event) {
                switch (event.keyCode) {
                    case 37:
                        event.preventDefault();
                        this.leftKey = true;
                        break;
                    case 38:
                        event.preventDefault();
                        this.upKey = true;
                        break;
                    case 39:
                        event.preventDefault();
                        this.rightKey = true;
                        break;
                    case 40:
                        event.preventDefault();
                        this.downKey = true;
                        break;
                }
            }
            function onKeyUp(event) {
                switch (event.keyCode) {
                    case 37:
                        event.preventDefault();
                        this.leftKey = false;
                        break;
                    case 38:
                        event.preventDefault();
                        this.upKey = false;
                        break;
                    case 39:
                        event.preventDefault();
                        this.rightKey = false;
                        break;
                    case 40:
                        event.preventDefault();
                        this.downKey = false;
                        break;
                }
            }
        };
        p.tick = function () {
            var dt = 1 / 60;
            var maxSpeed = ls.eval_e(this.maxSpeed);
            var acc = ls.eval_e(this.acceleration);
            var dec = ls.eval_e(this.deceleration);
            var directions = ls.eval_e(this.directions);
            var angleMode = ls.eval_e(this.angleMode);
            var left = this.leftKey || this.simleft;
            var right = this.rightKey || this.simright;
            var up = this.upKey || this.simup;
            var down = this.downKey || this.simdown;
            this.simleft = false;
            this.simright = false;
            this.simdown = false;
            this.simup = false;
            var collobj = ls.CollisionUtils.testOverlapSolid(this.inst);
            if (collobj) {
                if (!ls.CollisionUtils.pushOutSolidNearest(this.inst))
                    return;
            }
            if (directions === 0) {
                left = false;
                right = false;
            }
            else if (directions === 1) {
                up = false;
                down = false;
            }
            if (directions === 2 && (up || down)) {
                left = false;
                right = false;
            }
            if (left == right) {
                if (this.dx < 0) {
                    this.dx += dec * dt;
                    if (this.dx > 0)
                        this.dx = 0;
                }
                else if (this.dx > 0) {
                    this.dx -= dec * dt;
                    if (this.dx < 0)
                        this.dx = 0;
                }
            }
            if (up == down) {
                if (this.dy < 0) {
                    this.dy += dec * dt;
                    if (this.dy > 0)
                        this.dy = 0;
                }
                else if (this.dy > 0) {
                    this.dy -= dec * dt;
                    if (this.dy < 0)
                        this.dy = 0;
                }
            }
            if (left && !right) {
                if (this.dx > 0)
                    this.dx -= (acc + dec) * dt;
                else
                    this.dx -= acc * dt;
            }
            if (right && !left) {
                if (this.dx < 0)
                    this.dx += (acc + dec) * dt;
                else
                    this.dx += acc * dt;
            }
            if (up && !down) {
                if (this.dy > 0)
                    this.dy -= (acc + dec) * dt;
                else
                    this.dy -= acc * dt;
            }
            if (down && !up) {
                if (this.dy < 0)
                    this.dy += (acc + dec) * dt;
                else
                    this.dy += acc * dt;
            }
            if (this.dx !== 0 || this.dy != 0) {
                this._currentSpeed = Math.sqrt(this.dx * this.dx + this.dy * this.dy);
                if (this._currentSpeed > maxSpeed) {
                    var a = Math.atan2(this.dy, this.dx);
                    this.dx = maxSpeed * Math.cos(a);
                    this.dy = maxSpeed * Math.sin(a);
                }
                var oldx = this.inst.x;
                var oldy = this.inst.y;
                var olda = this.inst.angle;
                this.inst.x += this.dx * dt;
                collobj = ls.CollisionUtils.testOverlapSolid(this.inst);
                if (collobj) {
                    this.inst.x = oldx;
                    this.dx = 0;
                }
                this.inst.y += this.dy * dt;
                collobj = ls.CollisionUtils.testOverlapSolid(this.inst);
                if (collobj) {
                    this.inst.y = oldy;
                    this.dy = 0;
                }
            }
            var ax = ls.round6dp(this.dx);
            var ay = ls.round6dp(this.dy);
            if (ax !== 0 || ay !== 0) {
                switch (angleMode) {
                    case 1:
                        this.inst.angle = ls.MathUtils.clampAngle(Math.round(ls.MathUtils.toAngle(Math.atan2(ay, ax)) / 90.0) * 90.0);
                        break;
                    case 2:
                        this.inst.angle = ls.MathUtils.clampAngle(Math.round(ls.MathUtils.toAngle(Math.atan2(ay, ax)) / 45.0) * 45.0);
                        break;
                    case 3:
                        this.inst.angle = ls.MathUtils.toAngle(Math.atan2(ay, ax));
                        break;
                }
            }
            if (this.inst.angle != olda) {
                collobj = ls.CollisionUtils.testOverlapSolid(this.inst);
                if (collobj) {
                    this.inst.angle = olda;
                }
            }
        };
        p.compareSpeed = function ($event) {
            return { instances: [this.inst], status: ls.compare(this._currentSpeed, $event.operationType, $event.speed) };
        };
        p.compareAngleMode = function ($event) {
            return { instances: [this.inst], status: ls.eval_e($event.type) === this.angleMode };
        };
        p.isMoving = function ($event) {
            return { instances: [this.inst], status: this._currentSpeed == 0 };
        };
        p.reverse = function () {
        };
        p.setEnabled = function (state) {
            var state = ls.eval_e(state);
            ls.assert(typeof state !== "number", "EightDirectionBehaivor setEnabled parameter type incorrect!!");
            this.enabled = (state == 1);
        };
        p.setAcceleration = function (acce) {
            var acce = ls.eval_e(acce);
            ls.assert(typeof acce !== "number", "EightDirectionBehaivor setAcceleration parameter type incorrect!!");
            this.acceleration = acce;
        };
        p.setDeceleration = function (dece) {
            var dece = ls.eval_e(dece);
            ls.assert(typeof dece !== "number", "EightDirectionBehaivor setDeceleration parameter type incorrect!!");
            this.deceleration = dece;
        };
        p.setMaxSpeed = function (maxSpeed) {
            var maxSpeed = ls.eval_e(maxSpeed);
            ls.assert(typeof maxSpeed !== "number", "EightDirectionBehaivor setMaxSpeed parameter type incorrect!!");
            this.maxSpeed = maxSpeed;
        };
        p.setDirections = function (direction) {
            var direction = ls.eval_e(direction);
            ls.assert(typeof direction !== "number", "EightDirectionBehaivor setDirections parameter type incorrect!!");
            this.directions = direction;
        };
        p.simulateControl8Direction = function (ctrl) {
            ctrl = ls.eval_e(ctrl);
            switch (ctrl) {
                case 0:
                    this.simup = true;
                    break;
                case 1:
                    this.simdown = true;
                    break;
                case 2:
                    this.simleft = true;
                    break;
                case 3:
                    this.simright = true;
                    break;
            }
        };
        p.set8DirectionDefaultControls = function (value) {
            this.defaultControls = ls.eval_e(value);
        };
        p.setAngleMode = function (type) {
            this.angleMode = ls.eval_e(type);
        };
        p.saveToJSON = function () {
            var o = _super.prototype.saveToJSON.call(this);
            o.maxSpeed = this.maxSpeed;
            o.acceleration = this.acceleration;
            o.deceleration = this.deceleration;
            o.directions = this.directions;
            o.angleMode = this.angleMode;
            o.defaultControls = this.defaultControls;
            return o;
        };
        p.loadFromJSON = function (o) {
            if (o) {
                this.maxSpeed = o.maxSpeed;
                this.acceleration = o.acceleration;
                this.deceleration = o.deceleration;
                this.directions = o.directions;
                this.angleMode = o.angleMode;
                this.defaultControls = o.defaultControls;
                _super.prototype.loadFromJSON.call(this, o);
            }
        };
        p.clone = function () {
            var bh = _super.prototype.clone.call(this);
            bh.maxSpeed = this.maxSpeed;
            bh.acceleration = this.acceleration;
            bh.deceleration = this.deceleration;
            bh.directions = this.directions;
            bh.angleMode = this.angleMode;
            bh.defaultControls = this.defaultControls;
            return bh;
        };
        return EightDirectionBehaivor;
    }(ls.BaseBehavior));
    ls.EightDirectionBehaivor = EightDirectionBehaivor;
    egret.registerClass(EightDirectionBehaivor,'ls.EightDirectionBehaivor');
    var B_EightDirection_CompareSpeedEvent = (function (_super) {
        __extends(B_EightDirection_CompareSpeedEvent, _super);
        function B_EightDirection_CompareSpeedEvent() {
            _super.apply(this, arguments);
        }
        var d = __define,c=B_EightDirection_CompareSpeedEvent,p=c.prototype;
        return B_EightDirection_CompareSpeedEvent;
    }(ls.BaseEvent));
    ls.B_EightDirection_CompareSpeedEvent = B_EightDirection_CompareSpeedEvent;
    egret.registerClass(B_EightDirection_CompareSpeedEvent,'ls.B_EightDirection_CompareSpeedEvent');
    var B_EightDirection_CompareAngleModeEvent = (function (_super) {
        __extends(B_EightDirection_CompareAngleModeEvent, _super);
        function B_EightDirection_CompareAngleModeEvent() {
            _super.apply(this, arguments);
        }
        var d = __define,c=B_EightDirection_CompareAngleModeEvent,p=c.prototype;
        return B_EightDirection_CompareAngleModeEvent;
    }(ls.BaseEvent));
    ls.B_EightDirection_CompareAngleModeEvent = B_EightDirection_CompareAngleModeEvent;
    egret.registerClass(B_EightDirection_CompareAngleModeEvent,'ls.B_EightDirection_CompareAngleModeEvent');
    var B_EightDirection_isMovingEvent = (function (_super) {
        __extends(B_EightDirection_isMovingEvent, _super);
        function B_EightDirection_isMovingEvent() {
            _super.apply(this, arguments);
        }
        var d = __define,c=B_EightDirection_isMovingEvent,p=c.prototype;
        return B_EightDirection_isMovingEvent;
    }(ls.BaseEvent));
    ls.B_EightDirection_isMovingEvent = B_EightDirection_isMovingEvent;
    egret.registerClass(B_EightDirection_isMovingEvent,'ls.B_EightDirection_isMovingEvent');
})(ls || (ls = {}));
