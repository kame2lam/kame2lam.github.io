<?xml version="1.0" encoding="UTF-8"?>
<project name="game1" version="2.2" showFps="0" openLog="1" fps="60" scaleMode="0" orientaion="0" renderMode="1" bgColor="0" stagewidth="414" stageheight="736" startscenename="newScene1">
  <objects>
    <type uiname="WebStorage" uitype="AIWebStorage"/>
    <type uiname="Browser" uitype="AIBrowser"/>
    <type uiname="Keyboard" uitype="AIKeyboard"/>
    <type uiname="Function" uitype="AIFunction"/>
    <type uiname="Global" uitype="Global"/>
    <type uiname="WebSocket" uitype="AIWebSocket"/>
    <type uiname="Ajax" uitype="AIAjax"/>
    <type uiname="System" uitype="AISystem"/>
    <type uiname="Touch" uitype="AITouch"/>
    <type uiname="MainScene" uitype="Scene"/>
    <type uiname="Layer89" uitype="Layer"/>
    <type uiname="AISprite95" uitype="AISprite"/>
    <type uiname="AISprite543" uitype="AISprite"/>
    <type uiname="AISprite545" uitype="AISprite"/>
    <type uiname="AISprite548" uitype="AISprite"/>
    <type uiname="AISprite551" uitype="AISprite"/>
    <type uiname="AISprite557" uitype="AISprite"/>
    <type uiname="Layer560" uitype="Layer"/>
    <type uiname="AITextField566" uitype="AIBitmapText"/>
    <type uiname="AIButton569" uitype="AIButton"/>
    <type uiname="AIButton583" uitype="AIButton"/>
    <type uiname="AITextField586" uitype="AITextField"/>
    <type uiname="newScene1" uitype="Scene"/>
    <type uiname="Layer589" uitype="Layer"/>
    <type uiname="AITextField592" uitype="AITextField"/>
    <type uiname="AISprite595" uitype="AISprite"/>
    <type uiname="AITextField598" uitype="AITextField"/>
    <type uiname="newScene2" uitype="Scene"/>
    <type uiname="Layer601" uitype="Layer"/>
    <type uiname="score" uitype="AITextField"/>
    <type uiname="AISprite607" uitype="AISprite"/>
    <type uiname="AITextField610" uitype="AITextField"/>
  </objects>
  <eventsheet>
    <sheet name="MainSceneEventSheet" targetscene="MainScene">
      <p key="ballNum" value="0" valuetype="number"/>
      <p key="score" value="0" valuetype="number"/>
      <event name="null" enabled="true" relation="1" triggerOnceWhileTrue="false">
        <description>null</description>
        <conditons>
          <condition type="OnSceneInitCompleteEvent" targetuiname="System" targetuitype="AISystem" invert="false" operatorType="0" isConflict="false" enabled="true">
            <properties/>
          </condition>
        </conditons>
        <actions>
          <action type="setValue" targetuiname="System" targetuitype="AISystem" isConflict="false" enabled="true">
            <properties>
              <p key="10" value="ballNum" valuetype="string" edittype="globalVariable">
                <description>%E8%AF%B7%E9%80%89%E6%8B%A9%E4%B8%80%E4%B8%AA%E5%85%A8%E5%B1%80%E5%8F%98%E9%87%8F%E3%80%82</description>
              </p>
              <p key="9" value="5" valuetype="any">
                <description>%E6%8C%87%E5%AE%9A%E5%85%A8%E5%B1%80%E5%8F%98%E9%87%8F%E7%9A%84%E5%80%BC%E3%80%82</description>
              </p>
            </properties>
          </action>
          <action type="setValue" targetuiname="System" targetuitype="AISystem" isConflict="false" enabled="true">
            <properties>
              <p key="10" value="score" valuetype="string" edittype="globalVariable">
                <description>%E8%AF%B7%E9%80%89%E6%8B%A9%E4%B8%80%E4%B8%AA%E5%85%A8%E5%B1%80%E5%8F%98%E9%87%8F%E3%80%82</description>
              </p>
              <p key="9" value="0" valuetype="any">
                <description>%E6%8C%87%E5%AE%9A%E5%85%A8%E5%B1%80%E5%8F%98%E9%87%8F%E7%9A%84%E5%80%BC%E3%80%82</description>
              </p>
            </properties>
          </action>
        </actions>
        <subevent/>
      </event>
      <event name="null" enabled="true" relation="1" triggerOnceWhileTrue="false">
        <description>null</description>
        <conditons>
          <condition type="OnCollisionWithOtherObjectEvent" targetuiname="AISprite95" targetuitype="AISprite" invert="false" operatorType="0" isConflict="false" enabled="true">
            <properties>
              <p key="object" uiname="AISprite548" uitype="AISprite" valuetype="string" edittype="instance">
                <description>%E9%80%89%E6%8B%A9%E4%B8%8E%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%A2%B0%E6%92%9E%E7%9A%84%E5%85%B6%E4%BB%96%E5%AE%9E%E4%BE%8B%E3%80%82</description>
              </p>
            </properties>
          </condition>
        </conditons>
        <actions>
          <action type="destory" targetuiname="AISprite548" targetuitype="AISprite" isConflict="false" enabled="true">
            <properties/>
          </action>
          <action type="subtractFrom" targetuiname="System" targetuitype="AISystem" isConflict="false" enabled="true">
            <properties>
              <p key="12" value="ballNum" valuetype="string" edittype="globalVariable">
                <description>%E8%AF%B7%E9%80%89%E6%8B%A9%E4%B8%80%E4%B8%AA%E5%85%A8%E5%B1%80%E5%8F%98%E9%87%8F%E3%80%82</description>
              </p>
              <p key="11" value="1" valuetype="number">
                <description>%E5%85%A8%E5%B1%80%E5%8F%98%E9%87%8F%E5%87%8F%E5%8E%BB%E7%9A%84%E5%80%BC%E3%80%82</description>
              </p>
            </properties>
          </action>
          <action type="addTo" targetuiname="System" targetuitype="AISystem" isConflict="false" enabled="true">
            <properties>
              <p key="14" value="score" valuetype="string" edittype="globalVariable">
                <description>%E8%AF%B7%E9%80%89%E6%8B%A9%E4%B8%80%E4%B8%AA%E5%85%A8%E5%B1%80%E5%8F%98%E9%87%8F%E3%80%82</description>
              </p>
              <p key="13" value="1" valuetype="number">
                <description>%E5%85%A8%E5%B1%80%E5%8F%98%E9%87%8F%E5%8A%A0%E4%B8%8A%E7%9A%84%E5%80%BC%E3%80%82</description>
              </p>
            </properties>
          </action>
        </actions>
        <subevent/>
      </event>
      <event name="null" enabled="true" relation="1" triggerOnceWhileTrue="false">
        <description>null</description>
        <conditons>
          <condition type="CompareYPosEvent" targetuiname="AISprite95" targetuitype="AISprite" invert="false" operatorType="0" isConflict="false" enabled="true">
            <properties>
              <p key="operationType" value="%22greaterThan%22" valuetype="string">
                <description>%E9%80%89%E6%8B%A9%E6%AF%94%E8%BE%83%E8%BF%90%E7%AE%97%E7%AC%A6%E3%80%82</description>
              </p>
              <p key="y" value="736" valuetype="number">
                <description>%E7%94%A8%E4%BA%8E%E6%AF%94%E8%BE%83%E7%9A%84%E5%80%BC%E3%80%82</description>
              </p>
            </properties>
          </condition>
        </conditons>
        <actions>
          <action type="gotoScene" targetuiname="System" targetuitype="AISystem" isConflict="false" enabled="true">
            <properties>
              <p key="18" value="%22newScene2%22" valuetype="string">
                <description>%E6%8C%87%E5%AE%9A%E8%A6%81%E8%B7%B3%E8%BD%AC%E7%9A%84%E5%9C%BA%E6%99%AF%E5%90%8D%E3%80%82</description>
              </p>
            </properties>
          </action>
        </actions>
        <subevent/>
      </event>
      <event name="null" enabled="true" relation="1" triggerOnceWhileTrue="false">
        <description>null</description>
        <conditons>
          <condition type="CompareVariableEvent" targetuiname="System" targetuitype="AISystem" invert="false" operatorType="0" isConflict="false" enabled="true">
            <properties>
              <p key="variable" value="ballNum" valuetype="string" edittype="globalVariable">
                <description>%E9%80%89%E6%8B%A9%E5%85%A8%E5%B1%80%E5%8F%98%E9%87%8F%E3%80%82</description>
              </p>
              <p key="operationType" value="%22lessOrEqual%22" valuetype="string">
                <description>%E9%80%89%E6%8B%A9%E6%AF%94%E8%BE%83%E8%BF%90%E7%AE%97%E7%AC%A6%E3%80%82</description>
              </p>
              <p key="value" value="0" valuetype="any">
                <description>%E8%AF%B7%E8%BE%93%E5%85%A5%E7%94%A8%E4%BA%8E%E6%AF%94%E8%BE%83%E7%9A%84%E5%80%BC%E3%80%82</description>
              </p>
            </properties>
          </condition>
        </conditons>
        <actions>
          <action type="gotoScene" targetuiname="System" targetuitype="AISystem" isConflict="false" enabled="true">
            <properties>
              <p key="18" value="%22newScene2%22" valuetype="string">
                <description>%E6%8C%87%E5%AE%9A%E8%A6%81%E8%B7%B3%E8%BD%AC%E7%9A%84%E5%9C%BA%E6%99%AF%E5%90%8D%E3%80%82</description>
              </p>
            </properties>
          </action>
        </actions>
        <subevent/>
      </event>
    </sheet>
    <sheet name="newScene1EventSheet" targetscene="newScene1">
      <event name="null" enabled="true" relation="1" triggerOnceWhileTrue="false">
        <description>null</description>
        <conditons>
          <condition type="OnButtonBeginEvent" targetuiname="AISprite595" targetuitype="AISprite" invert="false" operatorType="0" isConflict="false" enabled="true">
            <properties/>
          </condition>
        </conditons>
        <actions>
          <action type="gotoScene" targetuiname="System" targetuitype="AISystem" isConflict="false" enabled="true">
            <properties>
              <p key="18" value="%22MainScene%22" valuetype="string">
                <description>%E6%8C%87%E5%AE%9A%E8%A6%81%E8%B7%B3%E8%BD%AC%E7%9A%84%E5%9C%BA%E6%99%AF%E5%90%8D%E3%80%82</description>
              </p>
            </properties>
          </action>
        </actions>
        <subevent/>
      </event>
    </sheet>
    <sheet name="newScene2EventSheet" targetscene="newScene2">
      <event name="null" enabled="true" relation="1" triggerOnceWhileTrue="false">
        <description>null</description>
        <conditons>
          <condition type="OnButtonBeginEvent" targetuiname="AISprite607" targetuitype="AISprite" invert="false" operatorType="0" isConflict="false" enabled="true">
            <properties/>
          </condition>
        </conditons>
        <actions>
          <action type="gotoScene" targetuiname="System" targetuitype="AISystem" isConflict="false" enabled="true">
            <properties>
              <p key="18" value="%22MainScene%22" valuetype="string">
                <description>%E6%8C%87%E5%AE%9A%E8%A6%81%E8%B7%B3%E8%BD%AC%E7%9A%84%E5%9C%BA%E6%99%AF%E5%90%8D%E3%80%82</description>
              </p>
            </properties>
          </action>
        </actions>
        <subevent/>
      </event>
      <event name="null" enabled="true" relation="1" triggerOnceWhileTrue="false">
        <description>null</description>
        <conditons>
          <condition type="OnSceneInitCompleteEvent" targetuiname="System" targetuitype="AISystem" invert="false" operatorType="0" isConflict="false" enabled="true">
            <properties/>
          </condition>
        </conditons>
        <actions>
          <action type="setText" targetuiname="score" targetuitype="AITextField" isConflict="false" enabled="true">
            <properties>
              <p key="1" value="%22%E5%BE%97%E5%88%86%3A%22%2BSystem.score" valuetype="string">
                <description>%E8%AE%BE%E7%BD%AE%E6%96%87%E6%9C%AC%E5%86%85%E5%AE%B9%E3%80%82</description>
              </p>
            </properties>
          </action>
        </actions>
        <subevent/>
      </event>
    </sheet>
  </eventsheet>
  <scenes>
    <object type="Scene" uiname="newScene1" layer="0">
      <familys/>
      <properties>
        <p key="sceneWidth" value="414" valuetype="number"/>
        <p key="sceneHeight" value="736" valuetype="number"/>
        <p key="width" value="1708" valuetype="number"/>
        <p key="height" value="960" valuetype="number"/>
      </properties>
      <customproperties/>
      <behaviors/>
      <children>
        <object type="Layer" uiname="Layer589" parallaxX="100" parallaxY="100" layer="0">
          <properties>
            <p key="sceneWidth" value="414" valuetype="number"/>
            <p key="sceneHeight" value="736" valuetype="number"/>
            <p key="parallaxX" value="100" valuetype="number"/>
            <p key="parallaxY" value="100" valuetype="number"/>
            <p key="layerAlpha" value="1" valuetype="number"/>
            <p key="layerVisible" value="true" valuetype="boolean"/>
            <p key="layerScaleX" value="100" valuetype="number"/>
            <p key="layerScaleY" value="100" valuetype="number"/>
            <p key="cacheAsBitmap" value="false" valuetype="boolean"/>
          </properties>
          <customproperties/>
          <behaviors/>
          <children>
            <object type="AITextField" uiname="AITextField598" layer="0">
              <properties>
                <p key="name" value="AITextField598" valuetype="string">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%B1%BB%E5%9E%8B%E5%90%8D%E7%A7%B0%EF%BC%8C%E8%BF%99%E4%B9%9F%E5%B0%B1%E6%98%AF%E8%AF%B4%EF%BC%8C%E5%A4%9A%E4%B8%AA%E5%AE%9E%E4%BE%8B%E5%8F%AF%E8%83%BD%E4%BC%9A%E6%9C%89%E7%9B%B8%E5%90%8C%E7%9A%84%E5%90%8D%E5%AD%97%EF%BC%8C%E8%80%8C%E5%90%8C%E4%B8%80%E7%B1%BB%E5%9E%8B%E5%AE%9E%E4%BE%8B%E4%BC%9A%E5%85%B7%E5%A4%87%E7%9B%B8%E5%90%8C%E7%9A%84%E8%87%AA%E5%AE%9A%E4%B9%89%E5%B1%9E%E6%80%A7%E4%B8%8E%E8%A1%8C%E4%B8%BA</description>
                </p>
                <p key="uiGuid" value="599" valuetype="string">
                  <description>%E7%BC%96%E8%BE%91%E5%99%A8%E7%94%9F%E6%88%90%E7%9A%84%E5%94%AF%E4%B8%80id</description>
                </p>
                <p key="global" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E4%B8%BA%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%EF%BC%8C%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%E5%9C%A8%E8%B7%A8%E5%9C%BA%E6%99%AF%E5%90%8E%E4%B8%8D%E4%BC%9A%E8%A2%AB%E9%94%80%E6%AF%81%EF%BC%8C%E4%BB%8D%E7%84%B6%E4%BC%9A%E8%A2%AB%E4%BF%9D%E7%95%99%EF%BC%8C%E5%B9%B6%E4%B8%94%E5%85%B6%E6%9C%AC%E8%BA%AB%E5%B8%A6%E7%9A%84%E6%95%B0%E6%8D%AE%E4%B9%9F%E4%BC%9A%E4%BF%9D%E7%95%99</description>
                </p>
                <p key="visible" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E5%8F%AF%E8%A7%81</description>
                </p>
                <p key="x" value="200" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="y" value="384" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorX" value="0.5" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorY" value="0.5" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="width" value="200" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%AE%BD%E5%BA%A6</description>
                </p>
                <p key="height" value="50" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%AB%98%E5%BA%A6</description>
                </p>
                <p key="angle" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E8%87%AA%E8%BA%AB%E8%A7%92%E5%BA%A6</description>
                </p>
                <p key="alpha" value="1" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%80%8F%E6%98%8E%E5%BA%A6</description>
                </p>
                <p key="text" value="%E9%96%8B%E5%A7%8B" valuetype="string">
                  <description>%E9%BB%98%E8%AE%A4%E6%96%87%E6%9C%AC</description>
                </p>
                <p key="fontFamily" value="%E5%AE%8B%E4%BD%93" valuetype="string">
                  <description>%E5%AD%97%E4%BD%93</description>
                </p>
                <p key="size" value="40" valuetype="number">
                  <description>%E5%AD%97%E4%BD%93%E5%A4%A7%E5%B0%8F</description>
                </p>
                <p key="textColor" value="16777215" valuetype="number">
                  <description>%E5%AD%97%E4%BD%93%E9%A2%9C%E8%89%B2</description>
                </p>
                <p key="bold" value="false" valuetype="boolean">
                  <description>%E7%B2%97%E4%BD%93</description>
                </p>
                <p key="enableInput" value="false" valuetype="boolean">
                  <description>%E5%85%81%E8%AE%B8%E8%BE%93%E5%85%A5</description>
                </p>
                <p key="inputType" value="text" valuetype="string">
                  <description>%E5%85%81%E8%AE%B8%E8%BE%93%E5%85%A5</description>
                </p>
                <p key="textAlign" value="center" valuetype="string">
                  <description>%E6%B0%B4%E5%B9%B3%E5%B8%83%E5%B1%80</description>
                </p>
                <p key="verticalAlign" value="middle" valuetype="string">
                  <description>%E5%9E%82%E7%9B%B4%E5%B8%83%E5%B1%80</description>
                </p>
                <p key="maxChars" value="100" valuetype="number">
                  <description>%E5%AD%97%E6%95%B0%E4%B8%8A%E9%99%90</description>
                </p>
                <p key="italic" value="false" valuetype="boolean">
                  <description>%E6%96%9C%E4%BD%93</description>
                </p>
                <p key="wordWrap" value="false" valuetype="boolean">
                  <description>%E6%94%AF%E6%8C%81%E6%8D%A2%E8%A1%8C</description>
                </p>
                <p key="enabled" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E9%BB%98%E8%AE%A4%E6%98%AF%E5%90%A6%E6%94%AF%E6%8C%81%E8%A7%A6%E6%91%B8</description>
                </p>
                <p key="collision" value="false" valuetype="boolean">
                  <description>%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E</description>
                </p>
              </properties>
              <customproperties/>
              <behaviors/>
              <children/>
            </object>
            <object type="AISprite" uiname="AISprite595" layer="0">
              <properties>
                <p key="name" value="AISprite595" valuetype="string">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%B1%BB%E5%9E%8B%E5%90%8D%E7%A7%B0%EF%BC%8C%E8%BF%99%E4%B9%9F%E5%B0%B1%E6%98%AF%E8%AF%B4%EF%BC%8C%E5%A4%9A%E4%B8%AA%E5%AE%9E%E4%BE%8B%E5%8F%AF%E8%83%BD%E4%BC%9A%E6%9C%89%E7%9B%B8%E5%90%8C%E7%9A%84%E5%90%8D%E5%AD%97%EF%BC%8C%E8%80%8C%E5%90%8C%E4%B8%80%E7%B1%BB%E5%9E%8B%E5%AE%9E%E4%BE%8B%E4%BC%9A%E5%85%B7%E5%A4%87%E7%9B%B8%E5%90%8C%E7%9A%84%E8%87%AA%E5%AE%9A%E4%B9%89%E5%B1%9E%E6%80%A7%E4%B8%8E%E8%A1%8C%E4%B8%BA</description>
                </p>
                <p key="uiGuid" value="596" valuetype="string">
                  <description>%E7%BC%96%E8%BE%91%E5%99%A8%E7%94%9F%E6%88%90%E7%9A%84%E5%94%AF%E4%B8%80id</description>
                </p>
                <p key="global" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E4%B8%BA%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%EF%BC%8C%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%E5%9C%A8%E8%B7%A8%E5%9C%BA%E6%99%AF%E5%90%8E%E4%B8%8D%E4%BC%9A%E8%A2%AB%E9%94%80%E6%AF%81%EF%BC%8C%E4%BB%8D%E7%84%B6%E4%BC%9A%E8%A2%AB%E4%BF%9D%E7%95%99%EF%BC%8C%E5%B9%B6%E4%B8%94%E5%85%B6%E6%9C%AC%E8%BA%AB%E5%B8%A6%E7%9A%84%E6%95%B0%E6%8D%AE%E4%B9%9F%E4%BC%9A%E4%BF%9D%E7%95%99</description>
                </p>
                <p key="visible" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E5%8F%AF%E8%A7%81</description>
                </p>
                <p key="x" value="202" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="y" value="386" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorX" value="0.5" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorY" value="0.5" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="width" value="252" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%AE%BD%E5%BA%A6</description>
                </p>
                <p key="height" value="60" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%AB%98%E5%BA%A6</description>
                </p>
                <p key="angle" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E8%87%AA%E8%BA%AB%E8%A7%92%E5%BA%A6</description>
                </p>
                <p key="alpha" value="1" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%80%8F%E6%98%8E%E5%BA%A6</description>
                </p>
                <p key="url" value="resource%2FuserAsset%2F%E6%8C%89%E9%88%95.png" valuetype="string">
                  <description>%E5%9B%BE%E7%89%87%E6%BA%90</description>
                </p>
                <p key="enabled" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E9%BB%98%E8%AE%A4%E6%98%AF%E5%90%A6%E6%94%AF%E6%8C%81%E8%A7%A6%E6%91%B8</description>
                </p>
                <p key="collision" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E6%98%AF%E5%90%A6%E5%8F%AF%E4%BB%A5%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%A3%80%E6%B5%8B</description>
                </p>
                <p key="collisionData" value="%22%22" valuetype="string">
                  <description>%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%97%B6%E7%9A%84%E7%A2%B0%E6%92%9E%E6%95%B0%E6%8D%AE</description>
                </p>
              </properties>
              <customproperties/>
              <behaviors/>
              <children/>
            </object>
            <object type="AITextField" uiname="AITextField592" layer="0">
              <properties>
                <p key="name" value="AITextField592" valuetype="string">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%B1%BB%E5%9E%8B%E5%90%8D%E7%A7%B0%EF%BC%8C%E8%BF%99%E4%B9%9F%E5%B0%B1%E6%98%AF%E8%AF%B4%EF%BC%8C%E5%A4%9A%E4%B8%AA%E5%AE%9E%E4%BE%8B%E5%8F%AF%E8%83%BD%E4%BC%9A%E6%9C%89%E7%9B%B8%E5%90%8C%E7%9A%84%E5%90%8D%E5%AD%97%EF%BC%8C%E8%80%8C%E5%90%8C%E4%B8%80%E7%B1%BB%E5%9E%8B%E5%AE%9E%E4%BE%8B%E4%BC%9A%E5%85%B7%E5%A4%87%E7%9B%B8%E5%90%8C%E7%9A%84%E8%87%AA%E5%AE%9A%E4%B9%89%E5%B1%9E%E6%80%A7%E4%B8%8E%E8%A1%8C%E4%B8%BA</description>
                </p>
                <p key="uiGuid" value="593" valuetype="string">
                  <description>%E7%BC%96%E8%BE%91%E5%99%A8%E7%94%9F%E6%88%90%E7%9A%84%E5%94%AF%E4%B8%80id</description>
                </p>
                <p key="global" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E4%B8%BA%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%EF%BC%8C%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%E5%9C%A8%E8%B7%A8%E5%9C%BA%E6%99%AF%E5%90%8E%E4%B8%8D%E4%BC%9A%E8%A2%AB%E9%94%80%E6%AF%81%EF%BC%8C%E4%BB%8D%E7%84%B6%E4%BC%9A%E8%A2%AB%E4%BF%9D%E7%95%99%EF%BC%8C%E5%B9%B6%E4%B8%94%E5%85%B6%E6%9C%AC%E8%BA%AB%E5%B8%A6%E7%9A%84%E6%95%B0%E6%8D%AE%E4%B9%9F%E4%BC%9A%E4%BF%9D%E7%95%99</description>
                </p>
                <p key="visible" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E5%8F%AF%E8%A7%81</description>
                </p>
                <p key="x" value="201" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="y" value="200" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorX" value="0.5" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorY" value="0.5" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="width" value="300" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%AE%BD%E5%BA%A6</description>
                </p>
                <p key="height" value="50" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%AB%98%E5%BA%A6</description>
                </p>
                <p key="angle" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E8%87%AA%E8%BA%AB%E8%A7%92%E5%BA%A6</description>
                </p>
                <p key="alpha" value="1" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%80%8F%E6%98%8E%E5%BA%A6</description>
                </p>
                <p key="text" value="%E6%89%93%E7%A3%9A%E9%A0%AD%E9%81%8A%E6%88%B2" valuetype="string">
                  <description>%E9%BB%98%E8%AE%A4%E6%96%87%E6%9C%AC</description>
                </p>
                <p key="fontFamily" value="%E6%A8%99%E6%A5%B7%E9%AB%94" valuetype="string">
                  <description>%E5%AD%97%E4%BD%93</description>
                </p>
                <p key="size" value="50" valuetype="number">
                  <description>%E5%AD%97%E4%BD%93%E5%A4%A7%E5%B0%8F</description>
                </p>
                <p key="textColor" value="16777215" valuetype="number">
                  <description>%E5%AD%97%E4%BD%93%E9%A2%9C%E8%89%B2</description>
                </p>
                <p key="bold" value="false" valuetype="boolean">
                  <description>%E7%B2%97%E4%BD%93</description>
                </p>
                <p key="enableInput" value="false" valuetype="boolean">
                  <description>%E5%85%81%E8%AE%B8%E8%BE%93%E5%85%A5</description>
                </p>
                <p key="inputType" value="text" valuetype="string">
                  <description>%E5%85%81%E8%AE%B8%E8%BE%93%E5%85%A5</description>
                </p>
                <p key="textAlign" value="center" valuetype="string">
                  <description>%E6%B0%B4%E5%B9%B3%E5%B8%83%E5%B1%80</description>
                </p>
                <p key="verticalAlign" value="middle" valuetype="string">
                  <description>%E5%9E%82%E7%9B%B4%E5%B8%83%E5%B1%80</description>
                </p>
                <p key="maxChars" value="100" valuetype="number">
                  <description>%E5%AD%97%E6%95%B0%E4%B8%8A%E9%99%90</description>
                </p>
                <p key="italic" value="false" valuetype="boolean">
                  <description>%E6%96%9C%E4%BD%93</description>
                </p>
                <p key="wordWrap" value="false" valuetype="boolean">
                  <description>%E6%94%AF%E6%8C%81%E6%8D%A2%E8%A1%8C</description>
                </p>
                <p key="enabled" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E9%BB%98%E8%AE%A4%E6%98%AF%E5%90%A6%E6%94%AF%E6%8C%81%E8%A7%A6%E6%91%B8</description>
                </p>
                <p key="collision" value="false" valuetype="boolean">
                  <description>%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E</description>
                </p>
              </properties>
              <customproperties/>
              <behaviors/>
              <children/>
            </object>
          </children>
        </object>
      </children>
    </object>
    <object type="Scene" uiname="MainScene" layer="0">
      <familys/>
      <properties>
        <p key="sceneWidth" value="414" valuetype="number"/>
        <p key="sceneHeight" value="736" valuetype="number"/>
        <p key="width" value="1708" valuetype="number"/>
        <p key="height" value="960" valuetype="number"/>
      </properties>
      <customproperties/>
      <behaviors/>
      <children>
        <object type="Layer" uiname="Layer89" parallaxX="100" parallaxY="100" layer="0">
          <properties>
            <p key="sceneWidth" value="414" valuetype="number"/>
            <p key="sceneHeight" value="736" valuetype="number"/>
            <p key="parallaxX" value="100" valuetype="number"/>
            <p key="parallaxY" value="100" valuetype="number"/>
            <p key="layerAlpha" value="1" valuetype="number"/>
            <p key="layerVisible" value="true" valuetype="boolean"/>
            <p key="layerScaleX" value="100" valuetype="number"/>
            <p key="layerScaleY" value="100" valuetype="number"/>
            <p key="cacheAsBitmap" value="false" valuetype="boolean"/>
          </properties>
          <customproperties/>
          <behaviors/>
          <children>
            <object type="AITextField" uiname="AITextField586" layer="0">
              <properties>
                <p key="name" value="AITextField586" valuetype="string">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%B1%BB%E5%9E%8B%E5%90%8D%E7%A7%B0%EF%BC%8C%E8%BF%99%E4%B9%9F%E5%B0%B1%E6%98%AF%E8%AF%B4%EF%BC%8C%E5%A4%9A%E4%B8%AA%E5%AE%9E%E4%BE%8B%E5%8F%AF%E8%83%BD%E4%BC%9A%E6%9C%89%E7%9B%B8%E5%90%8C%E7%9A%84%E5%90%8D%E5%AD%97%EF%BC%8C%E8%80%8C%E5%90%8C%E4%B8%80%E7%B1%BB%E5%9E%8B%E5%AE%9E%E4%BE%8B%E4%BC%9A%E5%85%B7%E5%A4%87%E7%9B%B8%E5%90%8C%E7%9A%84%E8%87%AA%E5%AE%9A%E4%B9%89%E5%B1%9E%E6%80%A7%E4%B8%8E%E8%A1%8C%E4%B8%BA</description>
                </p>
                <p key="uiGuid" value="587" valuetype="string">
                  <description>%E7%BC%96%E8%BE%91%E5%99%A8%E7%94%9F%E6%88%90%E7%9A%84%E5%94%AF%E4%B8%80id</description>
                </p>
                <p key="global" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E4%B8%BA%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%EF%BC%8C%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%E5%9C%A8%E8%B7%A8%E5%9C%BA%E6%99%AF%E5%90%8E%E4%B8%8D%E4%BC%9A%E8%A2%AB%E9%94%80%E6%AF%81%EF%BC%8C%E4%BB%8D%E7%84%B6%E4%BC%9A%E8%A2%AB%E4%BF%9D%E7%95%99%EF%BC%8C%E5%B9%B6%E4%B8%94%E5%85%B6%E6%9C%AC%E8%BA%AB%E5%B8%A6%E7%9A%84%E6%95%B0%E6%8D%AE%E4%B9%9F%E4%BC%9A%E4%BF%9D%E7%95%99</description>
                </p>
                <p key="visible" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E5%8F%AF%E8%A7%81</description>
                </p>
                <p key="x" value="203.99082012323615" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="y" value="322.74750221126715" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorX" value="0.5003964459798641" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorY" value="0.4879033716954229" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="width" value="164.1532379760274" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%AE%BD%E5%BA%A6</description>
                </p>
                <p key="height" value="75.22019257618899" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%AB%98%E5%BA%A6</description>
                </p>
                <p key="angle" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E8%87%AA%E8%BA%AB%E8%A7%92%E5%BA%A6</description>
                </p>
                <p key="alpha" value="1" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%80%8F%E6%98%8E%E5%BA%A6</description>
                </p>
                <p key="text" value="Win!!" valuetype="string">
                  <description>%E9%BB%98%E8%AE%A4%E6%96%87%E6%9C%AC</description>
                </p>
                <p key="fontFamily" value="%E5%AE%8B%E4%BD%93" valuetype="string">
                  <description>%E5%AD%97%E4%BD%93</description>
                </p>
                <p key="size" value="50" valuetype="number">
                  <description>%E5%AD%97%E4%BD%93%E5%A4%A7%E5%B0%8F</description>
                </p>
                <p key="textColor" value="16777215" valuetype="number">
                  <description>%E5%AD%97%E4%BD%93%E9%A2%9C%E8%89%B2</description>
                </p>
                <p key="bold" value="false" valuetype="boolean">
                  <description>%E7%B2%97%E4%BD%93</description>
                </p>
                <p key="enableInput" value="false" valuetype="boolean">
                  <description>%E5%85%81%E8%AE%B8%E8%BE%93%E5%85%A5</description>
                </p>
                <p key="inputType" value="text" valuetype="string">
                  <description>%E5%85%81%E8%AE%B8%E8%BE%93%E5%85%A5</description>
                </p>
                <p key="textAlign" value="center" valuetype="string">
                  <description>%E6%B0%B4%E5%B9%B3%E5%B8%83%E5%B1%80</description>
                </p>
                <p key="verticalAlign" value="middle" valuetype="string">
                  <description>%E5%9E%82%E7%9B%B4%E5%B8%83%E5%B1%80</description>
                </p>
                <p key="maxChars" value="100" valuetype="number">
                  <description>%E5%AD%97%E6%95%B0%E4%B8%8A%E9%99%90</description>
                </p>
                <p key="italic" value="false" valuetype="boolean">
                  <description>%E6%96%9C%E4%BD%93</description>
                </p>
                <p key="wordWrap" value="false" valuetype="boolean">
                  <description>%E6%94%AF%E6%8C%81%E6%8D%A2%E8%A1%8C</description>
                </p>
                <p key="enabled" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E9%BB%98%E8%AE%A4%E6%98%AF%E5%90%A6%E6%94%AF%E6%8C%81%E8%A7%A6%E6%91%B8</description>
                </p>
                <p key="collision" value="false" valuetype="boolean">
                  <description>%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E</description>
                </p>
              </properties>
              <customproperties/>
              <behaviors/>
              <children/>
            </object>
            <object type="AIButton" uiname="AIButton583" layer="0">
              <properties>
                <p key="name" value="AIButton583" valuetype="string">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%B1%BB%E5%9E%8B%E5%90%8D%E7%A7%B0%EF%BC%8C%E8%BF%99%E4%B9%9F%E5%B0%B1%E6%98%AF%E8%AF%B4%EF%BC%8C%E5%A4%9A%E4%B8%AA%E5%AE%9E%E4%BE%8B%E5%8F%AF%E8%83%BD%E4%BC%9A%E6%9C%89%E7%9B%B8%E5%90%8C%E7%9A%84%E5%90%8D%E5%AD%97%EF%BC%8C%E8%80%8C%E5%90%8C%E4%B8%80%E7%B1%BB%E5%9E%8B%E5%AE%9E%E4%BE%8B%E4%BC%9A%E5%85%B7%E5%A4%87%E7%9B%B8%E5%90%8C%E7%9A%84%E8%87%AA%E5%AE%9A%E4%B9%89%E5%B1%9E%E6%80%A7%E4%B8%8E%E8%A1%8C%E4%B8%BA</description>
                </p>
                <p key="uiGuid" value="584" valuetype="string">
                  <description>%E7%BC%96%E8%BE%91%E5%99%A8%E7%94%9F%E6%88%90%E7%9A%84%E5%94%AF%E4%B8%80id</description>
                </p>
                <p key="global" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E4%B8%BA%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%EF%BC%8C%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%E5%9C%A8%E8%B7%A8%E5%9C%BA%E6%99%AF%E5%90%8E%E4%B8%8D%E4%BC%9A%E8%A2%AB%E9%94%80%E6%AF%81%EF%BC%8C%E4%BB%8D%E7%84%B6%E4%BC%9A%E8%A2%AB%E4%BF%9D%E7%95%99%EF%BC%8C%E5%B9%B6%E4%B8%94%E5%85%B6%E6%9C%AC%E8%BA%AB%E5%B8%A6%E7%9A%84%E6%95%B0%E6%8D%AE%E4%B9%9F%E4%BC%9A%E4%BF%9D%E7%95%99</description>
                </p>
                <p key="visible" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E5%8F%AF%E8%A7%81</description>
                </p>
                <p key="x" value="214.00016055809715" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="y" value="387.5306537609877" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorX" value="0.5" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorY" value="0.5" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="width" value="254.1235151586735" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%AE%BD%E5%BA%A6</description>
                </p>
                <p key="height" value="89.7294385783044" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%AB%98%E5%BA%A6</description>
                </p>
                <p key="angle" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E8%87%AA%E8%BA%AB%E8%A7%92%E5%BA%A6</description>
                </p>
                <p key="alpha" value="1" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%80%8F%E6%98%8E%E5%BA%A6</description>
                </p>
                <p key="upSkin" value="" valuetype="string">
                  <description>%E5%BD%93%E5%89%8D%E6%8C%89%E7%BA%BD%E5%BC%B9%E8%B5%B7%E6%97%B6%E7%9A%84%E5%9B%BE%E7%89%87%E6%BA%90</description>
                </p>
                <p key="downSkin" value="" valuetype="string">
                  <description>%E5%BD%93%E5%89%8D%E6%8C%89%E7%BA%BD%E6%8C%89%E4%B8%8B%E6%97%B6%E7%9A%84%E5%9B%BE%E7%89%87%E6%BA%90</description>
                </p>
                <p key="disableSkin" value="" valuetype="string">
                  <description>%E5%BD%93%E5%89%8D%E6%8C%89%E7%BA%BD%E7%A6%81%E7%94%A8%E6%97%B6%E7%9A%84%E5%9B%BE%E7%89%87%E6%BA%90</description>
                </p>
                <p key="text" value="Gome%20Over!" valuetype="string">
                  <description>%E5%BD%93%E5%89%8D%E6%8C%89%E7%BA%BD%E7%9A%84%E6%96%87%E6%9C%AC%E6%A0%87%E7%AD%BE</description>
                </p>
                <p key="fontFamily" value="%E5%AE%8B%E4%BD%93" valuetype="string">
                  <description>%E5%AD%97%E4%BD%93</description>
                </p>
                <p key="size" value="34" valuetype="number">
                  <description>%E5%AD%97%E4%BD%93%E5%A4%A7%E5%B0%8F</description>
                </p>
                <p key="textColor" value="65536" valuetype="number">
                  <description>%E5%AD%97%E4%BD%93%E9%A2%9C%E8%89%B2</description>
                </p>
                <p key="bold" value="false" valuetype="boolean">
                  <description>%E7%B2%97%E4%BD%93</description>
                </p>
                <p key="enableInput" value="false" valuetype="boolean">
                  <description>%E5%85%81%E8%AE%B8%E8%BE%93%E5%85%A5</description>
                </p>
                <p key="textAlign" value="center" valuetype="string">
                  <description>%E6%B0%B4%E5%B9%B3%E5%B8%83%E5%B1%80</description>
                </p>
                <p key="verticalAlign" value="middle" valuetype="string">
                  <description>%E5%9E%82%E7%9B%B4%E5%B8%83%E5%B1%80</description>
                </p>
                <p key="maxChars" value="100" valuetype="number">
                  <description>%E5%AD%97%E6%95%B0%E4%B8%8A%E9%99%90</description>
                </p>
                <p key="italic" value="false" valuetype="boolean">
                  <description>%E6%96%9C%E4%BD%93</description>
                </p>
                <p key="displayAsPassword" value="false" valuetype="boolean">
                  <description>%E5%AF%86%E7%A0%81%E6%98%BE%E7%A4%BA</description>
                </p>
                <p key="wordWrap" value="false" valuetype="boolean">
                  <description>%E6%94%AF%E6%8C%81%E6%8D%A2%E8%A1%8C</description>
                </p>
                <p key="enabled" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E9%BB%98%E8%AE%A4%E6%98%AF%E5%90%A6%E6%94%AF%E6%8C%81%E8%A7%A6%E6%91%B8</description>
                </p>
                <p key="collision" value="false" valuetype="boolean">
                  <description>%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E</description>
                </p>
                <p key="collisionData" value="%5Bobject%20_214%5D" valuetype="string">
                  <description>%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%97%B6%E7%9A%84%E7%A2%B0%E6%92%9E%E6%95%B0%E6%8D%AE</description>
                </p>
              </properties>
              <customproperties/>
              <behaviors/>
              <children/>
            </object>
            <object type="AISprite" uiname="AISprite548" layer="0">
              <properties>
                <p key="name" value="AISprite548" valuetype="string">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%B1%BB%E5%9E%8B%E5%90%8D%E7%A7%B0%EF%BC%8C%E8%BF%99%E4%B9%9F%E5%B0%B1%E6%98%AF%E8%AF%B4%EF%BC%8C%E5%A4%9A%E4%B8%AA%E5%AE%9E%E4%BE%8B%E5%8F%AF%E8%83%BD%E4%BC%9A%E6%9C%89%E7%9B%B8%E5%90%8C%E7%9A%84%E5%90%8D%E5%AD%97%EF%BC%8C%E8%80%8C%E5%90%8C%E4%B8%80%E7%B1%BB%E5%9E%8B%E5%AE%9E%E4%BE%8B%E4%BC%9A%E5%85%B7%E5%A4%87%E7%9B%B8%E5%90%8C%E7%9A%84%E8%87%AA%E5%AE%9A%E4%B9%89%E5%B1%9E%E6%80%A7%E4%B8%8E%E8%A1%8C%E4%B8%BA</description>
                </p>
                <p key="uiGuid" value="576" valuetype="string">
                  <description>%E7%BC%96%E8%BE%91%E5%99%A8%E7%94%9F%E6%88%90%E7%9A%84%E5%94%AF%E4%B8%80id</description>
                </p>
                <p key="global" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E4%B8%BA%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%EF%BC%8C%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%E5%9C%A8%E8%B7%A8%E5%9C%BA%E6%99%AF%E5%90%8E%E4%B8%8D%E4%BC%9A%E8%A2%AB%E9%94%80%E6%AF%81%EF%BC%8C%E4%BB%8D%E7%84%B6%E4%BC%9A%E8%A2%AB%E4%BF%9D%E7%95%99%EF%BC%8C%E5%B9%B6%E4%B8%94%E5%85%B6%E6%9C%AC%E8%BA%AB%E5%B8%A6%E7%9A%84%E6%95%B0%E6%8D%AE%E4%B9%9F%E4%BC%9A%E4%BF%9D%E7%95%99</description>
                </p>
                <p key="visible" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E5%8F%AF%E8%A7%81</description>
                </p>
                <p key="x" value="325.75738962003516" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="y" value="229.4313228239453" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorX" value="-0.16352159922678663" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorY" value="-0.20072116361146175" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="width" value="67.19755903846021" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%AE%BD%E5%BA%A6</description>
                </p>
                <p key="height" value="16.820740695601984" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%AB%98%E5%BA%A6</description>
                </p>
                <p key="angle" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E8%87%AA%E8%BA%AB%E8%A7%92%E5%BA%A6</description>
                </p>
                <p key="alpha" value="1" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%80%8F%E6%98%8E%E5%BA%A6</description>
                </p>
                <p key="url" value="resource%2FuserAsset%2FRectangle.png" valuetype="string">
                  <description>%E5%9B%BE%E7%89%87%E6%BA%90</description>
                </p>
                <p key="enabled" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E9%BB%98%E8%AE%A4%E6%98%AF%E5%90%A6%E6%94%AF%E6%8C%81%E8%A7%A6%E6%91%B8</description>
                </p>
                <p key="collision" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E6%98%AF%E5%90%A6%E5%8F%AF%E4%BB%A5%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%A3%80%E6%B5%8B</description>
                </p>
                <p key="collisionData" value="0%2Fn0.24%7C9.73%2C32.96%7C16.18%2C67.77%7C10.15%2C67.20%7C0.00%2C0.00%7C0.00" valuetype="string" edittype="collisionData">
                  <description>%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%97%B6%E7%9A%84%E7%A2%B0%E6%92%9E%E6%95%B0%E6%8D%AE</description>
                </p>
              </properties>
              <customproperties/>
              <behaviors>
                <b name="刚体" type="SolidBehaivor">
                  <properties/>
                </b>
              </behaviors>
              <children/>
            </object>
            <object type="AISprite" uiname="AISprite548" layer="0">
              <properties>
                <p key="name" value="AISprite548" valuetype="string">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%B1%BB%E5%9E%8B%E5%90%8D%E7%A7%B0%EF%BC%8C%E8%BF%99%E4%B9%9F%E5%B0%B1%E6%98%AF%E8%AF%B4%EF%BC%8C%E5%A4%9A%E4%B8%AA%E5%AE%9E%E4%BE%8B%E5%8F%AF%E8%83%BD%E4%BC%9A%E6%9C%89%E7%9B%B8%E5%90%8C%E7%9A%84%E5%90%8D%E5%AD%97%EF%BC%8C%E8%80%8C%E5%90%8C%E4%B8%80%E7%B1%BB%E5%9E%8B%E5%AE%9E%E4%BE%8B%E4%BC%9A%E5%85%B7%E5%A4%87%E7%9B%B8%E5%90%8C%E7%9A%84%E8%87%AA%E5%AE%9A%E4%B9%89%E5%B1%9E%E6%80%A7%E4%B8%8E%E8%A1%8C%E4%B8%BA</description>
                </p>
                <p key="uiGuid" value="575" valuetype="string">
                  <description>%E7%BC%96%E8%BE%91%E5%99%A8%E7%94%9F%E6%88%90%E7%9A%84%E5%94%AF%E4%B8%80id</description>
                </p>
                <p key="global" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E4%B8%BA%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%EF%BC%8C%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%E5%9C%A8%E8%B7%A8%E5%9C%BA%E6%99%AF%E5%90%8E%E4%B8%8D%E4%BC%9A%E8%A2%AB%E9%94%80%E6%AF%81%EF%BC%8C%E4%BB%8D%E7%84%B6%E4%BC%9A%E8%A2%AB%E4%BF%9D%E7%95%99%EF%BC%8C%E5%B9%B6%E4%B8%94%E5%85%B6%E6%9C%AC%E8%BA%AB%E5%B8%A6%E7%9A%84%E6%95%B0%E6%8D%AE%E4%B9%9F%E4%BC%9A%E4%BF%9D%E7%95%99</description>
                </p>
                <p key="visible" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E5%8F%AF%E8%A7%81</description>
                </p>
                <p key="x" value="262.7350903184034" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="y" value="233.62984816016856" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorX" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorY" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="width" value="67.19755903846021" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%AE%BD%E5%BA%A6</description>
                </p>
                <p key="height" value="16.820740695601984" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%AB%98%E5%BA%A6</description>
                </p>
                <p key="angle" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E8%87%AA%E8%BA%AB%E8%A7%92%E5%BA%A6</description>
                </p>
                <p key="alpha" value="1" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%80%8F%E6%98%8E%E5%BA%A6</description>
                </p>
                <p key="url" value="resource%2FuserAsset%2FRectangle.png" valuetype="string">
                  <description>%E5%9B%BE%E7%89%87%E6%BA%90</description>
                </p>
                <p key="enabled" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E9%BB%98%E8%AE%A4%E6%98%AF%E5%90%A6%E6%94%AF%E6%8C%81%E8%A7%A6%E6%91%B8</description>
                </p>
                <p key="collision" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E6%98%AF%E5%90%A6%E5%8F%AF%E4%BB%A5%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%A3%80%E6%B5%8B</description>
                </p>
                <p key="collisionData" value="0%2Fn0.24%7C9.73%2C32.96%7C16.18%2C67.77%7C10.15%2C67.20%7C0.00%2C0.00%7C0.00" valuetype="string" edittype="collisionData">
                  <description>%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%97%B6%E7%9A%84%E7%A2%B0%E6%92%9E%E6%95%B0%E6%8D%AE</description>
                </p>
              </properties>
              <customproperties/>
              <behaviors>
                <b name="刚体" type="SolidBehaivor">
                  <properties/>
                </b>
              </behaviors>
              <children/>
            </object>
            <object type="AISprite" uiname="AISprite548" layer="0">
              <properties>
                <p key="name" value="AISprite548" valuetype="string">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%B1%BB%E5%9E%8B%E5%90%8D%E7%A7%B0%EF%BC%8C%E8%BF%99%E4%B9%9F%E5%B0%B1%E6%98%AF%E8%AF%B4%EF%BC%8C%E5%A4%9A%E4%B8%AA%E5%AE%9E%E4%BE%8B%E5%8F%AF%E8%83%BD%E4%BC%9A%E6%9C%89%E7%9B%B8%E5%90%8C%E7%9A%84%E5%90%8D%E5%AD%97%EF%BC%8C%E8%80%8C%E5%90%8C%E4%B8%80%E7%B1%BB%E5%9E%8B%E5%AE%9E%E4%BE%8B%E4%BC%9A%E5%85%B7%E5%A4%87%E7%9B%B8%E5%90%8C%E7%9A%84%E8%87%AA%E5%AE%9A%E4%B9%89%E5%B1%9E%E6%80%A7%E4%B8%8E%E8%A1%8C%E4%B8%BA</description>
                </p>
                <p key="uiGuid" value="574" valuetype="string">
                  <description>%E7%BC%96%E8%BE%91%E5%99%A8%E7%94%9F%E6%88%90%E7%9A%84%E5%94%AF%E4%B8%80id</description>
                </p>
                <p key="global" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E4%B8%BA%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%EF%BC%8C%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%E5%9C%A8%E8%B7%A8%E5%9C%BA%E6%99%AF%E5%90%8E%E4%B8%8D%E4%BC%9A%E8%A2%AB%E9%94%80%E6%AF%81%EF%BC%8C%E4%BB%8D%E7%84%B6%E4%BC%9A%E8%A2%AB%E4%BF%9D%E7%95%99%EF%BC%8C%E5%B9%B6%E4%B8%94%E5%85%B6%E6%9C%AC%E8%BA%AB%E5%B8%A6%E7%9A%84%E6%95%B0%E6%8D%AE%E4%B9%9F%E4%BC%9A%E4%BF%9D%E7%95%99</description>
                </p>
                <p key="visible" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E5%8F%AF%E8%A7%81</description>
                </p>
                <p key="x" value="187.0998657502565" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="y" value="234.36649077367284" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorX" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorY" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="width" value="67.19755903846021" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%AE%BD%E5%BA%A6</description>
                </p>
                <p key="height" value="16.820740695601984" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%AB%98%E5%BA%A6</description>
                </p>
                <p key="angle" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E8%87%AA%E8%BA%AB%E8%A7%92%E5%BA%A6</description>
                </p>
                <p key="alpha" value="1" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%80%8F%E6%98%8E%E5%BA%A6</description>
                </p>
                <p key="url" value="resource%2FuserAsset%2FRectangle.png" valuetype="string">
                  <description>%E5%9B%BE%E7%89%87%E6%BA%90</description>
                </p>
                <p key="enabled" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E9%BB%98%E8%AE%A4%E6%98%AF%E5%90%A6%E6%94%AF%E6%8C%81%E8%A7%A6%E6%91%B8</description>
                </p>
                <p key="collision" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E6%98%AF%E5%90%A6%E5%8F%AF%E4%BB%A5%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%A3%80%E6%B5%8B</description>
                </p>
                <p key="collisionData" value="0%2Fn0.24%7C9.73%2C32.96%7C16.18%2C67.77%7C10.15%2C67.20%7C0.00%2C0.00%7C0.00" valuetype="string" edittype="collisionData">
                  <description>%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%97%B6%E7%9A%84%E7%A2%B0%E6%92%9E%E6%95%B0%E6%8D%AE</description>
                </p>
              </properties>
              <customproperties/>
              <behaviors>
                <b name="刚体" type="SolidBehaivor">
                  <properties/>
                </b>
              </behaviors>
              <children/>
            </object>
            <object type="AISprite" uiname="AISprite548" layer="0">
              <properties>
                <p key="name" value="AISprite548" valuetype="string">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%B1%BB%E5%9E%8B%E5%90%8D%E7%A7%B0%EF%BC%8C%E8%BF%99%E4%B9%9F%E5%B0%B1%E6%98%AF%E8%AF%B4%EF%BC%8C%E5%A4%9A%E4%B8%AA%E5%AE%9E%E4%BE%8B%E5%8F%AF%E8%83%BD%E4%BC%9A%E6%9C%89%E7%9B%B8%E5%90%8C%E7%9A%84%E5%90%8D%E5%AD%97%EF%BC%8C%E8%80%8C%E5%90%8C%E4%B8%80%E7%B1%BB%E5%9E%8B%E5%AE%9E%E4%BE%8B%E4%BC%9A%E5%85%B7%E5%A4%87%E7%9B%B8%E5%90%8C%E7%9A%84%E8%87%AA%E5%AE%9A%E4%B9%89%E5%B1%9E%E6%80%A7%E4%B8%8E%E8%A1%8C%E4%B8%BA</description>
                </p>
                <p key="uiGuid" value="573" valuetype="string">
                  <description>%E7%BC%96%E8%BE%91%E5%99%A8%E7%94%9F%E6%88%90%E7%9A%84%E5%94%AF%E4%B8%80id</description>
                </p>
                <p key="global" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E4%B8%BA%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%EF%BC%8C%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%E5%9C%A8%E8%B7%A8%E5%9C%BA%E6%99%AF%E5%90%8E%E4%B8%8D%E4%BC%9A%E8%A2%AB%E9%94%80%E6%AF%81%EF%BC%8C%E4%BB%8D%E7%84%B6%E4%BC%9A%E8%A2%AB%E4%BF%9D%E7%95%99%EF%BC%8C%E5%B9%B6%E4%B8%94%E5%85%B6%E6%9C%AC%E8%BA%AB%E5%B8%A6%E7%9A%84%E6%95%B0%E6%8D%AE%E4%B9%9F%E4%BC%9A%E4%BF%9D%E7%95%99</description>
                </p>
                <p key="visible" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E5%8F%AF%E8%A7%81</description>
                </p>
                <p key="x" value="107.658654345671" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="y" value="235.9625497695988" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorX" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorY" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="width" value="67.19755903846021" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%AE%BD%E5%BA%A6</description>
                </p>
                <p key="height" value="16.820740695601984" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%AB%98%E5%BA%A6</description>
                </p>
                <p key="angle" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E8%87%AA%E8%BA%AB%E8%A7%92%E5%BA%A6</description>
                </p>
                <p key="alpha" value="1" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%80%8F%E6%98%8E%E5%BA%A6</description>
                </p>
                <p key="url" value="resource%2FuserAsset%2FRectangle.png" valuetype="string">
                  <description>%E5%9B%BE%E7%89%87%E6%BA%90</description>
                </p>
                <p key="enabled" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E9%BB%98%E8%AE%A4%E6%98%AF%E5%90%A6%E6%94%AF%E6%8C%81%E8%A7%A6%E6%91%B8</description>
                </p>
                <p key="collision" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E6%98%AF%E5%90%A6%E5%8F%AF%E4%BB%A5%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%A3%80%E6%B5%8B</description>
                </p>
                <p key="collisionData" value="0%2Fn0.24%7C9.73%2C32.96%7C16.18%2C67.77%7C10.15%2C67.20%7C0.00%2C0.00%7C0.00" valuetype="string" edittype="collisionData">
                  <description>%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%97%B6%E7%9A%84%E7%A2%B0%E6%92%9E%E6%95%B0%E6%8D%AE</description>
                </p>
              </properties>
              <customproperties/>
              <behaviors>
                <b name="刚体" type="SolidBehaivor">
                  <properties/>
                </b>
              </behaviors>
              <children/>
            </object>
            <object type="AISprite" uiname="AISprite557" layer="0">
              <properties>
                <p key="name" value="AISprite557" valuetype="string">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%B1%BB%E5%9E%8B%E5%90%8D%E7%A7%B0%EF%BC%8C%E8%BF%99%E4%B9%9F%E5%B0%B1%E6%98%AF%E8%AF%B4%EF%BC%8C%E5%A4%9A%E4%B8%AA%E5%AE%9E%E4%BE%8B%E5%8F%AF%E8%83%BD%E4%BC%9A%E6%9C%89%E7%9B%B8%E5%90%8C%E7%9A%84%E5%90%8D%E5%AD%97%EF%BC%8C%E8%80%8C%E5%90%8C%E4%B8%80%E7%B1%BB%E5%9E%8B%E5%AE%9E%E4%BE%8B%E4%BC%9A%E5%85%B7%E5%A4%87%E7%9B%B8%E5%90%8C%E7%9A%84%E8%87%AA%E5%AE%9A%E4%B9%89%E5%B1%9E%E6%80%A7%E4%B8%8E%E8%A1%8C%E4%B8%BA</description>
                </p>
                <p key="uiGuid" value="558" valuetype="string">
                  <description>%E7%BC%96%E8%BE%91%E5%99%A8%E7%94%9F%E6%88%90%E7%9A%84%E5%94%AF%E4%B8%80id</description>
                </p>
                <p key="global" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E4%B8%BA%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%EF%BC%8C%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%E5%9C%A8%E8%B7%A8%E5%9C%BA%E6%99%AF%E5%90%8E%E4%B8%8D%E4%BC%9A%E8%A2%AB%E9%94%80%E6%AF%81%EF%BC%8C%E4%BB%8D%E7%84%B6%E4%BC%9A%E8%A2%AB%E4%BF%9D%E7%95%99%EF%BC%8C%E5%B9%B6%E4%B8%94%E5%85%B6%E6%9C%AC%E8%BA%AB%E5%B8%A6%E7%9A%84%E6%95%B0%E6%8D%AE%E4%B9%9F%E4%BC%9A%E4%BF%9D%E7%95%99</description>
                </p>
                <p key="visible" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E5%8F%AF%E8%A7%81</description>
                </p>
                <p key="x" value="207.51639235863135" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="y" value="3.728042971609682" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorX" value="0.5" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorY" value="0.5" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="width" value="10" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%AE%BD%E5%BA%A6</description>
                </p>
                <p key="height" value="402.41060992737033" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%AB%98%E5%BA%A6</description>
                </p>
                <p key="angle" value="90" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E8%87%AA%E8%BA%AB%E8%A7%92%E5%BA%A6</description>
                </p>
                <p key="alpha" value="1" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%80%8F%E6%98%8E%E5%BA%A6</description>
                </p>
                <p key="url" value="resource%2FuserAsset%2Fwall.png" valuetype="string">
                  <description>%E5%9B%BE%E7%89%87%E6%BA%90</description>
                </p>
                <p key="enabled" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E9%BB%98%E8%AE%A4%E6%98%AF%E5%90%A6%E6%94%AF%E6%8C%81%E8%A7%A6%E6%91%B8</description>
                </p>
                <p key="collision" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E6%98%AF%E5%90%A6%E5%8F%AF%E4%BB%A5%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%A3%80%E6%B5%8B</description>
                </p>
                <p key="collisionData" value="%5Bobject%20_214%5D" valuetype="string">
                  <description>%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%97%B6%E7%9A%84%E7%A2%B0%E6%92%9E%E6%95%B0%E6%8D%AE</description>
                </p>
              </properties>
              <customproperties/>
              <behaviors>
                <b name="刚体" type="SolidBehaivor">
                  <properties/>
                </b>
              </behaviors>
              <children/>
            </object>
            <object type="AISprite" uiname="AISprite551" layer="0">
              <properties>
                <p key="name" value="AISprite551" valuetype="string">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%B1%BB%E5%9E%8B%E5%90%8D%E7%A7%B0%EF%BC%8C%E8%BF%99%E4%B9%9F%E5%B0%B1%E6%98%AF%E8%AF%B4%EF%BC%8C%E5%A4%9A%E4%B8%AA%E5%AE%9E%E4%BE%8B%E5%8F%AF%E8%83%BD%E4%BC%9A%E6%9C%89%E7%9B%B8%E5%90%8C%E7%9A%84%E5%90%8D%E5%AD%97%EF%BC%8C%E8%80%8C%E5%90%8C%E4%B8%80%E7%B1%BB%E5%9E%8B%E5%AE%9E%E4%BE%8B%E4%BC%9A%E5%85%B7%E5%A4%87%E7%9B%B8%E5%90%8C%E7%9A%84%E8%87%AA%E5%AE%9A%E4%B9%89%E5%B1%9E%E6%80%A7%E4%B8%8E%E8%A1%8C%E4%B8%BA</description>
                </p>
                <p key="uiGuid" value="552" valuetype="string">
                  <description>%E7%BC%96%E8%BE%91%E5%99%A8%E7%94%9F%E6%88%90%E7%9A%84%E5%94%AF%E4%B8%80id</description>
                </p>
                <p key="global" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E4%B8%BA%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%EF%BC%8C%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%E5%9C%A8%E8%B7%A8%E5%9C%BA%E6%99%AF%E5%90%8E%E4%B8%8D%E4%BC%9A%E8%A2%AB%E9%94%80%E6%AF%81%EF%BC%8C%E4%BB%8D%E7%84%B6%E4%BC%9A%E8%A2%AB%E4%BF%9D%E7%95%99%EF%BC%8C%E5%B9%B6%E4%B8%94%E5%85%B6%E6%9C%AC%E8%BA%AB%E5%B8%A6%E7%9A%84%E6%95%B0%E6%8D%AE%E4%B9%9F%E4%BC%9A%E4%BF%9D%E7%95%99</description>
                </p>
                <p key="visible" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E5%8F%AF%E8%A7%81</description>
                </p>
                <p key="x" value="146.45793094699297" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="y" value="636.2303950604239" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorX" value="0.5" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorY" value="0.5" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="width" value="117" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%AE%BD%E5%BA%A6</description>
                </p>
                <p key="height" value="19" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%AB%98%E5%BA%A6</description>
                </p>
                <p key="angle" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E8%87%AA%E8%BA%AB%E8%A7%92%E5%BA%A6</description>
                </p>
                <p key="alpha" value="1" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%80%8F%E6%98%8E%E5%BA%A6</description>
                </p>
                <p key="url" value="resource%2FuserAsset%2Fbt1.png" valuetype="string">
                  <description>%E5%9B%BE%E7%89%87%E6%BA%90</description>
                </p>
                <p key="enabled" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E9%BB%98%E8%AE%A4%E6%98%AF%E5%90%A6%E6%94%AF%E6%8C%81%E8%A7%A6%E6%91%B8</description>
                </p>
                <p key="collision" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E6%98%AF%E5%90%A6%E5%8F%AF%E4%BB%A5%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%A3%80%E6%B5%8B</description>
                </p>
                <p key="collisionData" value="0%2Fn0.00%7C19.00%2C117.00%7C19.00%2C119.00%7C7.05%2C53.90%7C0.75%2C0.00%7C5.55" valuetype="string" edittype="collisionData">
                  <description>%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%97%B6%E7%9A%84%E7%A2%B0%E6%92%9E%E6%95%B0%E6%8D%AE</description>
                </p>
              </properties>
              <customproperties/>
              <behaviors>
                <b name="刚体" type="SolidBehaivor">
                  <properties/>
                </b>
                <b name="边界限制" type="BoundsOfRectBehaivor">
                  <properties>
                    <p key="boundType" value="0" valuetype="number">
                      <description>%E5%AE%9E%E4%BE%8B%E9%99%90%E5%88%B6%E5%87%BA%E7%95%8C%E6%A8%A1%E5%BC%8F%E3%80%82%0A%E3%80%90%E5%AE%9E%E4%BE%8B%E8%BE%B9%E6%A1%86%E3%80%91%E4%B8%BA%E9%99%90%E5%88%B6%E5%AE%9E%E4%BE%8B%E7%9A%84%E8%BE%B9%E6%A1%86%E4%B8%8D%E8%83%BD%E5%87%BA%E8%AE%BE%E5%AE%9A%E7%9A%84%E8%BE%B9%E7%95%8C%E3%80%82%0A%E3%80%90%E5%AE%9E%E4%BE%8B%E9%94%9A%E7%82%B9%E3%80%91%E4%B8%BA%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%94%9A%E7%82%B9%E4%B8%8D%E8%83%BD%E5%87%BA%E8%AE%BE%E7%BD%AE%E7%9A%84%E8%BE%B9%E7%95%8C%EF%BC%8C%E4%BD%86%E8%BE%B9%E6%A1%86%E6%98%AF%E5%8F%AF%E4%BB%A5%E5%87%BA%E7%95%8C%E7%9A%84%E3%80%82</description>
                    </p>
                    <p key="x" value="0" valuetype="number">
                      <description>%E8%AE%BE%E5%AE%9A%E9%99%90%E5%88%B6%E8%BE%B9%E7%95%8C%E7%9A%84%E6%9C%80%E5%B7%A6%E4%B8%8A%E8%A7%92%E5%9D%90%E6%A0%87%E7%82%B9%E7%9A%84%E6%B0%B4%E5%B9%B3%E5%9D%90%E6%A0%87%E5%80%BC%E3%80%82%EF%BC%88%E5%8D%95%E4%BD%8D%EF%BC%9A%E5%83%8F%E7%B4%A0%EF%BC%89</description>
                    </p>
                    <p key="y" value="0" valuetype="number">
                      <description>%E8%AE%BE%E5%AE%9A%E9%99%90%E5%88%B6%E8%BE%B9%E7%95%8C%E7%9A%84%E6%9C%80%E5%B7%A6%E4%B8%8A%E8%A7%92%E5%9D%90%E6%A0%87%E7%82%B9%E7%9A%84%E5%9E%82%E7%9B%B4%E5%9D%90%E6%A0%87%E5%80%BC%E3%80%82%EF%BC%88%E5%8D%95%E4%BD%8D%EF%BC%9A%E5%83%8F%E7%B4%A0%EF%BC%89</description>
                    </p>
                    <p key="width" value="414" valuetype="number">
                      <description>%E8%AE%BE%E7%BD%AE%E9%99%90%E5%88%B6%E8%BE%B9%E7%95%8C%E7%9A%84%E5%AE%BD%E3%80%82%EF%BC%88%E5%8D%95%E4%BD%8D%EF%BC%9A%E5%83%8F%E7%B4%A0%EF%BC%89</description>
                    </p>
                    <p key="height" value="736" valuetype="number">
                      <description>%E8%AE%BE%E7%BD%AE%E9%99%90%E5%88%B6%E8%BE%B9%E7%95%8C%E7%9A%84%E9%AB%98%E3%80%82%EF%BC%88%E5%8D%95%E4%BD%8D%EF%BC%9A%E5%83%8F%E7%B4%A0%EF%BC%89</description>
                    </p>
                  </properties>
                </b>
                <b name="拖拽" type="DragDropBehaivor">
                  <properties>
                    <p key="axes" value="1" valuetype="number">
                      <description>%E5%85%81%E8%AE%B8%E6%8B%96%E6%8B%BD%E7%9A%84%E6%96%B9%E5%90%91%E3%80%82</description>
                    </p>
                    <p key="enabled" value="1" valuetype="number">
                      <description>%E8%AE%BE%E7%BD%AE%E6%8B%96%E6%8B%BD%E5%9C%A8%E6%B8%B8%E6%88%8F%E5%88%9D%E5%A7%8B%E5%8C%96%E6%97%B6%E6%98%AF%E5%90%A6%E5%8F%AF%E7%94%A8%E3%80%82</description>
                    </p>
                  </properties>
                </b>
              </behaviors>
              <children/>
            </object>
            <object type="AISprite" uiname="AISprite548" layer="0">
              <properties>
                <p key="name" value="AISprite548" valuetype="string">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%B1%BB%E5%9E%8B%E5%90%8D%E7%A7%B0%EF%BC%8C%E8%BF%99%E4%B9%9F%E5%B0%B1%E6%98%AF%E8%AF%B4%EF%BC%8C%E5%A4%9A%E4%B8%AA%E5%AE%9E%E4%BE%8B%E5%8F%AF%E8%83%BD%E4%BC%9A%E6%9C%89%E7%9B%B8%E5%90%8C%E7%9A%84%E5%90%8D%E5%AD%97%EF%BC%8C%E8%80%8C%E5%90%8C%E4%B8%80%E7%B1%BB%E5%9E%8B%E5%AE%9E%E4%BE%8B%E4%BC%9A%E5%85%B7%E5%A4%87%E7%9B%B8%E5%90%8C%E7%9A%84%E8%87%AA%E5%AE%9A%E4%B9%89%E5%B1%9E%E6%80%A7%E4%B8%8E%E8%A1%8C%E4%B8%BA</description>
                </p>
                <p key="uiGuid" value="549" valuetype="string">
                  <description>%E7%BC%96%E8%BE%91%E5%99%A8%E7%94%9F%E6%88%90%E7%9A%84%E5%94%AF%E4%B8%80id</description>
                </p>
                <p key="global" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E4%B8%BA%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%EF%BC%8C%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%E5%9C%A8%E8%B7%A8%E5%9C%BA%E6%99%AF%E5%90%8E%E4%B8%8D%E4%BC%9A%E8%A2%AB%E9%94%80%E6%AF%81%EF%BC%8C%E4%BB%8D%E7%84%B6%E4%BC%9A%E8%A2%AB%E4%BF%9D%E7%95%99%EF%BC%8C%E5%B9%B6%E4%B8%94%E5%85%B6%E6%9C%AC%E8%BA%AB%E5%B8%A6%E7%9A%84%E6%95%B0%E6%8D%AE%E4%B9%9F%E4%BC%9A%E4%BF%9D%E7%95%99</description>
                </p>
                <p key="visible" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E5%8F%AF%E8%A7%81</description>
                </p>
                <p key="x" value="30.91846585726782" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="y" value="237.0061268053965" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorX" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorY" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="width" value="67.19755903846021" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%AE%BD%E5%BA%A6</description>
                </p>
                <p key="height" value="16.820740695601984" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%AB%98%E5%BA%A6</description>
                </p>
                <p key="angle" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E8%87%AA%E8%BA%AB%E8%A7%92%E5%BA%A6</description>
                </p>
                <p key="alpha" value="1" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%80%8F%E6%98%8E%E5%BA%A6</description>
                </p>
                <p key="url" value="resource%2FuserAsset%2FRectangle.png" valuetype="string">
                  <description>%E5%9B%BE%E7%89%87%E6%BA%90</description>
                </p>
                <p key="enabled" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E9%BB%98%E8%AE%A4%E6%98%AF%E5%90%A6%E6%94%AF%E6%8C%81%E8%A7%A6%E6%91%B8</description>
                </p>
                <p key="collision" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E6%98%AF%E5%90%A6%E5%8F%AF%E4%BB%A5%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%A3%80%E6%B5%8B</description>
                </p>
                <p key="collisionData" value="0%2Fn0.24%7C9.73%2C32.96%7C16.18%2C67.77%7C10.15%2C67.20%7C0.00%2C0.00%7C0.00" valuetype="string" edittype="collisionData">
                  <description>%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%97%B6%E7%9A%84%E7%A2%B0%E6%92%9E%E6%95%B0%E6%8D%AE</description>
                </p>
              </properties>
              <customproperties/>
              <behaviors>
                <b name="刚体" type="SolidBehaivor">
                  <properties/>
                </b>
              </behaviors>
              <children/>
            </object>
            <object type="AISprite" uiname="AISprite545" layer="0">
              <properties>
                <p key="name" value="AISprite545" valuetype="string">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%B1%BB%E5%9E%8B%E5%90%8D%E7%A7%B0%EF%BC%8C%E8%BF%99%E4%B9%9F%E5%B0%B1%E6%98%AF%E8%AF%B4%EF%BC%8C%E5%A4%9A%E4%B8%AA%E5%AE%9E%E4%BE%8B%E5%8F%AF%E8%83%BD%E4%BC%9A%E6%9C%89%E7%9B%B8%E5%90%8C%E7%9A%84%E5%90%8D%E5%AD%97%EF%BC%8C%E8%80%8C%E5%90%8C%E4%B8%80%E7%B1%BB%E5%9E%8B%E5%AE%9E%E4%BE%8B%E4%BC%9A%E5%85%B7%E5%A4%87%E7%9B%B8%E5%90%8C%E7%9A%84%E8%87%AA%E5%AE%9A%E4%B9%89%E5%B1%9E%E6%80%A7%E4%B8%8E%E8%A1%8C%E4%B8%BA</description>
                </p>
                <p key="uiGuid" value="546" valuetype="string">
                  <description>%E7%BC%96%E8%BE%91%E5%99%A8%E7%94%9F%E6%88%90%E7%9A%84%E5%94%AF%E4%B8%80id</description>
                </p>
                <p key="global" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E4%B8%BA%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%EF%BC%8C%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%E5%9C%A8%E8%B7%A8%E5%9C%BA%E6%99%AF%E5%90%8E%E4%B8%8D%E4%BC%9A%E8%A2%AB%E9%94%80%E6%AF%81%EF%BC%8C%E4%BB%8D%E7%84%B6%E4%BC%9A%E8%A2%AB%E4%BF%9D%E7%95%99%EF%BC%8C%E5%B9%B6%E4%B8%94%E5%85%B6%E6%9C%AC%E8%BA%AB%E5%B8%A6%E7%9A%84%E6%95%B0%E6%8D%AE%E4%B9%9F%E4%BC%9A%E4%BF%9D%E7%95%99</description>
                </p>
                <p key="visible" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E5%8F%AF%E8%A7%81</description>
                </p>
                <p key="x" value="9.298305344421124" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="y" value="366.7526203466483" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorX" value="0.5" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorY" value="0.5" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="width" value="10" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%AE%BD%E5%BA%A6</description>
                </p>
                <p key="height" value="721.2941070548704" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%AB%98%E5%BA%A6</description>
                </p>
                <p key="angle" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E8%87%AA%E8%BA%AB%E8%A7%92%E5%BA%A6</description>
                </p>
                <p key="alpha" value="1" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%80%8F%E6%98%8E%E5%BA%A6</description>
                </p>
                <p key="url" value="resource%2FuserAsset%2Fwall.png" valuetype="string">
                  <description>%E5%9B%BE%E7%89%87%E6%BA%90</description>
                </p>
                <p key="enabled" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E9%BB%98%E8%AE%A4%E6%98%AF%E5%90%A6%E6%94%AF%E6%8C%81%E8%A7%A6%E6%91%B8</description>
                </p>
                <p key="collision" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E6%98%AF%E5%90%A6%E5%8F%AF%E4%BB%A5%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%A3%80%E6%B5%8B</description>
                </p>
                <p key="collisionData" value="%5Bobject%20_214%5D" valuetype="string">
                  <description>%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%97%B6%E7%9A%84%E7%A2%B0%E6%92%9E%E6%95%B0%E6%8D%AE</description>
                </p>
              </properties>
              <customproperties/>
              <behaviors>
                <b name="刚体" type="SolidBehaivor">
                  <properties/>
                </b>
              </behaviors>
              <children/>
            </object>
            <object type="AISprite" uiname="AISprite543" layer="0">
              <properties>
                <p key="name" value="AISprite543" valuetype="string">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%B1%BB%E5%9E%8B%E5%90%8D%E7%A7%B0%EF%BC%8C%E8%BF%99%E4%B9%9F%E5%B0%B1%E6%98%AF%E8%AF%B4%EF%BC%8C%E5%A4%9A%E4%B8%AA%E5%AE%9E%E4%BE%8B%E5%8F%AF%E8%83%BD%E4%BC%9A%E6%9C%89%E7%9B%B8%E5%90%8C%E7%9A%84%E5%90%8D%E5%AD%97%EF%BC%8C%E8%80%8C%E5%90%8C%E4%B8%80%E7%B1%BB%E5%9E%8B%E5%AE%9E%E4%BE%8B%E4%BC%9A%E5%85%B7%E5%A4%87%E7%9B%B8%E5%90%8C%E7%9A%84%E8%87%AA%E5%AE%9A%E4%B9%89%E5%B1%9E%E6%80%A7%E4%B8%8E%E8%A1%8C%E4%B8%BA</description>
                </p>
                <p key="uiGuid" value="544" valuetype="string">
                  <description>%E7%BC%96%E8%BE%91%E5%99%A8%E7%94%9F%E6%88%90%E7%9A%84%E5%94%AF%E4%B8%80id</description>
                </p>
                <p key="global" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E4%B8%BA%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%EF%BC%8C%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%E5%9C%A8%E8%B7%A8%E5%9C%BA%E6%99%AF%E5%90%8E%E4%B8%8D%E4%BC%9A%E8%A2%AB%E9%94%80%E6%AF%81%EF%BC%8C%E4%BB%8D%E7%84%B6%E4%BC%9A%E8%A2%AB%E4%BF%9D%E7%95%99%EF%BC%8C%E5%B9%B6%E4%B8%94%E5%85%B6%E6%9C%AC%E8%BA%AB%E5%B8%A6%E7%9A%84%E6%95%B0%E6%8D%AE%E4%B9%9F%E4%BC%9A%E4%BF%9D%E7%95%99</description>
                </p>
                <p key="visible" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E5%8F%AF%E8%A7%81</description>
                </p>
                <p key="x" value="408.02540248897526" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="y" value="368.6566285631601" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorX" value="0.5" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorY" value="0.5" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="width" value="10" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%AE%BD%E5%BA%A6</description>
                </p>
                <p key="height" value="721.2941070548704" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%AB%98%E5%BA%A6</description>
                </p>
                <p key="angle" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E8%87%AA%E8%BA%AB%E8%A7%92%E5%BA%A6</description>
                </p>
                <p key="alpha" value="1" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%80%8F%E6%98%8E%E5%BA%A6</description>
                </p>
                <p key="url" value="resource%2FuserAsset%2Fwall.png" valuetype="string">
                  <description>%E5%9B%BE%E7%89%87%E6%BA%90</description>
                </p>
                <p key="enabled" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E9%BB%98%E8%AE%A4%E6%98%AF%E5%90%A6%E6%94%AF%E6%8C%81%E8%A7%A6%E6%91%B8</description>
                </p>
                <p key="collision" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E6%98%AF%E5%90%A6%E5%8F%AF%E4%BB%A5%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%A3%80%E6%B5%8B</description>
                </p>
                <p key="collisionData" value="%5Bobject%20_214%5D" valuetype="string">
                  <description>%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%97%B6%E7%9A%84%E7%A2%B0%E6%92%9E%E6%95%B0%E6%8D%AE</description>
                </p>
              </properties>
              <customproperties/>
              <behaviors>
                <b name="刚体" type="SolidBehaivor">
                  <properties/>
                </b>
              </behaviors>
              <children/>
            </object>
            <object type="AISprite" uiname="AISprite95" layer="0">
              <properties>
                <p key="name" value="AISprite95" valuetype="string">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%B1%BB%E5%9E%8B%E5%90%8D%E7%A7%B0%EF%BC%8C%E8%BF%99%E4%B9%9F%E5%B0%B1%E6%98%AF%E8%AF%B4%EF%BC%8C%E5%A4%9A%E4%B8%AA%E5%AE%9E%E4%BE%8B%E5%8F%AF%E8%83%BD%E4%BC%9A%E6%9C%89%E7%9B%B8%E5%90%8C%E7%9A%84%E5%90%8D%E5%AD%97%EF%BC%8C%E8%80%8C%E5%90%8C%E4%B8%80%E7%B1%BB%E5%9E%8B%E5%AE%9E%E4%BE%8B%E4%BC%9A%E5%85%B7%E5%A4%87%E7%9B%B8%E5%90%8C%E7%9A%84%E8%87%AA%E5%AE%9A%E4%B9%89%E5%B1%9E%E6%80%A7%E4%B8%8E%E8%A1%8C%E4%B8%BA</description>
                </p>
                <p key="uiGuid" value="96" valuetype="string">
                  <description>%E7%BC%96%E8%BE%91%E5%99%A8%E7%94%9F%E6%88%90%E7%9A%84%E5%94%AF%E4%B8%80id</description>
                </p>
                <p key="global" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E4%B8%BA%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%EF%BC%8C%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%E5%9C%A8%E8%B7%A8%E5%9C%BA%E6%99%AF%E5%90%8E%E4%B8%8D%E4%BC%9A%E8%A2%AB%E9%94%80%E6%AF%81%EF%BC%8C%E4%BB%8D%E7%84%B6%E4%BC%9A%E8%A2%AB%E4%BF%9D%E7%95%99%EF%BC%8C%E5%B9%B6%E4%B8%94%E5%85%B6%E6%9C%AC%E8%BA%AB%E5%B8%A6%E7%9A%84%E6%95%B0%E6%8D%AE%E4%B9%9F%E4%BC%9A%E4%BF%9D%E7%95%99</description>
                </p>
                <p key="visible" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E5%8F%AF%E8%A7%81</description>
                </p>
                <p key="x" value="161.9564005729406" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="y" value="618.409047576408" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorX" value="0.5253555873855886" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorY" value="0.661613754244892" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="width" value="18" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%AE%BD%E5%BA%A6</description>
                </p>
                <p key="height" value="18" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%AB%98%E5%BA%A6</description>
                </p>
                <p key="angle" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E8%87%AA%E8%BA%AB%E8%A7%92%E5%BA%A6</description>
                </p>
                <p key="alpha" value="1" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%80%8F%E6%98%8E%E5%BA%A6</description>
                </p>
                <p key="url" value="resource%2FuserAsset%2Fball.png" valuetype="string">
                  <description>%E5%9B%BE%E7%89%87%E6%BA%90</description>
                </p>
                <p key="enabled" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E9%BB%98%E8%AE%A4%E6%98%AF%E5%90%A6%E6%94%AF%E6%8C%81%E8%A7%A6%E6%91%B8</description>
                </p>
                <p key="collision" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E6%98%AF%E5%90%A6%E5%8F%AF%E4%BB%A5%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%A3%80%E6%B5%8B</description>
                </p>
                <p key="collisionData" value="%5Bobject%20_214%5D" valuetype="string">
                  <description>%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%97%B6%E7%9A%84%E7%A2%B0%E6%92%9E%E6%95%B0%E6%8D%AE</description>
                </p>
              </properties>
              <customproperties/>
              <behaviors>
                <b name="子弹" type="BulletBehaivor">
                  <properties>
                    <p key="speed" value="400" valuetype="number">
                      <description>%E8%AE%BE%E7%BD%AE%E5%AD%90%E5%BC%B9%E7%9A%84%E8%BF%90%E5%8A%A8%E9%80%9F%E5%BA%A6%E3%80%82%EF%BC%88%E5%8D%95%E4%BD%8D%EF%BC%9A%E5%83%8F%E7%B4%A0%2F%E7%A7%92%EF%BC%89</description>
                    </p>
                    <p key="acceleration" value="0" valuetype="number">
                      <description>%E5%AD%90%E5%BC%B9%E8%BF%90%E5%8A%A8%E7%9A%84%E5%8A%A0%E9%80%9F%E5%BA%A6%EF%BC%8C%E9%BB%98%E8%AE%A4%E7%9A%84%E5%8A%A0%E9%80%9F%E5%BA%A6%E4%B8%BA%E9%9B%B6%E3%80%82%EF%BC%88%E5%8D%95%E4%BD%8D%EF%BC%9A%E5%83%8F%E7%B4%A0%2F%E7%A7%92%C2%B2%EF%BC%89</description>
                    </p>
                    <p key="gravity" value="0" valuetype="number">
                      <description>%E5%AD%90%E5%BC%B9%E8%BF%90%E8%A1%8C%E4%B8%AD%E6%89%80%E6%89%BF%E5%8F%97%E7%9A%84%E5%90%91%E4%B8%8B%E7%9A%84%E9%87%8D%E5%8A%9B%EF%BC%8C%E9%BB%98%E8%AE%A4%E4%B8%BA%E9%9B%B6%E3%80%82</description>
                    </p>
                    <p key="angle" value="-90" valuetype="number">
                      <description>%E8%AE%BE%E7%BD%AE%E5%AD%90%E5%BC%B9%E9%BB%98%E8%AE%A4%E7%9A%84%E8%BF%90%E8%A1%8C%E8%A7%92%E5%BA%A6%E3%80%82</description>
                    </p>
                    <p key="bounceOffSolids" value="1" valuetype="number">
                      <description>%E8%AE%BE%E7%BD%AE%E5%AD%90%E5%BC%B9%E4%B8%8E%E5%88%9A%E4%BD%93%E6%98%AF%E5%90%A6%E7%A2%B0%E6%92%9E%E3%80%82</description>
                    </p>
                    <p key="solidChangedAngle" value="2" valuetype="number">
                      <description>%E8%AE%BE%E7%BD%AE%E4%B8%8E%E5%AD%90%E5%BC%B9%E4%B8%8E%E5%88%9A%E4%BD%93%E7%A2%B0%E6%92%9E%E5%90%8E%E6%98%AF%E5%90%A6%E6%94%B9%E5%8F%98%E5%AD%90%E5%BC%B9%E8%87%AA%E8%BA%AB%E7%9A%84%E8%A7%92%E5%BA%A6</description>
                    </p>
                  </properties>
                </b>
                <b name="刚体" type="SolidBehaivor">
                  <properties/>
                </b>
              </behaviors>
              <children/>
            </object>
          </children>
        </object>
      </children>
    </object>
    <object type="Scene" uiname="newScene2" layer="0">
      <familys/>
      <properties>
        <p key="sceneWidth" value="414" valuetype="number"/>
        <p key="sceneHeight" value="736" valuetype="number"/>
        <p key="width" value="1708" valuetype="number"/>
        <p key="height" value="960" valuetype="number"/>
      </properties>
      <customproperties/>
      <behaviors/>
      <children>
        <object type="Layer" uiname="Layer601" parallaxX="100" parallaxY="100" layer="0">
          <properties>
            <p key="sceneWidth" value="414" valuetype="number"/>
            <p key="sceneHeight" value="736" valuetype="number"/>
            <p key="parallaxX" value="100" valuetype="number"/>
            <p key="parallaxY" value="100" valuetype="number"/>
            <p key="layerAlpha" value="1" valuetype="number"/>
            <p key="layerVisible" value="true" valuetype="boolean"/>
            <p key="layerScaleX" value="100" valuetype="number"/>
            <p key="layerScaleY" value="100" valuetype="number"/>
            <p key="cacheAsBitmap" value="false" valuetype="boolean"/>
          </properties>
          <customproperties/>
          <behaviors/>
          <children>
            <object type="AITextField" uiname="AITextField610" layer="0">
              <properties>
                <p key="name" value="AITextField610" valuetype="string">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%B1%BB%E5%9E%8B%E5%90%8D%E7%A7%B0%EF%BC%8C%E8%BF%99%E4%B9%9F%E5%B0%B1%E6%98%AF%E8%AF%B4%EF%BC%8C%E5%A4%9A%E4%B8%AA%E5%AE%9E%E4%BE%8B%E5%8F%AF%E8%83%BD%E4%BC%9A%E6%9C%89%E7%9B%B8%E5%90%8C%E7%9A%84%E5%90%8D%E5%AD%97%EF%BC%8C%E8%80%8C%E5%90%8C%E4%B8%80%E7%B1%BB%E5%9E%8B%E5%AE%9E%E4%BE%8B%E4%BC%9A%E5%85%B7%E5%A4%87%E7%9B%B8%E5%90%8C%E7%9A%84%E8%87%AA%E5%AE%9A%E4%B9%89%E5%B1%9E%E6%80%A7%E4%B8%8E%E8%A1%8C%E4%B8%BA</description>
                </p>
                <p key="uiGuid" value="611" valuetype="string">
                  <description>%E7%BC%96%E8%BE%91%E5%99%A8%E7%94%9F%E6%88%90%E7%9A%84%E5%94%AF%E4%B8%80id</description>
                </p>
                <p key="global" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E4%B8%BA%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%EF%BC%8C%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%E5%9C%A8%E8%B7%A8%E5%9C%BA%E6%99%AF%E5%90%8E%E4%B8%8D%E4%BC%9A%E8%A2%AB%E9%94%80%E6%AF%81%EF%BC%8C%E4%BB%8D%E7%84%B6%E4%BC%9A%E8%A2%AB%E4%BF%9D%E7%95%99%EF%BC%8C%E5%B9%B6%E4%B8%94%E5%85%B6%E6%9C%AC%E8%BA%AB%E5%B8%A6%E7%9A%84%E6%95%B0%E6%8D%AE%E4%B9%9F%E4%BC%9A%E4%BF%9D%E7%95%99</description>
                </p>
                <p key="visible" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E5%8F%AF%E8%A7%81</description>
                </p>
                <p key="x" value="203" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="y" value="332" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorX" value="0.5" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorY" value="0.5" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="width" value="100" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%AE%BD%E5%BA%A6</description>
                </p>
                <p key="height" value="50" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%AB%98%E5%BA%A6</description>
                </p>
                <p key="angle" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E8%87%AA%E8%BA%AB%E8%A7%92%E5%BA%A6</description>
                </p>
                <p key="alpha" value="1" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%80%8F%E6%98%8E%E5%BA%A6</description>
                </p>
                <p key="text" value="%E9%87%8D%E8%A8%AD" valuetype="string">
                  <description>%E9%BB%98%E8%AE%A4%E6%96%87%E6%9C%AC</description>
                </p>
                <p key="fontFamily" value="%E5%AE%8B%E4%BD%93" valuetype="string">
                  <description>%E5%AD%97%E4%BD%93</description>
                </p>
                <p key="size" value="40" valuetype="number">
                  <description>%E5%AD%97%E4%BD%93%E5%A4%A7%E5%B0%8F</description>
                </p>
                <p key="textColor" value="16777215" valuetype="number">
                  <description>%E5%AD%97%E4%BD%93%E9%A2%9C%E8%89%B2</description>
                </p>
                <p key="bold" value="false" valuetype="boolean">
                  <description>%E7%B2%97%E4%BD%93</description>
                </p>
                <p key="enableInput" value="false" valuetype="boolean">
                  <description>%E5%85%81%E8%AE%B8%E8%BE%93%E5%85%A5</description>
                </p>
                <p key="inputType" value="text" valuetype="string">
                  <description>%E5%85%81%E8%AE%B8%E8%BE%93%E5%85%A5</description>
                </p>
                <p key="textAlign" value="center" valuetype="string">
                  <description>%E6%B0%B4%E5%B9%B3%E5%B8%83%E5%B1%80</description>
                </p>
                <p key="verticalAlign" value="middle" valuetype="string">
                  <description>%E5%9E%82%E7%9B%B4%E5%B8%83%E5%B1%80</description>
                </p>
                <p key="maxChars" value="100" valuetype="number">
                  <description>%E5%AD%97%E6%95%B0%E4%B8%8A%E9%99%90</description>
                </p>
                <p key="italic" value="false" valuetype="boolean">
                  <description>%E6%96%9C%E4%BD%93</description>
                </p>
                <p key="wordWrap" value="false" valuetype="boolean">
                  <description>%E6%94%AF%E6%8C%81%E6%8D%A2%E8%A1%8C</description>
                </p>
                <p key="enabled" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E9%BB%98%E8%AE%A4%E6%98%AF%E5%90%A6%E6%94%AF%E6%8C%81%E8%A7%A6%E6%91%B8</description>
                </p>
                <p key="collision" value="false" valuetype="boolean">
                  <description>%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E</description>
                </p>
              </properties>
              <customproperties/>
              <behaviors/>
              <children/>
            </object>
            <object type="AISprite" uiname="AISprite607" layer="0">
              <properties>
                <p key="name" value="AISprite607" valuetype="string">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%B1%BB%E5%9E%8B%E5%90%8D%E7%A7%B0%EF%BC%8C%E8%BF%99%E4%B9%9F%E5%B0%B1%E6%98%AF%E8%AF%B4%EF%BC%8C%E5%A4%9A%E4%B8%AA%E5%AE%9E%E4%BE%8B%E5%8F%AF%E8%83%BD%E4%BC%9A%E6%9C%89%E7%9B%B8%E5%90%8C%E7%9A%84%E5%90%8D%E5%AD%97%EF%BC%8C%E8%80%8C%E5%90%8C%E4%B8%80%E7%B1%BB%E5%9E%8B%E5%AE%9E%E4%BE%8B%E4%BC%9A%E5%85%B7%E5%A4%87%E7%9B%B8%E5%90%8C%E7%9A%84%E8%87%AA%E5%AE%9A%E4%B9%89%E5%B1%9E%E6%80%A7%E4%B8%8E%E8%A1%8C%E4%B8%BA</description>
                </p>
                <p key="uiGuid" value="608" valuetype="string">
                  <description>%E7%BC%96%E8%BE%91%E5%99%A8%E7%94%9F%E6%88%90%E7%9A%84%E5%94%AF%E4%B8%80id</description>
                </p>
                <p key="global" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E4%B8%BA%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%EF%BC%8C%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%E5%9C%A8%E8%B7%A8%E5%9C%BA%E6%99%AF%E5%90%8E%E4%B8%8D%E4%BC%9A%E8%A2%AB%E9%94%80%E6%AF%81%EF%BC%8C%E4%BB%8D%E7%84%B6%E4%BC%9A%E8%A2%AB%E4%BF%9D%E7%95%99%EF%BC%8C%E5%B9%B6%E4%B8%94%E5%85%B6%E6%9C%AC%E8%BA%AB%E5%B8%A6%E7%9A%84%E6%95%B0%E6%8D%AE%E4%B9%9F%E4%BC%9A%E4%BF%9D%E7%95%99</description>
                </p>
                <p key="visible" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E5%8F%AF%E8%A7%81</description>
                </p>
                <p key="x" value="208.75" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="y" value="333.5" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorX" value="0.5" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorY" value="0.5" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="width" value="297.5" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%AE%BD%E5%BA%A6</description>
                </p>
                <p key="height" value="59" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%AB%98%E5%BA%A6</description>
                </p>
                <p key="angle" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E8%87%AA%E8%BA%AB%E8%A7%92%E5%BA%A6</description>
                </p>
                <p key="alpha" value="1" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%80%8F%E6%98%8E%E5%BA%A6</description>
                </p>
                <p key="url" value="resource%2FuserAsset%2F%E6%8C%89%E9%88%95.png" valuetype="string">
                  <description>%E5%9B%BE%E7%89%87%E6%BA%90</description>
                </p>
                <p key="enabled" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E9%BB%98%E8%AE%A4%E6%98%AF%E5%90%A6%E6%94%AF%E6%8C%81%E8%A7%A6%E6%91%B8</description>
                </p>
                <p key="collision" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E6%98%AF%E5%90%A6%E5%8F%AF%E4%BB%A5%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%A3%80%E6%B5%8B</description>
                </p>
                <p key="collisionData" value="%22%22" valuetype="string">
                  <description>%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E%E6%97%B6%E7%9A%84%E7%A2%B0%E6%92%9E%E6%95%B0%E6%8D%AE</description>
                </p>
              </properties>
              <customproperties/>
              <behaviors/>
              <children/>
            </object>
            <object type="AITextField" uiname="score" layer="0">
              <properties>
                <p key="name" value="score" valuetype="string">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%B1%BB%E5%9E%8B%E5%90%8D%E7%A7%B0%EF%BC%8C%E8%BF%99%E4%B9%9F%E5%B0%B1%E6%98%AF%E8%AF%B4%EF%BC%8C%E5%A4%9A%E4%B8%AA%E5%AE%9E%E4%BE%8B%E5%8F%AF%E8%83%BD%E4%BC%9A%E6%9C%89%E7%9B%B8%E5%90%8C%E7%9A%84%E5%90%8D%E5%AD%97%EF%BC%8C%E8%80%8C%E5%90%8C%E4%B8%80%E7%B1%BB%E5%9E%8B%E5%AE%9E%E4%BE%8B%E4%BC%9A%E5%85%B7%E5%A4%87%E7%9B%B8%E5%90%8C%E7%9A%84%E8%87%AA%E5%AE%9A%E4%B9%89%E5%B1%9E%E6%80%A7%E4%B8%8E%E8%A1%8C%E4%B8%BA</description>
                </p>
                <p key="uiGuid" value="605" valuetype="string">
                  <description>%E7%BC%96%E8%BE%91%E5%99%A8%E7%94%9F%E6%88%90%E7%9A%84%E5%94%AF%E4%B8%80id</description>
                </p>
                <p key="global" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E4%B8%BA%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%EF%BC%8C%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%E5%9C%A8%E8%B7%A8%E5%9C%BA%E6%99%AF%E5%90%8E%E4%B8%8D%E4%BC%9A%E8%A2%AB%E9%94%80%E6%AF%81%EF%BC%8C%E4%BB%8D%E7%84%B6%E4%BC%9A%E8%A2%AB%E4%BF%9D%E7%95%99%EF%BC%8C%E5%B9%B6%E4%B8%94%E5%85%B6%E6%9C%AC%E8%BA%AB%E5%B8%A6%E7%9A%84%E6%95%B0%E6%8D%AE%E4%B9%9F%E4%BC%9A%E4%BF%9D%E7%95%99</description>
                </p>
                <p key="visible" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E5%8F%AF%E8%A7%81</description>
                </p>
                <p key="x" value="196" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="y" value="187" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorX" value="0.5" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorY" value="0.5" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="width" value="300" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%AE%BD%E5%BA%A6</description>
                </p>
                <p key="height" value="50" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%AB%98%E5%BA%A6</description>
                </p>
                <p key="angle" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E8%87%AA%E8%BA%AB%E8%A7%92%E5%BA%A6</description>
                </p>
                <p key="alpha" value="1" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%80%8F%E6%98%8E%E5%BA%A6</description>
                </p>
                <p key="text" value="%E5%BE%97%E5%88%86%3A0" valuetype="string">
                  <description>%E9%BB%98%E8%AE%A4%E6%96%87%E6%9C%AC</description>
                </p>
                <p key="fontFamily" value="%E5%AE%8B%E4%BD%93" valuetype="string">
                  <description>%E5%AD%97%E4%BD%93</description>
                </p>
                <p key="size" value="40" valuetype="number">
                  <description>%E5%AD%97%E4%BD%93%E5%A4%A7%E5%B0%8F</description>
                </p>
                <p key="textColor" value="16777215" valuetype="number">
                  <description>%E5%AD%97%E4%BD%93%E9%A2%9C%E8%89%B2</description>
                </p>
                <p key="bold" value="false" valuetype="boolean">
                  <description>%E7%B2%97%E4%BD%93</description>
                </p>
                <p key="enableInput" value="false" valuetype="boolean">
                  <description>%E5%85%81%E8%AE%B8%E8%BE%93%E5%85%A5</description>
                </p>
                <p key="inputType" value="text" valuetype="string">
                  <description>%E5%85%81%E8%AE%B8%E8%BE%93%E5%85%A5</description>
                </p>
                <p key="textAlign" value="center" valuetype="string">
                  <description>%E6%B0%B4%E5%B9%B3%E5%B8%83%E5%B1%80</description>
                </p>
                <p key="verticalAlign" value="middle" valuetype="string">
                  <description>%E5%9E%82%E7%9B%B4%E5%B8%83%E5%B1%80</description>
                </p>
                <p key="maxChars" value="100" valuetype="number">
                  <description>%E5%AD%97%E6%95%B0%E4%B8%8A%E9%99%90</description>
                </p>
                <p key="italic" value="false" valuetype="boolean">
                  <description>%E6%96%9C%E4%BD%93</description>
                </p>
                <p key="wordWrap" value="false" valuetype="boolean">
                  <description>%E6%94%AF%E6%8C%81%E6%8D%A2%E8%A1%8C</description>
                </p>
                <p key="enabled" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E9%BB%98%E8%AE%A4%E6%98%AF%E5%90%A6%E6%94%AF%E6%8C%81%E8%A7%A6%E6%91%B8</description>
                </p>
                <p key="collision" value="false" valuetype="boolean">
                  <description>%E5%8F%82%E4%B8%8E%E7%A2%B0%E6%92%9E</description>
                </p>
              </properties>
              <customproperties/>
              <behaviors/>
              <children/>
            </object>
          </children>
        </object>
      </children>
    </object>
  </scenes>
</project>