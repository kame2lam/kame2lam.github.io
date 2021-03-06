var ls;
(function (ls) {
    var EventSheetVo = (function () {
        function EventSheetVo() {
        }
        var d = __define,c=EventSheetVo,p=c.prototype;
        return EventSheetVo;
    }());
    ls.EventSheetVo = EventSheetVo;
    egret.registerClass(EventSheetVo,'ls.EventSheetVo');
    var FamilyVo = (function () {
        function FamilyVo() {
        }
        var d = __define,c=FamilyVo,p=c.prototype;
        return FamilyVo;
    }());
    ls.FamilyVo = FamilyVo;
    egret.registerClass(FamilyVo,'ls.FamilyVo');
    var VariableVo = (function () {
        function VariableVo() {
        }
        var d = __define,c=VariableVo,p=c.prototype;
        return VariableVo;
    }());
    ls.VariableVo = VariableVo;
    egret.registerClass(VariableVo,'ls.VariableVo');
    var CollisionDataVo = (function () {
        function CollisionDataVo() {
        }
        var d = __define,c=CollisionDataVo,p=c.prototype;
        return CollisionDataVo;
    }());
    ls.CollisionDataVo = CollisionDataVo;
    egret.registerClass(CollisionDataVo,'ls.CollisionDataVo');
    var CollisionSearchVo = (function () {
        function CollisionSearchVo() {
            this.enemyNames = [];
        }
        var d = __define,c=CollisionSearchVo,p=c.prototype;
        return CollisionSearchVo;
    }());
    egret.registerClass(CollisionSearchVo,'CollisionSearchVo');
    var EventSheetDecoder = (function () {
        function EventSheetDecoder() {
        }
        var d = __define,c=EventSheetDecoder,p=c.prototype;
        EventSheetDecoder.saveEventSheetData = function (eventSheetName) {
            var eventSheet = ls.Config.sceneInfo.eventsheetData;
            this.eventsheetVo = new EventSheetVo();
            this.eventsheetVo.eventSheetName = eventSheetName;
            this.eventsheetVo.nextEventSheetName = eventSheet.attributes.next;
            this.eventsheetVo.prevEventSheetName = eventSheet.attributes.previous;
            this.eventsheetVo.layoutName = eventSheet.attributes.layout;
            var version = eventSheet.attributes.version;
            this.eventsheetVo.version = version ? (version) : "1.1.1";
            this.eventSheets[eventSheetName] = this.eventsheetVo;
        };
        EventSheetDecoder.start = function (eventSheetName) {
            ls.assert(eventSheetName == null || eventSheetName == "", eventSheetName + " can not null!");
            this.saveEventSheetData(eventSheetName);
            var eventSheet = ls.Config.sceneInfo.eventsheetData;
            ls.assert(eventSheet == null, "can not find " + eventSheetName);
            this.curSceneInstancesData = [];
            this.curSceneEventsData = [];
            this.curSceneAiObjects = [];
            this.curSceneAiObjectsHash = {};
            this.curSceneEvents = [];
            var objectList = ls.World.getInstance().objectList;
            this.currentEventSheetName = eventSheetName;
            var _eventSheetDataList = eventSheet.children;
            if (_eventSheetDataList === undefined)
                return;
            for (var i = 0, itemlen = _eventSheetDataList.length; i < itemlen; i++) {
                var _data = _eventSheetDataList[i];
                var _type = _data.attributes.type;
                switch (_type) {
                    case "instance":
                        if (ls.LayoutDecoder.curSceneInstances[_data.attributes.UID])
                            this.curSceneInstancesData.push(_data);
                        break;
                    case "family":
                        var familyVo = this.decodeFamily(_data);
                        this.curFamilys[familyVo.name] = familyVo;
                        break;
                    case "event":
                        this.curSceneEventsData.push(_data);
                        break;
                    case "variable":
                        //?????????????????????????????????????????????System?????????
                        var v = this.decodeVaraible(_data);
                        v.initValue = decodeURIComponent(v.initValue);
                        if (ls.AISystem.instance[v.name] == undefined) {
                            switch (v.variableType) {
                                case "number":
                                    ls.AISystem.instance[v.name] = +ls.eval_e(v.initValue);
                                    break;
                                case "string":
                                    ls.AISystem.instance[v.name] = v.initValue + "";
                                    break;
                                case "any":
                                    ls.AISystem.instance[v.name] = v.initValue;
                                    break;
                                case "boolean":
                                    ls.AISystem.instance[v.name] = Boolean(ls.eval_e(v.initValue));
                                    break;
                            }
                            if (ls.AISystem.instance.globalVariables == undefined)
                                ls.AISystem.instance.globalVariables = {};
                            ls.AISystem.instance.globalVariables[v.name] = ls.AISystem.instance[v.name];
                        }
                        break;
                }
            }
            this.decode();
        };
        EventSheetDecoder.decode = function () {
            //????????????
            this.decodePropertys();
            //????????????
            this.decodeEvents();
            //?????????????????????????????????????????????????????????????????????????????????
            this.decodeFamilyBehaviors();
            //????????????
            this.onBehaviorsCreate();
            //?????????????????????
            this.onInstancesCreate();
            //?????????????????????????????????
            ls.AISystem.instance.sendSceneInitComplete();
            //????????????
            ls.GameUILayer.stage.addEventListener(egret.Event.ENTER_FRAME, this.eventsheetRender, this);
        };
        /**?????????????????????????????????????????????????????????????????? */
        EventSheetDecoder.decodeFamilyBehaviors = function () {
            var curFamilys = this.curFamilys;
            var world = ls.World.getInstance();
            for (var familyname in curFamilys) {
                var familyVo = curFamilys[familyname];
                var finsts = familyVo.insts;
                for (var i = 0, l = finsts.length; i < l; i++) {
                    var finst = finsts[i];
                    var finstname = finst.name;
                    var insts = world.objectHash[finstname];
                    for (var j = 0, jl = insts.length; j < jl; j++) {
                        var inst = insts[j];
                        for (var k = 0, kl = familyVo.behaviors.length; k < kl; k++) {
                            var bh = familyVo.behaviors[k];
                            var cbh = bh.clone();
                            inst.addBehavior(cbh);
                            cbh.onCreate();
                            cbh.isCreated = true;
                        }
                    }
                }
            }
        };
        //????????????
        EventSheetDecoder.onBehaviorsCreate = function () {
            var objects = ls.World.getInstance().objectList;
            for (var i = 0; i < objects.length; i++) {
                var object = objects[i];
                if (object) {
                    var behaviors = object.behaviors;
                    if (behaviors) {
                        for (var j = 0; j < behaviors.length; j++) {
                            var bh = behaviors[j];
                            bh.onCreate();
                            bh.isCreated = true;
                        }
                    }
                }
            }
            //???????????????
            // for (var key in this.curFamilys) {
            //     var familyVo: FamilyVo = this.curFamilys[key];
            //     for (var m: number = 0, blen: number = familyVo.behaviors.length; m < blen; m++){
            //         var bh: BaseBehavior = familyVo.behaviors[m];
            //         bh.onCreate();
            //         bh.isCreated = true;
            //     }
            // }
        };
        //?????????aiObject
        EventSheetDecoder.decodePropertys = function () {
            //??????????????????
            for (var i = 0, instancelen = this.curSceneInstancesData.length; i < instancelen; i++) {
                var _instanceData = this.curSceneInstancesData[i];
                var _targetType = _instanceData.attributes.type;
                var UID = +_instanceData.attributes.UID;
                var _instance = ls.LayoutDecoder.curSceneInstances[UID];
                if (_instance == null) {
                    ls.assert(true, "EventSheetDecoder UID:" + UID + " instance is null!");
                    continue;
                }
                this.curSceneAiObjectsHash[_instance.name] = _instance;
                this.curSceneAiObjects.push(_instance);
                //????????????
                var _instanceItems = _instanceData.children;
                if (_instanceItems) {
                    var _instanceItemlen = _instanceItems.length;
                    for (var j = 0; j < _instanceItemlen; j++) {
                        var _instanceItem = _instanceItems[j];
                        this.decodeInstancePropertie(_instanceItem, _instance);
                    }
                }
            }
        };
        EventSheetDecoder.decodeFamily = function (data) {
            var _uids = data.attributes.UID;
            var uids = _uids == "" ? [] : _uids.split(',');
            var familyVo = new FamilyVo();
            familyVo.name = data.attributes.target;
            familyVo.UIDs = [];
            familyVo.insts = [];
            if (uids && uids.length) {
                for (var i = 0; i < uids.length; i++) {
                    familyVo.UIDs[i] = parseFloat(uids[i]);
                    familyVo.insts[i] = ls.LayoutDecoder.curSceneInstances[familyVo.UIDs[i]];
                }
            }
            //??????????????????
            familyVo.behaviors = [];
            familyVo.variables = [];
            var familyChildrenData = data.children;
            for (var i = 0; i < familyChildrenData.length; i++) {
                var item = familyChildrenData[i];
                switch (item.attributes.name) {
                    case "behaviors":
                        var behaviorDatas = item.children;
                        for (var i1 = 0; i1 < behaviorDatas.length; i1++) {
                            var behaviorVo = this.decodeBehavior(behaviorDatas[i1]);
                            familyVo.behaviors[i1] = behaviorVo;
                        }
                        break;
                    case "variables":
                        var variableDatas = item.children;
                        for (var i2 = 0; i2 < variableDatas.length; i2++) {
                            var variableVo = this.decodeVaraible(variableDatas[i2]);
                            familyVo.variables[i2] = variableVo;
                        }
                        break;
                }
            }
            //???????????????????????????????????????
            if (familyVo.insts && familyVo.variables) {
                for (var i = 0; i < familyVo.insts.length; i++) {
                    var inst = familyVo.insts[i];
                    for (var j = 0; j < familyVo.variables.length; j++) {
                        var v = familyVo.variables[j];
                        v.initValue = decodeURIComponent(v.initValue);
                        switch (v.variableType) {
                            case "number":
                                inst[v.name] = +ls.eval_e(v.initValue);
                                break;
                            case "string":
                                inst[v.name] = v.initValue;
                                break;
                            case "any":
                                inst[v.name] = v.initValue;
                                break;
                            case "boolean":
                                inst[v.name] = Boolean(ls.eval_e(v.initValue));
                                break;
                        }
                    }
                }
            }
            return familyVo;
        };
        EventSheetDecoder.decodeVaraible = function (data) {
            var v = new VariableVo();
            v.initValue = decodeURIComponent(data.attributes.initValue);
            v.variableType = data.attributes.variableType;
            v.name = data.attributes.variableName;
            return v;
        };
        //??????????????????
        EventSheetDecoder.decodeEvents = function () {
            //??????????????????
            for (var i = 0; i < this.curSceneEventsData.length; i++) {
                var eventData = this.curSceneEventsData[i];
                var event = this.decodeEvent(eventData, i);
                if (event)
                    this.curSceneEvents.push(event);
            }
        };
        //????????????
        EventSheetDecoder.decodeEvent = function (eventData, index) {
            var event = new ls.AIEvent();
            event.index = index;
            //?????????1.11?????????,1.11???????????????$conditionRelationShip,???????????????????????????operatorType??????
            var conditionRelationShip = eventData.attributes.conditionRelationShip;
            if (conditionRelationShip)
                event.conditionRelationShip = ls.eval_e(conditionRelationShip);
            //??????????????????????????????
            var triggerOnceWhileTrue = eventData.attributes.triggerOnceWhileTrue;
            if (triggerOnceWhileTrue)
                event.triggerOnceWhileTrue = ls.eval_e(triggerOnceWhileTrue);
            //????????????
            var items = eventData.children;
            if (items == null)
                return;
            var prevConditionBlock;
            var nextConditionBlock;
            var eventlen = items.length;
            var conditionBlockIndex = 0;
            var conditionIndex = 0;
            var actionIndex = 0;
            //???????????????conditionBlock??????
            var isHasConditionBlock = false;
            for (var i = 0; i < eventlen; i++) {
                if (items[i].attributes.type === "conditionBlock") {
                    isHasConditionBlock = true;
                    break;
                }
            }
            if (isHasConditionBlock) {
                var subEventIndex = 0;
                for (var j = 0; j < eventlen; j++) {
                    var childItem = items[j];
                    var childType = childItem.attributes.type;
                    var conditionBlock;
                    //1.2??????????????????
                    //???????????????
                    switch (childType) {
                        case "conditionBlock":
                            conditionBlock = this.decodeConditionBlock(childItem.children, conditionBlockIndex, event);
                            conditionBlock.event = event;
                            if (event.conditionBlocks == null)
                                event.conditionBlocks = [];
                            event.conditionBlocks.push(conditionBlock);
                            if (conditionBlockIndex === 0) {
                                prevConditionBlock = conditionBlock;
                            }
                            else {
                                //?????????
                                conditionBlock.prevConditionBlock = prevConditionBlock;
                                prevConditionBlock = conditionBlock;
                                //?????????
                                conditionBlock.prevConditionBlock.nextConditionBlock = conditionBlock;
                            }
                            conditionBlockIndex++;
                            break;
                        case "event":
                            if (event.children == null)
                                event.children = [];
                            var subEvent = this.decodeEvent(childItem, subEventIndex);
                            subEvent.parent = event;
                            event.children.push(subEvent);
                            subEventIndex++;
                            break;
                    }
                }
            }
            else {
                //1.11??????????????????
                subEventIndex = 0;
                var version1_1_1Datas = [];
                for (var j = 0; j < eventlen; j++) {
                    var childItem = items[j];
                    var childType = childItem.attributes.type;
                    switch (childType) {
                        case "condition":
                        case "action":
                            version1_1_1Datas.push(childItem);
                            break;
                        case "event":
                            if (event.children == null)
                                event.children = [];
                            var subEvent = this.decodeEvent(childItem, subEventIndex);
                            subEvent.parent = event;
                            event.children.push(subEvent);
                            subEventIndex++;
                            break;
                    }
                }
                conditionBlock = this.decodeConditionBlock(version1_1_1Datas, 0, event);
                conditionBlock.event = event;
                if (event.conditionBlocks == null)
                    event.conditionBlocks = [];
                event.conditionBlocks.push(conditionBlock);
                if (conditionBlockIndex === 0) {
                    prevConditionBlock = conditionBlock;
                }
                else {
                    //?????????
                    conditionBlock.prevConditionBlock = prevConditionBlock;
                    prevConditionBlock = conditionBlock;
                    //?????????
                    conditionBlock.prevConditionBlock.nextConditionBlock = conditionBlock;
                }
                conditionBlockIndex++;
            }
            return event;
        };
        //????????????????????????
        EventSheetDecoder.decodeInstancePropertie = function (data, instance) {
            var _itemType = data.attributes.type;
            switch (_itemType) {
                case "behavior":
                    //??????global.xml???????????????????????????????????????????????????
                    if (instance.global)
                        break;
                    var _behavior = this.decodeBehavior(data);
                    if (instance instanceof ls.AIDisplayObject)
                        instance.addBehavior(_behavior);
                    else
                        ls.assert(true, instance + "must instance of AIDisplayObject for have Behaviors");
                    break;
                case "variable":
                    var variableName = data.attributes.variableName;
                    var variableValueType = data.attributes.variableType;
                    var initValue = decodeURIComponent(data.attributes.initValue);
                    switch (variableValueType) {
                        case "number":
                            instance.addVariable(variableName, +ls.eval_e(initValue));
                            break;
                        case "string":
                            instance.addVariable(variableName, initValue + "");
                            break;
                        case "any":
                            instance.addVariable(variableName, initValue);
                            break;
                        case "boolean":
                            instance.addVariable(variableName, Boolean(ls.eval_e(initValue)));
                            break;
                    }
                    break;
            }
        };
        //??????????????????
        EventSheetDecoder.decodeBehavior = function (data) {
            //????????????????????????????????????Behavior??????????????????????????????
            var _behaivorType = data.attributes.behaviorType;
            var _behaivor = ls.getInstanceByPluginClassName(_behaivorType);
            _behaivor.name = data.attributes.name;
            //????????????
            var _behaivorDatas = data.children;
            if (_behaivorDatas) {
                var _behaivorDatalen = _behaivorDatas.length;
                for (var k = 0; k < _behaivorDatalen; k++) {
                    var _propertyItem = _behaivorDatas[k];
                    var _propertyName = _propertyItem.attributes.name;
                    var _propertyValue = decodeURIComponent(_propertyItem.attributes.value);
                    var _propertyValueType = _propertyItem.attributes.valueDataType;
                    switch (_propertyValueType) {
                        case "number":
                            _behaivor[_propertyName] = +ls.eval_e(_propertyValue);
                            break;
                        case "string":
                            _behaivor[_propertyName] = _propertyValue + "";
                            break;
                        case "any":
                            _behaivor[_propertyName] = _propertyValue;
                            break;
                        case "boolean":
                            _behaivor[_propertyName] = Boolean(ls.eval_e(_propertyValue));
                            break;
                    }
                }
            }
            return _behaivor;
        };
        //?????????????????????
        //?????????????????????1.1.1?????????data????????????
        EventSheetDecoder.decodeConditionBlock = function (data, index, event) {
            var items = data;
            if (items) {
                var conditionBlock = new ls.ConditionBlock();
                conditionBlock.index = index;
                conditionBlock.conditions = [];
                conditionBlock.actions = [];
                var len = items.length;
                var conditionIndex = 0;
                var actionIndex = 0;
                var firstCondition;
                var prevCondition;
                var nextCondition;
                var firstAction;
                var prevAction;
                var nextAction;
                for (var i = 0; i < len; i++) {
                    var childItem = items[i];
                    var childType = childItem.attributes.type;
                    switch (childType) {
                        case "condition":
                            var condition = this.decodeCondition(childItem, conditionIndex, event);
                            condition.conditionBlock = conditionBlock;
                            condition.event = event;
                            if (condition.callCondition == undefined) {
                                if (!condition.isFamily)
                                    ls.assert(true, "?????????" + condition.callTarget + "??????" + condition.callConditionName + "???????????????");
                                else
                                    ls.assert(true, "???????????????" + condition.callConditionName + "???????????????");
                            }
                            conditionBlock.conditions.push(condition);
                            if (conditionIndex === 0)
                                prevCondition = firstCondition = condition;
                            else {
                                condition.prevCondition = prevCondition;
                                prevCondition = condition;
                                condition.prevCondition.nextCondition = condition;
                            }
                            conditionIndex++;
                            break;
                        case "action":
                            var action = this.decodeAction(childItem, actionIndex, event);
                            action.conditionBlock = conditionBlock;
                            action.event = event;
                            conditionBlock.actions.push(action);
                            if (actionIndex === 0)
                                prevAction = firstAction = action;
                            else {
                                action.prevAction = prevAction;
                                prevAction = action;
                                action.prevAction.nextAction = action;
                            }
                            actionIndex++;
                            break;
                    }
                }
                return conditionBlock;
            }
            return null;
        };
        /**
         * ??????????????????(????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????)
         * ????????????????????????????????????
         */
        EventSheetDecoder.decodeConditionProperties = function (eventsid, conditionIndex, conditionInstance) {
            var data = conditionInstance.data;
            var conditionPropsInfos = data.children;
            if (conditionPropsInfos) {
                var conditionProplen = conditionPropsInfos.length;
                for (var i = 0; i < conditionProplen; i++) {
                    var conditionPropItem = conditionPropsInfos[i];
                    var attributes = conditionPropItem.attributes;
                    var conditionPropName = attributes.name;
                    var conditionPropValue = attributes.value;
                    var isVariable = attributes.variable ? attributes.variable === "true" : false;
                    var conditionPropType = attributes.valueDataType;
                    var isFamily = attributes.isFamily ? attributes.isFamily === "true" : false;
                    conditionPropValue = decodeURIComponent(conditionPropValue);
                    conditionInstance.isFamily = isFamily;
                    if (isVariable)
                        conditionPropValue = "\"" + conditionPropValue + "\"";
                    conditionInstance[conditionPropName] = ls.eval_e(conditionPropValue);
                }
            }
            return conditionInstance;
        };
        EventSheetDecoder.decodeConditionFamilyProperties = function (conditionInstance, data) {
            var list = [];
            var conditionPropsInfos = data.children;
            if (conditionPropsInfos) {
                var conditionProplen = conditionPropsInfos.length;
                for (var i = 0; i < conditionProplen; i++) {
                    var conditionPropItem = conditionPropsInfos[i];
                    var isFamily = conditionPropItem.attributes.isFamily ? conditionPropItem.attributes.isFamily === "true" : false;
                    if (isFamily) {
                        var enemyName = conditionPropItem.attributes.value;
                        var familyVo = this.curFamilys[enemyName];
                        var familyInstances = familyVo.insts;
                        for (var j = 0; j < familyInstances.length; j++) {
                            if (list.indexOf(familyInstances[j].name) == -1) {
                                list.push(familyInstances[j].name);
                            }
                        }
                    }
                }
            }
            return list;
        };
        //??????????????????
        EventSheetDecoder.decodeCondition = function (data, index, event) {
            var targetName = data.attributes.target; //?????????
            var behaviorName = data.attributes.behaviorName; //????????????????????????????????????????????????????????????????????????????????????????????????
            var conditionInstance = ls.getInstanceByPluginClassName(data.attributes.paramsClass);
            var callName = data.attributes.callName; //???????????????????????????????????????
            var invert = false;
            //invert
            if (data.attributes.invert)
                invert = (data.attributes.invert === "true");
            //loop
            var loop = false;
            if (data.attributes.loop)
                loop = (data.attributes.loop === "true");
            var condition = new ls.Condition();
            condition.index = index;
            condition.firstCondition = (index == 0) ? condition : null;
            condition.targetName = targetName;
            condition.paramClassName = data.attributes.paramsClass;
            condition.isInvert = invert;
            condition.paramsInstance = conditionInstance;
            condition.callConditionName = callName;
            condition.isFamily = (data.attributes.family == "true");
            condition.event = event;
            if (ls.Version.compareVersion(this.eventsheetVo.version, "1.1.1") === 1) {
                var operatorType = 0;
                if (data.attributes.operatorType)
                    operatorType = +data.attributes.operatorType;
                condition.operatorType = operatorType;
            }
            else {
                //?????????1.1.1?????????????????????????????????????????????conditionRelationShip
                condition.operatorType = +(!event.conditionRelationShip);
            }
            if (conditionInstance) {
                conditionInstance.data = data;
                condition.isTrigger = Boolean(ls.eval_e(data.attributes.isTrigger));
                //??????????????????????????????
                if (condition.isTrigger)
                    this.triggerConditions.push(condition);
            }
            //???????????????????????????????????????????????????????????????????????????,??????????????????????????????
            if (callName == "onCollisionWithOtherObject")
                this.decodeCollsionFamily(data, condition, targetName);
            if (ls.isSingleInst(targetName)) {
                condition.callTarget = ls.getInstanceByInstanceName(targetName);
                condition.callCondition = condition.callTarget[callName];
            }
            else {
                //???????????????????????????
                if (condition.isFamily) {
                    var callThisObject = null;
                    var familyVo = this.curFamilys[targetName];
                    var familyInstances = familyVo.insts;
                    if (familyInstances == undefined)
                        alert("?????????????????????" + targetName + "???????????????");
                    var callFamilyTargets = [];
                    for (var f = 0; f < familyInstances.length; f++) {
                        var fInstance = familyInstances[f];
                        var templateInstance = ls.World.getInstance().objectHash[fInstance.name][0];
                        //????????????????????????????????????????????????
                        if (behaviorName != null && behaviorName != "") {
                            if (templateInstance) {
                                var behaviors = familyVo.behaviors;
                                var _b;
                                for (var i = 0, len = behaviors.length; i < len; i++) {
                                    var behaivor = behaviors[i];
                                    if (behaivor.name == behaviorName) {
                                        _b = behaivor;
                                        break;
                                    }
                                }
                                callThisObject = (_b == null) ? templateInstance : _b;
                            }
                        }
                        else {
                            callThisObject = [];
                            callThisObject.push(templateInstance);
                        }
                    }
                    condition.callTarget = callThisObject;
                    if (callThisObject[0] == undefined)
                        condition.callCondition = callThisObject[callName];
                    else
                        condition.callCondition = callThisObject[0][callName];
                }
                else {
                    //???????????????
                    var callThisObject = null;
                    if (ls.World.getInstance().objectHash[targetName] == undefined)
                        alert("?????????????????????" + targetName + "?????????????????????");
                    var templateInstance = ls.World.getInstance().objectHash[targetName][0];
                    if (behaviorName != null && behaviorName != "") {
                        if (templateInstance) {
                            var behaviors = templateInstance.behaviors;
                            for (var i = 0, len = behaviors.length; i < len; i++) {
                                var behaivor = behaviors[i];
                                if (behaivor.name == behaviorName) {
                                    callThisObject = behaivor;
                                    break;
                                }
                            }
                            callThisObject = (callThisObject == null) ? templateInstance : callThisObject;
                        }
                    }
                    else {
                        callThisObject = templateInstance;
                    }
                    condition.callTarget = callThisObject;
                    condition.callCondition = condition.callTarget[callName];
                }
                if (condition.callCondition === undefined)
                    ls.assert(true, "????????????:" + condition.targetName + ",???????????????????????????" + callName);
            }
            return condition;
        };
        /**
         * ?????????????????????????????????????????????????????????
         */
        EventSheetDecoder.decodeCollsionFamily = function (data, condition, targetName) {
            var conditionPropsInfos = data.children;
            if (conditionPropsInfos) {
                var enemyName = conditionPropsInfos[0].attributes.value;
                var enemyIsFamily = ls.eval_e(conditionPropsInfos[0].attributes.isFamily);
                var enemy = ls.eval_e(ls.getTransformationStr(enemyName));
                var list = this.decodeConditionFamilyProperties(condition.paramsInstance, data);
                var collisionVo = null;
                if (condition.isFamily) {
                    var familyVo = this.curFamilys[targetName];
                    if (familyVo) {
                        //???????????????????????????????????????????????????????????????????????????????????????
                        for (var i = 0, l = familyVo.insts.length; i < l; i++) {
                            var finst = familyVo.insts[i];
                            var fname = finst.name;
                            if (this.collisionSearchs[fname] === undefined) {
                                collisionVo = new CollisionSearchVo();
                                collisionVo.owerName = fname;
                                this.collisionSearchs[fname] = collisionVo;
                            }
                            else
                                collisionVo = this.collisionSearchs[fname];
                            //????????????????????????????????????????????????
                            if (enemyIsFamily) {
                                var familyEnemyVo = this.curFamilys[enemy];
                                if (familyEnemyVo) {
                                    for (var j = 0, jl = familyEnemyVo.insts.length; j < jl; j++) {
                                        var fenemyinst = familyEnemyVo.insts[j];
                                        var fenemyname = fenemyinst.name;
                                        if (collisionVo.enemyNames.indexOf(fenemyname) == -1)
                                            collisionVo.enemyNames.push(fenemyname);
                                    }
                                }
                            }
                            else {
                                if (collisionVo.enemyNames.indexOf(enemyName) == -1)
                                    collisionVo.enemyNames.push(enemyName);
                            }
                        }
                    }
                }
                else {
                    //?????????????????????
                    if (this.collisionSearchs[targetName] === undefined) {
                        collisionVo = new CollisionSearchVo();
                        collisionVo.owerName = targetName;
                        this.collisionSearchs[targetName] = collisionVo;
                    }
                    else
                        collisionVo = this.collisionSearchs[targetName];
                    //????????????????????????????????????????????????
                    if (enemyIsFamily) {
                        var familyEnemyVo = this.curFamilys[enemy];
                        if (familyEnemyVo) {
                            for (var j = 0, jl = familyEnemyVo.insts.length; j < jl; j++) {
                                var fenemyinst = familyEnemyVo.insts[j];
                                var fenemyname = fenemyinst.name;
                                if (collisionVo.enemyNames.indexOf(fenemyname) == -1)
                                    collisionVo.enemyNames.push(fenemyname);
                            }
                        }
                    }
                    else {
                        if (collisionVo.enemyNames.indexOf(enemyName) == -1)
                            collisionVo.enemyNames.push(enemyName);
                    }
                }
            }
        };
        //??????????????????
        EventSheetDecoder.decodeAction = function (data, index, event) {
            var targetName = data.attributes.target;
            var behaviorName = data.attributes.behaviorName; //???????????????????????????????????????????????????????????????????????????????????????????????? 
            var callName = data.attributes.callName;
            var persistent = ls.eval_e(data.attributes.persistent);
            var isFamily = ls.eval_e(data.attributes.family);
            var action = new ls.Action();
            action.isBehaviorExecAction = (behaviorName !== undefined);
            action.persistent = persistent;
            //?????????????????????
            var callTarget = null;
            if (isFamily) {
                //???????????????????????????????????????????????????????????????
                if (callTarget == null)
                    callTarget = [];
                var familyVo = this.curFamilys[targetName];
                for (var i = 0, fl = familyVo.insts.length; i < fl; i++) {
                    var finst = familyVo.insts[i];
                    //????????????????????????????????????????????????????????????
                    callTarget.push(finst);
                }
                //??????????????????
                if (action.isBehaviorExecAction) {
                    var behaviors = familyVo.behaviors;
                    if (behaviors) {
                        for (var i = 0, bl = behaviors.length; i < bl; i++) {
                            var behavior = behaviors[i];
                            if (behavior.name == behaviorName) {
                                action.callTargetBehavior = behavior;
                            }
                        }
                    }
                }
            }
            else {
                //??????????????????????????????????????????
                if (ls.isSingleInst(targetName))
                    callTarget = ls.getInstanceByInstanceName(targetName);
                else {
                    var sceneobjects = this.curSceneAiObjects;
                    //????????????????????????
                    for (var i = 0, l = sceneobjects.length; i < l; i++) {
                        var inst = sceneobjects[i];
                        if (inst.name == targetName) {
                            callTarget = inst;
                            break;
                        }
                    }
                    if (callTarget === null)
                        callTarget = ls.eval_e(targetName);
                }
                //???????????????????????????
                if (action.isBehaviorExecAction && callTarget) {
                    var behaviors = callTarget["behaviors"];
                    if (behaviors) {
                        for (var i = 0, bl = behaviors.length; i < bl; i++) {
                            var behavior = behaviors[i];
                            if (behavior.name == behaviorName) {
                                action.callTargetBehavior = behavior;
                                break;
                            }
                        }
                    }
                }
            }
            action.index = index;
            action.targetName = targetName;
            action.isFamily = isFamily;
            action.callTargets = callTarget;
            action.paramData = data.children;
            action.callHanlderName = callName;
            return action;
        };
        /**?????????????????? */
        EventSheetDecoder.decodeActionParams = function (action) {
            var actionParams = {};
            var params = [];
            var actionPropsInfos = action.paramData;
            var isFamilys = [];
            var hasFamily = false;
            if (actionPropsInfos && actionPropsInfos.length) {
                for (var i = 0, len = actionPropsInfos.length; i < len; i++) {
                    var _propertyItem = actionPropsInfos[i];
                    var _attributes = _propertyItem.attributes;
                    var _propertyValueType = _attributes.valueDataType;
                    var _propertyName = _attributes.name;
                    var _propertyValue = decodeURIComponent(_attributes.value);
                    var _isVariable = _attributes.variable ? _attributes.variable === "true" : false;
                    var _isFamily = _attributes.isFamily ? _attributes.isFamily === "true" : false;
                    if (_isFamily)
                        hasFamily = true;
                    if (_isVariable)
                        _propertyValue = "\"" + _propertyValue + "\"";
                    var _value = ls.eval_e(_propertyValue);
                    isFamilys[i] = _isFamily;
                    params.push(_value);
                }
            }
            actionParams.params = params;
            actionParams.isFamilys = isFamilys;
            actionParams.hasFamily = hasFamily;
            return actionParams;
        };
        EventSheetDecoder.tick = function () {
            return this._tick;
        };
        EventSheetDecoder.eventsheetRender = function (event) {
            var system = ls.AISystem.instance;
            var currentTime = egret.getTimer();
            if (this.lastTime !== 0) {
                this._tick = currentTime - this.lastTime;
                if (this._tick < 0)
                    this._tick = 0;
                //??????????????????????????????????????????????????????
                this.dt1 = this._tick / 1000;
                //????????????????????????????????????tab??????????????????????????????
                if (this.dt1 > 0.5)
                    this.dt1 = 0;
                else if (this.dt1 > 1 / system.minimumFramerate)
                    this.dt1 = 1 / system.minimumFramerate;
            }
            this.lastTime = currentTime;
            this.dt = this.dt1 * this.timeScale;
            //????????????
            this.renderEvents();
            //????????????
            this.renderBehaviors();
            //???????????????
            ls.World.getInstance().sceneCamera.render();
            this.renderCamera();
            //????????????
            if (this.onEventSheetTick != null)
                this.onEventSheetTick();
            //????????????
            this.onRenderUpdate();
            //????????????
            this.checkCollistions();
        };
        EventSheetDecoder.onRenderUpdate = function () {
            var insts = ls.World.getInstance().objectList;
            for (var i = 0; i < insts.length; i++) {
                var inst = insts[i];
                if (inst instanceof ls.AIDisplayObject) {
                    inst.onTick();
                    inst.renderUpdate();
                }
            }
        };
        //???????????????
        EventSheetDecoder.renderCamera = function () {
            ls.World.getInstance().render();
        };
        //???????????????????????????
        EventSheetDecoder.onInstancesCreate = function () {
            for (var uid in ls.LayoutDecoder.curSceneInstances) {
                var instance = ls.LayoutDecoder.curSceneInstances[uid];
                instance.onCreate();
            }
            //?????????????????????????????????
            for (var name in ls.LayoutDecoder.noSceneInstances) {
                var inst = ls.LayoutDecoder.noSceneInstances[name];
                if (inst && inst.onCreate)
                    inst.onCreate();
            }
        };
        //?????????????????????
        EventSheetDecoder.renderBehaviors = function () {
            var objectList = ls.World.getInstance().objectList;
            //???????????????????????????????????????????????????????????????????????????????????????
            //?????????????????????????????????????????? 
            var platforms = [];
            for (var i = 0; i < objectList.length; i++) {
                var inst = objectList[i];
                var behaviors = inst.behaviors;
                if (behaviors) {
                    for (var j = 0, blen = behaviors.length; j < blen; j++) {
                        var behavior = behaviors[j];
                        if (behavior.enabled && behavior.inst) {
                            //?????????????????????????????????????????????????????????????????????
                            var behaviorClassName = egret.getQualifiedClassName(behavior);
                            if (behaviorClassName != "ls.ScrollToBehavior")
                                behavior.tick();
                        }
                    }
                }
            }
            //????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????
            for (var i = 0; i < objectList.length; i++) {
                var inst = objectList[i];
                var behaviors = inst.behaviors;
                if (behaviors) {
                    for (var j = 0, blen = behaviors.length; j < blen; j++) {
                        var behavior = behaviors[j];
                        if (behavior.enabled && behavior.inst) {
                            var behaviorClassName = egret.getQualifiedClassName(behavior);
                            if (behaviorClassName == "ls.ScrollToBehavior")
                                behavior.tick();
                        }
                    }
                }
            }
        };
        EventSheetDecoder.renderEvents = function () {
            var disableDataEvents = ls.AISystem.instance.disableDataEvents;
            for (var i = 0; i < this.curSceneEvents.length; i++) {
                //?????????1??????
                if (disableDataEvents[i + 1] == undefined) {
                    var event = this.curSceneEvents[i];
                    this.execEvent(event);
                }
            }
        };
        //???????????????if else ?????????????????????
        EventSheetDecoder.execEvent = function (event, triggerInfo) {
            if (triggerInfo === void 0) { triggerInfo = null; }
            if (event.enabled) {
                //???????????????????????????????????????????????????????????????????????????
                var status = false;
                if (event.parent) {
                    if (event.parent.conditionBlocks[0].status)
                        status = true;
                }
                else
                    status = true;
                if (status) {
                    var cbs = event.conditionBlocks;
                    this.execConditionBlock(cbs[0], triggerInfo);
                }
            }
        };
        EventSheetDecoder.execConditionBlock = function (cb, triggerInfo) {
            if (cb) {
                cb.cs = {};
                cb.loopDatas = [];
                cb.loopLayer = 0;
                this.execNextCondition(cb.conditions[0], cb, triggerInfo, function () {
                    //???????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????
                    var filterInstances = [];
                    //????????????????????????????????????
                    var cStatus;
                    for (var i = 0; i < cb.conditions.length; i++) {
                        var condition = cb.conditions[i];
                        if (i == 0) {
                            cStatus = condition.currentStatus;
                        }
                        else {
                            if (condition.operatorType == 1)
                                cStatus = cStatus || condition.currentStatus;
                            else
                                cStatus = cStatus && condition.currentStatus;
                        }
                        condition.triggerStatus = false;
                    }
                    cb.status = cStatus;
                    if (cStatus) {
                        //??????????????????????????????????????????????????????????????????????????????
                        if (cb.event.triggerOnceWhileTrue)
                            cb.event.enabled = false;
                        var filterhashs = {};
                        //?????????????????????????????????????????????????????????????????????????????????????????????????????????
                        for (var uid in cb.cs.instanceStatus) {
                            var cs = cb.cs.instanceStatus[uid];
                            var _inst = cs.instance;
                            var _ccs = cs.ccs;
                            var _s;
                            var _computeIndex = 0;
                            for (var cindex in _ccs) {
                                var ccs = _ccs[cindex];
                                var c = ccs.c;
                                //???????????????????????????
                                if (_computeIndex == 0) {
                                    _s = ccs.status;
                                }
                                else {
                                    if (c.operatorType == 1)
                                        _s = (_s || ccs.status);
                                    else
                                        _s = (_s && ccs.status);
                                }
                                _computeIndex++;
                            }
                            if (_s) {
                                filterInstances.push(_inst);
                                filterhashs[_inst.u_id] = _inst;
                            }
                        }
                        //???????????????????????????0?????????????????????????????????
                        if (filterInstances.length > 0) {
                            //????????????????????????
                            for (var k = 0, kl = filterInstances.length; k < kl; k++) {
                                ls.lakeshoreInst()[filterInstances[k].name] = filterInstances[k];
                            }
                            cb.execActions(filterInstances);
                            //???????????????
                            var _event = cb.event;
                            if (_event.children) {
                                for (var m = 0; m < _event.children.length; m++) {
                                    var subevent = _event.children[m];
                                    if (subevent) {
                                        subevent.lastFilterTargets = filterhashs;
                                        EventSheetDecoder.execEvent(subevent);
                                    }
                                }
                            }
                        }
                    }
                });
                var nextBlock = cb.nextConditionBlock;
                if (nextBlock)
                    this.execConditionBlock(nextBlock, triggerInfo);
            }
        };
        /**
         * ?????????????????????
         * c2????????????????????????????????????????????????????????????????????????
         */
        EventSheetDecoder.execNextCondition = function (c, cb, triggerInfo, onComplete) {
            if (onComplete === void 0) { onComplete = null; }
            if (c) {
                var condition = c;
                var targetName = condition.targetName; //????????????
                var isFamily = condition.isFamily; //????????????
                var callTarget = condition.callTarget; //????????????????????????????????????????????????
                var callCondition = condition.callCondition;
                var callConditionName = condition.callConditionName;
                var isInvert = condition.isInvert;
                var paramClassName = condition.paramClassName; //??????????????????????????????
                var paramsInstance = condition.paramsInstance; //???????????????????????????
                var conditionIsTrigger = condition.isTrigger; //???????????????????????????
                var objectlist;
                //?????????????????????
                //??????????????????????????????
                condition.currentStatus = false;
                if (!cb.cs.instanceStatus)
                    cb.cs.instanceStatus = {};
                //?????????????????????????????????
                if (conditionIsTrigger) {
                    if (condition.triggerStatus) {
                        //??????????????????????????????
                        var triggerfilters = condition.triggerfilters;
                        var triggerStatus = false;
                        for (var tf_uid in triggerfilters) {
                            var triggerinstance = triggerfilters[tf_uid];
                            var searchBehavior;
                            //??????????????????????????????
                            if (callTarget instanceof ls.BaseBehavior) {
                                var behaviors;
                                behaviors = triggerinstance.behaviors;
                                //??????????????????????????????????????????????????????1?????????????????????????????????????????????????????????????????????
                                for (var j = 0; j < behaviors.length; j++) {
                                    var bh = behaviors[j];
                                    if (bh.name == callTarget.name) {
                                        searchBehavior = bh;
                                        break;
                                    }
                                }
                            }
                            //??????????????????
                            this.decodeConditionProperties(c.event.sid, c.index, paramsInstance);
                            //????????????????????????????????????????????????????????????????????????
                            //???????????????
                            if (condition.triggerData) {
                                for (var triggerkey in condition.triggerData) {
                                    paramsInstance.currentKeys[triggerkey] = condition.triggerData[triggerkey];
                                }
                            }
                            //????????????????????????????????????????????????????????????
                            if (condition.triggerChangeValue) {
                                for (var changekey in condition.triggerChangeValue) {
                                    paramsInstance[changekey] = condition.triggerChangeValue[changekey];
                                }
                            }
                            var rs = callCondition.apply(searchBehavior ? searchBehavior : triggerinstance, [paramsInstance]);
                            if (rs.status)
                                triggerStatus = true;
                            var triggerlist = rs.instances.concat();
                            if (lastfilterTargets) {
                                var triggersame = {};
                                for (var o = 0; o < triggerlist.length; o++) {
                                    var instance = triggerlist[o];
                                    //???????????????????????????
                                    if (lastfilterTargets[instance.u_id])
                                        triggersame[instance.u_id] = instance;
                                }
                                //???????????????????????????
                                for (var v = 0; v < triggerlist.length; v++) {
                                    var instance = triggerlist[v];
                                    for (var uid in triggersame) {
                                        var sinstance = triggersame[uid];
                                        if (instance.name == sinstance.name && instance.u_id != sinstance.u_id) {
                                            triggerlist.splice(v, 1);
                                            v--;
                                            break;
                                        }
                                    }
                                }
                                for (var filter_uid in lastfilterTargets) {
                                    //??????????????????????????????
                                    var filterinstance = lastfilterTargets[filter_uid];
                                    if (!cb.cs.instanceStatus[filterinstance.u_id])
                                        cb.cs.instanceStatus[filterinstance.u_id] = { instance: filterinstance, ccs: {} };
                                    cb.cs.instanceStatus[filterinstance.u_id].ccs[condition.index] = { c: condition, status: true };
                                }
                            }
                            for (var o = 0, l = triggerlist.length; o < l; o++) {
                                //?????????????????????
                                var triggerinstance = triggerlist[o];
                                if (!cb.cs.instanceStatus[triggerinstance.u_id])
                                    cb.cs.instanceStatus[triggerinstance.u_id] = { instance: triggerinstance, ccs: {} };
                                cb.cs.instanceStatus[triggerinstance.u_id].ccs[condition.index] = { c: condition, status: rs.status };
                            }
                            condition.triggerStatus = false;
                            condition.triggerfilters = {};
                            condition.currentStatus = triggerStatus;
                        }
                    }
                }
                else {
                    if (isFamily) {
                        //???????????????????????????????????????????????????
                        var _finsts = this.curFamilys[targetName].insts;
                        var finsts = [];
                        for (var fi = 0, filen = _finsts.length; fi < filen; fi++) {
                            var fname = _finsts[fi].name;
                            var flist = ls.World.getInstance().objectHash[fname];
                            for (var fj = 0, fjlen = flist.length; fj < fjlen; fj++) {
                                finsts.push(flist[fj]);
                            }
                        }
                        objectlist = finsts.concat();
                    }
                    else {
                        //??????????????????????????????
                        if (ls.isSingleInst(targetName))
                            objectlist = [ls.getInstanceByInstanceName(targetName)];
                        else
                            objectlist = ls.World.getInstance().objectHash[targetName];
                    }
                    //??????????????????????????????????????????????????????????????????
                    var lastfilterTargets = cb.event.lastFilterTargets;
                    if (lastfilterTargets) {
                        var sames = {};
                        objectlist = objectlist.concat();
                        for (var u = 0; u < objectlist.length; u++) {
                            var instance = objectlist[u];
                            //???????????????????????????
                            if (lastfilterTargets[instance.u_id])
                                sames[instance.u_id] = instance;
                        }
                        //???????????????????????????
                        for (var v = 0; v < objectlist.length; v++) {
                            var instance = objectlist[v];
                            for (var uid in sames) {
                                var sinstance = sames[uid];
                                if (instance.name == sinstance.name && instance.u_id != sinstance.u_id) {
                                    objectlist.splice(v, 1);
                                    v--;
                                    break;
                                }
                            }
                        }
                        for (var filter_uid in lastfilterTargets) {
                            //??????????????????????????????
                            var filterinstance = lastfilterTargets[filter_uid];
                            if (!cb.cs.instanceStatus[filterinstance.u_id])
                                cb.cs.instanceStatus[filterinstance.u_id] = { instance: filterinstance, ccs: {} };
                            cb.cs.instanceStatus[filterinstance.u_id].ccs[condition.index] = { c: condition, status: true };
                        }
                    }
                    for (var i = 0; i < objectlist.length; i++) {
                        var instance = objectlist[i];
                        var searchBehavior;
                        //??????????????????????????????
                        if (callTarget instanceof ls.BaseBehavior) {
                            var behaviors;
                            if (isFamily) {
                                if (triggerInfo && triggerInfo.familyVo)
                                    behaviors = triggerInfo.familyVo.behaviors;
                            }
                            else
                                behaviors = instance.behaviors;
                            //??????????????????????????????????????????????????????1?????????????????????????????????????????????????????????????????????
                            for (var j = 0; j < behaviors.length; j++) {
                                var bh = behaviors[j];
                                if (bh.name == callTarget.name) {
                                    searchBehavior = bh;
                                    break;
                                }
                            }
                        }
                        //??????????????????
                        this.decodeConditionProperties(c.event.sid, c.index, paramsInstance);
                        //????????????????????????????????????????????????????????????????????????????????????????????????
                        //?????????????????????????????????????????????????????????????????????????????????????????????????????????
                        var rs = callCondition.apply(searchBehavior ? searchBehavior : instance, [paramsInstance]);
                        rs.status = (isInvert) ? !rs.status : rs.status;
                        //??????for??????
                        if (rs.data && (rs.data instanceof ls.ForEvent || rs.data instanceof ls.ForEachOrderEvent || rs.data instanceof ls.OnForEachArrayElementEvent))
                            cb.loopDatas[cb.loopLayer++] = rs.data;
                        if (!cb.cs.instanceStatus[instance.u_id])
                            cb.cs.instanceStatus[instance.u_id] = { instance: instance, ccs: {} };
                        cb.cs.instanceStatus[instance.u_id].ccs[condition.index] = { c: condition, status: rs.status };
                        //????????????????????????
                        if (rs.instances && rs.status) {
                            for (var k = 0; k < rs.instances.length; k++) {
                                var rsIntance = rs.instances[k];
                                if (!cb.cs.instanceStatus[rsIntance.u_id])
                                    cb.cs.instanceStatus[rsIntance.u_id] = { instance: rsIntance, ccs: {} };
                                cb.cs.instanceStatus[rsIntance.u_id].ccs[condition.index] = { c: condition, status: true };
                            }
                        }
                        if (rs.status)
                            condition.currentStatus = rs.status;
                    }
                }
                //???????????????????????????????????????????????????????????????
                if (cb.checkall) {
                    //???????????????????????????????????????????????????
                    var nc = c.nextCondition;
                    if (nc) {
                        this.execNextCondition(nc, cb, triggerInfo, onComplete);
                    }
                    else {
                        if (onComplete)
                            onComplete();
                    }
                }
                else {
                    //????????????????????????????????????????????????????????? TODO,??????????????????????????????????????????
                    if (condition.currentStatus) {
                        var nc = c.nextCondition;
                        if (nc) {
                            this.execNextCondition(nc, cb, triggerInfo, onComplete);
                        }
                        else {
                            if (onComplete)
                                onComplete();
                        }
                    }
                    else {
                        if (onComplete)
                            onComplete();
                    }
                }
            }
        };
        EventSheetDecoder.checkCollistions = function () {
            var world = ls.World.getInstance();
            var objectList = world.objectList;
            var collisionGroups = {};
            for (var targetName in this.collisionSearchs) {
                var coVo = this.collisionSearchs[targetName];
                var owners = world.objectHash[coVo.owerName];
                for (var ownerKey in owners) {
                    var ownerObject = owners[ownerKey];
                    if (!ownerObject.container.stage)
                        continue;
                    if (ownerObject.isDead)
                        continue;
                    if (!ownerObject.collision)
                        continue;
                    for (var i = 0; i < coVo.enemyNames.length; i++) {
                        var enemyName = coVo.enemyNames[i];
                        var enemys = world.objectHash[enemyName];
                        for (var enemyKey in enemys) {
                            var enemyObject = enemys[enemyKey];
                            if (!enemyObject.container.stage)
                                continue;
                            if (!enemyObject.collision)
                                continue;
                            if (enemyObject.isDead)
                                continue;
                            var colliding = ls.Collision.checkCollision(ownerObject, enemyObject);
                            if (colliding) {
                                if (collisionGroups[ownerObject.u_id] == null) {
                                    collisionGroups[ownerObject.u_id] = [ownerObject, enemyObject];
                                }
                                if (collisionGroups[enemyObject.u_id] == null) {
                                    collisionGroups[enemyObject.u_id] = [enemyObject, ownerObject];
                                }
                            }
                        }
                    }
                }
            }
            var isExecCollision = {};
            for (var i2 = 0; i2 < objectList.length; i2++) {
                if (objectList[i2] instanceof ls.AIDisplayObject) {
                    var inst = objectList[i2];
                    var targets = collisionGroups[inst.u_id];
                    if (targets != null) {
                        var target = targets[1];
                        var insertNums = 0;
                        if (isExecCollision[inst.u_id] == null) {
                            insertNums++;
                            isExecCollision[inst.u_id] = inst;
                        }
                        if (isExecCollision[target.u_id] == null) {
                            insertNums++;
                            isExecCollision[target.u_id] = target;
                        }
                        if (insertNums != 2) {
                            inst.setIsColliding(true, target);
                        }
                    }
                    else {
                        inst.setIsColliding(false, null);
                    }
                }
            }
        };
        EventSheetDecoder.execScenePauseOrPlay = function (type) {
            if (type == 0)
                ls.StartUp.stage.frameRate = 0.001;
            else
                ls.StartUp.stage.frameRate = 60;
        };
        EventSheetDecoder.destory = function () {
            this.curSceneInstancesData = []; //?????????????????????????????????
            this.curSceneEventsData = [];
            this.curSceneAiObjects = [];
            this.curSceneAiObjectsHash = {};
            this.curSceneEvents = [];
            this.triggerConditions = [];
            this.curFamilys = {};
            ls.AISystem.instance.disableDataEvents = {};
            //?????????????????????????????????????????????
            ls.GameUILayer.stage.removeEventListener(egret.Event.ENTER_FRAME, this.eventsheetRender, this);
        };
        EventSheetDecoder.curSceneInstancesData = []; //???????????????????????????
        EventSheetDecoder.curSceneEventsData = []; //???????????????????????????
        EventSheetDecoder.curSceneAiObjects = []; //???????????????????????????
        EventSheetDecoder.curSceneAiObjectsHash = {}; //???????????????????????????(?????????????????????)
        EventSheetDecoder.curSceneEvents = []; //??????????????????????????? 
        EventSheetDecoder.curFamilys = {}; //?????????????????????
        EventSheetDecoder.eventSheets = {};
        EventSheetDecoder.collisionSearchs = {};
        EventSheetDecoder.lastTime = 0;
        EventSheetDecoder._tick = 60;
        EventSheetDecoder.testShape = new egret.Sprite();
        EventSheetDecoder.dt = 0;
        EventSheetDecoder.dt1 = 0;
        EventSheetDecoder.timeScale = 1;
        //????????????????????????????????????????????????????????????,??????????????????
        EventSheetDecoder.triggerConditions = [];
        return EventSheetDecoder;
    }());
    ls.EventSheetDecoder = EventSheetDecoder;
    egret.registerClass(EventSheetDecoder,'ls.EventSheetDecoder');
})(ls || (ls = {}));
//# sourceMappingURL=EventSheetDecoder.js.map