var ls;
(function (ls) {
    var AIButton = (function (_super) {
        __extends(AIButton, _super);
        function AIButton() {
            _super.call(this);
            this.newWidth = 0;
            this.newHeight = 0;
            if (this._textfield == null)
                this._textfield = new egret.TextField();
            this._up = new egret.Bitmap();
            this._down = new egret.Bitmap();
            this._disable = new egret.Bitmap();
        }
        var d = __define,c=AIButton,p=c.prototype;
        p.initialize = function () {
            this._currentState = this._up;
            this._up.touchEnabled = this._down.touchEnabled = this._disable.touchEnabled = false;
            this.container.touchChildren = this.container.touchEnabled = true;
            if (this.enabled)
                this.container.addChildAt(this._up, 0);
            ls.GameUILayer.stage.addEventListener(egret.TouchEvent.TOUCH_END, this.onStageTouchEnd, this);
        };
        d(p, "text"
            ,function () {
                return this._textfield != null ? this._textfield.text : "";
            }
            ,function ($text) {
                if (this._textfield.text != $text)
                    this._textfield.text = $text;
                this._textfield.textAlign = egret.HorizontalAlign.CENTER;
                this._textfield.verticalAlign = egret.VerticalAlign.MIDDLE;
                this._textfield.size = 12;
                if (this._textfield.parent == null)
                    this.container.addChild(this._textfield);
            }
        );
        d(p, "bold"
            ,function () {
                return this._textfield.bold;
            }
            ,function (value) {
                this._textfield.bold = value;
            }
        );
        d(p, "fontFamily"
            ,function () {
                return this._textfield.fontFamily;
            }
            ,function (value) {
                this._textfield.fontFamily = value;
            }
        );
        d(p, "textColor"
            ,function () {
                return this._textfield.textColor;
            }
            ,function (value) {
                this._textfield.textColor = value;
            }
        );
        d(p, "size"
            ,function () {
                return this._textfield.size;
            }
            ,function (value) {
                this._textfield.size = value;
            }
        );
        d(p, "textAlign"
            ,function () {
                return this._textfield.textAlign;
            }
            ,function (value) {
                this._textfield.textAlign = value;
            }
        );
        d(p, "verticalAlign"
            ,function () {
                return this._textfield.verticalAlign;
            }
            ,function (value) {
                this._textfield.verticalAlign = value;
            }
        );
        d(p, "italic"
            ,function () {
                return this._textfield.italic;
            }
            ,function (value) {
                this._textfield.italic = value;
            }
        );
        d(p, "border"
            ,function () {
                return this._textfield.border;
            }
            ,function (value) {
                this._textfield.border = value;
            }
        );
        d(p, "borderColor"
            ,function () {
                return this._textfield.borderColor;
            }
            ,function (value) {
                this._textfield.borderColor = value;
            }
        );
        d(p, "background"
            ,function () {
                return this._textfield.background;
            }
            ,function (value) {
                this._textfield.background = value;
            }
        );
        d(p, "backgroundColor"
            ,function () {
                return this._textfield.backgroundColor;
            }
        );
        d(p, "backgourndColor",undefined
            ,function (value) {
                this._textfield.backgroundColor = value;
            }
        );
        d(p, "maxChars"
            ,function () {
                return this._textfield.maxChars;
            }
            ,function (value) {
                this._textfield.maxChars = value;
            }
        );
        d(p, "displayAsPassword"
            ,function () {
                return this._textfield.displayAsPassword;
            }
            ,function (value) {
                this._textfield.displayAsPassword = value;
            }
        );
        d(p, "wordWrap"
            ,function () {
                return this._textfield.multiline;
            }
            ,function (value) {
                this._textfield.multiline = (value == 1);
            }
        );
        d(p, "touchX"
            ,function () {
                return this._touchX;
            }
        );
        d(p, "touchY"
            ,function () {
                return this._touchY;
            }
        );
        d(p, "touchStageX"
            ,function () {
                return this._touchStageX;
            }
        );
        d(p, "touchStageY"
            ,function () {
                return this._touchStageY;
            }
        );
        d(p, "touchPointID"
            ,function () {
                return this._touchPointID;
            }
        );
        d(p, "width"
            ,function () {
                if (this.newWidth != 0)
                    return this.newWidth;
                return this.container.width;
            }
            ,function (value) {
                if (this.newWidth != value) {
                    if (this._down)
                        this._down.width = value;
                    if (this._up)
                        this._up.width = value;
                    if (this._disable)
                        this._disable.width = value;
                    this.newWidth = value;
                    this.update = true;
                }
            }
        );
        d(p, "height"
            ,function () {
                if (this.newHeight != 0)
                    return this.newHeight;
                return this.container.height;
            }
            ,function (value) {
                if (this.newHeight != value) {
                    if (this._down)
                        this._down.height = value;
                    if (this._up)
                        this._up.height = value;
                    if (this._disable)
                        this._disable.height = value;
                    this.newHeight = value;
                    this.update = true;
                }
            }
        );
        d(p, "enabled"
            ,function () {
                return this._enabled;
            }
            ,function (value) {
                if (this._enabled != value) {
                    this._enabled = value;
                    this._up.touchEnabled = this._down.touchEnabled = this._disable.touchEnabled = value;
                    if (this._currentState && this._currentState.parent != null)
                        this.container.removeChild(this._currentState);
                    if (value)
                        this._currentState = this._up;
                    else
                        this._currentState = this._disable;
                    if (this._currentState && this._currentState.parent == null)
                        this.container.addChildAt(this._currentState, 0);
                    this.container.touchChildren = this.container.touchEnabled = value;
                }
            }
        );
        d(p, "upSkin",undefined
            ,function ($skin) {
                if (this._upSkin != $skin) {
                    this._upSkin = $skin;
                    this.setBitmap($skin, this._up);
                }
            }
        );
        d(p, "downSkin",undefined
            ,function ($skin) {
                if (this._downSkin != $skin) {
                    this._downSkin = $skin;
                    this.setBitmap($skin, this._down);
                }
            }
        );
        d(p, "disableSkin",undefined
            ,function ($skin) {
                if (this._disableSkin != $skin) {
                    this._disableSkin = $skin;
                    this.setBitmap($skin, this._disable);
                }
            }
        );
        p.onTouchEvent = function ($event) {
            if (!this.enabled)
                return;
            if (this._currentState && this._currentState.parent != null)
                this._currentState.parent.removeChild(this._currentState);
            _super.prototype.onTouchEvent.call(this, $event);
            switch ($event.type) {
                case egret.TouchEvent.TOUCH_BEGIN:
                    this._currentState = this._down;
                    break;
            }
            if (this._currentState && this._currentState.parent == null && this.enabled)
                this.container.addChildAt(this._currentState, 0);
        };
        p.onStageTouchEnd = function (event) {
            if (!this.enabled)
                return;
            if (this._currentState && this._currentState.parent != null)
                this._currentState.parent.removeChild(this._currentState);
            switch (event.type) {
                case egret.TouchEvent.TOUCH_END:
                    this._currentState = this._up;
                    break;
            }
            if (this._currentState && this._currentState.parent == null && this.enabled)
                this.container.addChildAt(this._currentState, 0);
        };
        p.setBitmap = function ($skin, $sourceBitmap) {
            var self = this;
            var textureDatas = ls.getTexture($skin);
            if (textureDatas != null)
                var texture = textureDatas[0];
            if (texture != null) {
                $sourceBitmap.texture = texture;
                if (self.newWidth != 0)
                    self.width = self.newWidth;
                if (self.newHeight != 0)
                    self.height = self.newHeight;
                if (self._textfield) {
                    self._textfield.width = $sourceBitmap.width;
                    self._textfield.height = $sourceBitmap.height;
                }
                if (textureDatas) {
                    $sourceBitmap.x = textureDatas[1];
                    $sourceBitmap.y = textureDatas[2];
                }
            }
            else {
                var onRESComplete = function (texture) {
                    if (texture) {
                        this.texture = texture;
                        if (self.newWidth != 0)
                            self.width = self.newWidth;
                        if (self.newHeight != 0)
                            self.height = self.newHeight;
                        if (self._textfield) {
                            self._textfield.width = this.width;
                            self._textfield.height = this.height;
                        }
                    }
                };
                RES.getResByUrl($skin, onRESComplete, $sourceBitmap, RES.ResourceItem.TYPE_IMAGE);
            }
        };
        p.compareButtonText = function ($compareTextEvent) {
            var textValue = ls.eval_e($compareTextEvent.text);
            return { instances: [this], status: this._textfield.text == textValue };
        };
        p.setButtonText = function ($text) {
            this.text = ls.eval_e($text);
        };
        p.setButtonFontColor = function ($textColor) {
            var textColor = ls.eval_e($textColor);
            ls.assert(typeof textColor !== "number", "setFontColor parameter type incorrect!!");
            this._textfield.textColor = textColor;
        };
        p.setButtonFontFamily = function ($fontFamily) {
            var fontFamily = ls.eval_e($fontFamily);
            ls.assert(typeof fontFamily !== "string", "setFontFamily parameter type incorrect!!");
            this._textfield.fontFamily = fontFamily;
        };
        p.setButtonFontSize = function ($size) {
            var size = ls.eval_e($size);
            ls.assert(typeof size !== "number", "setFontSize parameter type incorrect!!");
            this._textfield.size = size;
        };
        p.setButtonTextAlign = function ($textAlign) {
            var textAlign = ls.eval_e($textAlign);
            ls.assert(typeof textAlign !== "string", "setTextAlign parameter type incorrect!!");
            this._textfield.textAlign = textAlign;
        };
        p.setButtonVerticalAlign = function ($vertialAlign) {
            var verticalAlign = ls.eval_e($vertialAlign);
            ls.assert(typeof verticalAlign !== "string", "setVerticalAlign parameter type incorrect!!");
            this._textfield.verticalAlign = verticalAlign;
        };
        p.setEnabled = function ($enabled) {
            var enabled = ls.eval_e($enabled);
            ls.assert(typeof enabled !== "number", "AIButton setEnabled parameter type incorrect!!");
            this.enabled = (enabled == 1);
        };
        p.saveToJSON = function () {
            var o = _super.prototype.saveToJSON.call(this);
            o["text"] = this.text;
            o["upSkin"] = this._upSkin;
            o["downSkin"] = this._downSkin;
            o["disableSkin"] = this._disableSkin;
            o["fontFamily"] = this.fontFamily;
            o["size"] = this.size;
            o["textColor"] = this.textColor;
            o["bold"] = this.bold;
            o["textAlign"] = this.textAlign;
            o["verticalAlign"] = this.verticalAlign;
            o["maxChars"] = this.maxChars;
            o["displayAsPassword"] = this.displayAsPassword;
            o["wordWrap"] = this.wordWrap;
            o["enabled"] = this.enabled;
            return o;
        };
        p.loadFromJSON = function (o) {
            if (o) {
                _super.prototype.loadFromJSON.call(this, o);
                this.text = o["text"];
                this.upSkin = o["upSkin"];
                this.downSkin = o["downSkin"];
                this.disableSkin = o["disableSkin"];
                this.fontFamily = o["fontFamily"];
                this.size = o["size"];
                this.textColor = o["textColor"];
                this.bold = o["bold"];
                this.textAlign = o["textAlign"];
                this.verticalAlign = o["verticalAlign"];
                this.maxChars = o["maxChars"];
                this.displayAsPassword = o["displayAsPassword"];
                this.wordWrap = o["wordWrap"];
                this.enabled = o["enabled"];
            }
        };
        p.clone = function () {
            var cl = _super.prototype.clone.call(this);
            cl.text = this.text;
            cl.upSkin = this._upSkin;
            cl.downSkin = this._downSkin;
            cl.disableSkin = this._disableSkin;
            cl.fontFamily = this.fontFamily;
            cl.size = this.size;
            cl.textColor = this.textColor;
            cl.bold = this.bold;
            cl.textAlign = this.textAlign;
            cl.verticalAlign = this.verticalAlign;
            cl.maxChars = this.maxChars;
            cl.displayAsPassword = this.displayAsPassword;
            cl.wordWrap = this.wordWrap;
            cl.enabled = this.enabled;
            return cl;
        };
        return AIButton;
    }(ls.AIDisplayObject));
    ls.AIButton = AIButton;
    egret.registerClass(AIButton,'ls.AIButton');
    var CompareTextEvent = (function (_super) {
        __extends(CompareTextEvent, _super);
        function CompareTextEvent() {
            _super.call(this);
        }
        var d = __define,c=CompareTextEvent,p=c.prototype;
        return CompareTextEvent;
    }(ls.BaseEvent));
    ls.CompareTextEvent = CompareTextEvent;
    egret.registerClass(CompareTextEvent,'ls.CompareTextEvent');
})(ls || (ls = {}));
