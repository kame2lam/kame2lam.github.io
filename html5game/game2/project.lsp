<?xml version="1.0" encoding="UTF-8"?>
<project name="Game2" version="2.2" showFps="0" openLog="1" fps="60" scaleMode="0" orientaion="0" renderMode="1" bgColor="0" stagewidth="360" stageheight="640" startscenename="MainScene">
  <objects>
    <type uiname="WebSocket" uitype="AIWebSocket"/>
    <type uiname="System" uitype="AISystem"/>
    <type uiname="Function" uitype="AIFunction"/>
    <type uiname="Browser" uitype="AIBrowser"/>
    <type uiname="Keyboard" uitype="AIKeyboard"/>
    <type uiname="Ajax" uitype="AIAjax"/>
    <type uiname="Global" uitype="Global"/>
    <type uiname="WebStorage" uitype="AIWebStorage"/>
    <type uiname="Touch" uitype="AITouch"/>
    <type uiname="MainScene" uitype="Scene"/>
    <type uiname="Layer2906" uitype="Layer"/>
    <type uiname="AISprite2912" uitype="AISprite"/>
    <type uiname="P" uitype="AISprite"/>
    <type uiname="txt" uitype="AITextField"/>
  </objects>
  <eventsheet>
    <sheet name="MainSceneEventSheet" targetscene="MainScene">
      <p key="score" value="0" valuetype="number"/>
      <p key="timer" value="60" valuetype="number"/>
      <event name="null" enabled="true" relation="1" triggerOnceWhileTrue="false">
        <description>null</description>
        <conditons>
          <condition type="EveryXSecondsEvent" targetuiname="System" targetuitype="AISystem" invert="false" operatorType="0" isConflict="false" enabled="true">
            <properties>
              <p key="interval" value="1" valuetype="number">
                <description>%E6%97%B6%E9%97%B4%E9%97%B4%E9%9A%94%E3%80%82%EF%BC%88%E5%8D%95%E4%BD%8D%EF%BC%9A%E7%A7%92%EF%BC%89</description>
              </p>
            </properties>
          </condition>
          <condition type="CompareVariableEvent" targetuiname="System" targetuitype="AISystem" invert="false" operatorType="0" isConflict="false" enabled="true">
            <properties>
              <p key="variable" value="timer" valuetype="string" edittype="globalVariable">
                <description>%E9%80%89%E6%8B%A9%E5%85%A8%E5%B1%80%E5%8F%98%E9%87%8F%E3%80%82</description>
              </p>
              <p key="operationType" value="%22greaterThan%22" valuetype="string">
                <description>%E9%80%89%E6%8B%A9%E6%AF%94%E8%BE%83%E8%BF%90%E7%AE%97%E7%AC%A6%E3%80%82</description>
              </p>
              <p key="value" value="0" valuetype="any">
                <description>%E8%AF%B7%E8%BE%93%E5%85%A5%E7%94%A8%E4%BA%8E%E6%AF%94%E8%BE%83%E7%9A%84%E5%80%BC%E3%80%82</description>
              </p>
            </properties>
          </condition>
        </conditons>
        <actions>
          <action type="spawn" targetuiname="P" targetuitype="AISprite" isConflict="false" enabled="true">
            <properties>
              <p key="10" uiname="AISprite2912" uitype="AISprite" valuetype="string" edittype="instance">
                <description>%E8%AF%B7%E9%80%89%E6%8B%A9%E8%A6%81%E5%88%B6%E9%80%A0%E7%9A%84%E5%AE%9E%E4%BE%8B%E3%80%82%EF%BC%88%E4%B8%8D%E8%83%BD%E6%8C%87%E5%AE%9A%E4%B8%BA%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%EF%BC%89%E3%80%82</description>
              </p>
              <p key="11" value="99" valuetype="number">
                <description>%E8%A6%81%E5%88%B6%E9%80%A0%E7%9A%84%E5%AE%9E%E4%BE%8B%E6%89%80%E5%9C%A8%E7%9A%84%E5%B1%82%E6%AC%A1%E5%BA%8F%E5%8F%B7%E3%80%82%20%EF%BC%88%E6%95%B0%E5%AD%97%E8%B6%8A%E5%A4%A7%EF%BC%8C%E5%B1%82%E6%AC%A1%E8%B6%8A%E9%AB%98%EF%BC%8C%E9%AB%98%E5%B1%82%E6%AC%A1%E4%BC%9A%E9%81%AE%E7%9B%96%E4%BD%8E%E5%B1%82%E6%AC%A1%EF%BC%89</description>
              </p>
              <p key="12" value="Global.random()*300" valuetype="number">
                <description>%E8%A2%AB%E5%88%B6%E9%80%A0%E5%AE%9E%E4%BE%8B%E7%9A%84%E4%BA%A7%E7%94%9F%E7%82%B9%EF%BC%8C%E7%9B%B8%E5%AF%B9%E4%BA%8E%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B3%A8%E5%86%8C%E7%82%B9%EF%BC%8C%E6%B0%B4%E5%B9%B3%E5%81%8F%E7%A7%BB%E5%9D%90%E6%A0%87%E5%80%BC%E3%80%82</description>
              </p>
              <p key="13" value="100" valuetype="number">
                <description>%E8%A2%AB%E5%88%B6%E9%80%A0%E5%AE%9E%E4%BE%8B%E7%9A%84%E4%BA%A7%E7%94%9F%E7%82%B9%EF%BC%8C%E7%9B%B8%E5%AF%B9%E4%BA%8E%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B3%A8%E5%86%8C%E7%82%B9%EF%BC%8C%E5%9E%82%E7%9B%B4%E5%81%8F%E7%A7%BB%E5%9D%90%E6%A0%87%E5%80%BC%E3%80%82</description>
              </p>
              <p key="14" value="0" valuetype="number">
                <description>%E8%AE%BE%E7%BD%AE%E3%80%82</description>
              </p>
            </properties>
          </action>
          <action type="subtractFrom" targetuiname="System" targetuitype="AISystem" isConflict="false" enabled="true">
            <properties>
              <p key="12" value="timer" valuetype="string" edittype="globalVariable">
                <description>%E8%AF%B7%E9%80%89%E6%8B%A9%E4%B8%80%E4%B8%AA%E5%85%A8%E5%B1%80%E5%8F%98%E9%87%8F%E3%80%82</description>
              </p>
              <p key="11" value="1" valuetype="number">
                <description>%E5%85%A8%E5%B1%80%E5%8F%98%E9%87%8F%E5%87%8F%E5%8E%BB%E7%9A%84%E5%80%BC%E3%80%82</description>
              </p>
            </properties>
          </action>
        </actions>
        <subevent/>
      </event>
      <event name="null" enabled="true" relation="1" triggerOnceWhileTrue="false">
        <description>null</description>
        <conditons>
          <condition type="OnButtonBeginEvent" targetuiname="AISprite2912" targetuitype="AISprite" invert="false" operatorType="0" isConflict="false" enabled="true">
            <properties/>
          </condition>
        </conditons>
        <actions>
          <action type="destory" targetuiname="AISprite2912" targetuitype="AISprite" isConflict="false" enabled="true">
            <properties/>
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
          <action type="setText" targetuiname="txt" targetuitype="AITextField" isConflict="false" enabled="true">
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
    <object type="Scene" uiname="MainScene" layer="0">
      <familys/>
      <properties>
        <p key="sceneWidth" value="360" valuetype="number"/>
        <p key="sceneHeight" value="640" valuetype="number"/>
        <p key="width" value="1708" valuetype="number"/>
        <p key="height" value="960" valuetype="number"/>
      </properties>
      <customproperties/>
      <behaviors/>
      <children>
        <object type="Layer" uiname="Layer2906" parallaxX="100" parallaxY="100" layer="0">
          <properties>
            <p key="sceneWidth" value="360" valuetype="number"/>
            <p key="sceneHeight" value="640" valuetype="number"/>
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
            <object type="AITextField" uiname="txt" layer="0">
              <properties>
                <p key="name" value="txt" valuetype="string">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%B1%BB%E5%9E%8B%E5%90%8D%E7%A7%B0%EF%BC%8C%E8%BF%99%E4%B9%9F%E5%B0%B1%E6%98%AF%E8%AF%B4%EF%BC%8C%E5%A4%9A%E4%B8%AA%E5%AE%9E%E4%BE%8B%E5%8F%AF%E8%83%BD%E4%BC%9A%E6%9C%89%E7%9B%B8%E5%90%8C%E7%9A%84%E5%90%8D%E5%AD%97%EF%BC%8C%E8%80%8C%E5%90%8C%E4%B8%80%E7%B1%BB%E5%9E%8B%E5%AE%9E%E4%BE%8B%E4%BC%9A%E5%85%B7%E5%A4%87%E7%9B%B8%E5%90%8C%E7%9A%84%E8%87%AA%E5%AE%9A%E4%B9%89%E5%B1%9E%E6%80%A7%E4%B8%8E%E8%A1%8C%E4%B8%BA</description>
                </p>
                <p key="uiGuid" value="2920" valuetype="string">
                  <description>%E7%BC%96%E8%BE%91%E5%99%A8%E7%94%9F%E6%88%90%E7%9A%84%E5%94%AF%E4%B8%80id</description>
                </p>
                <p key="global" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E4%B8%BA%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%EF%BC%8C%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%E5%9C%A8%E8%B7%A8%E5%9C%BA%E6%99%AF%E5%90%8E%E4%B8%8D%E4%BC%9A%E8%A2%AB%E9%94%80%E6%AF%81%EF%BC%8C%E4%BB%8D%E7%84%B6%E4%BC%9A%E8%A2%AB%E4%BF%9D%E7%95%99%EF%BC%8C%E5%B9%B6%E4%B8%94%E5%85%B6%E6%9C%AC%E8%BA%AB%E5%B8%A6%E7%9A%84%E6%95%B0%E6%8D%AE%E4%B9%9F%E4%BC%9A%E4%BF%9D%E7%95%99</description>
                </p>
                <p key="visible" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E5%8F%AF%E8%A7%81</description>
                </p>
                <p key="x" value="177.52727379368838" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="y" value="48.88738006257809" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorX" value="0.5" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorY" value="0.5" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="width" value="334.8472682218493" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%AE%BD%E5%BA%A6</description>
                </p>
                <p key="height" value="57.62409800641001" valuetype="number">
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
                <p key="textAlign" value="left" valuetype="string">
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
            <object type="AISprite" uiname="P" layer="0">
              <properties>
                <p key="name" value="P" valuetype="string">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%B1%BB%E5%9E%8B%E5%90%8D%E7%A7%B0%EF%BC%8C%E8%BF%99%E4%B9%9F%E5%B0%B1%E6%98%AF%E8%AF%B4%EF%BC%8C%E5%A4%9A%E4%B8%AA%E5%AE%9E%E4%BE%8B%E5%8F%AF%E8%83%BD%E4%BC%9A%E6%9C%89%E7%9B%B8%E5%90%8C%E7%9A%84%E5%90%8D%E5%AD%97%EF%BC%8C%E8%80%8C%E5%90%8C%E4%B8%80%E7%B1%BB%E5%9E%8B%E5%AE%9E%E4%BE%8B%E4%BC%9A%E5%85%B7%E5%A4%87%E7%9B%B8%E5%90%8C%E7%9A%84%E8%87%AA%E5%AE%9A%E4%B9%89%E5%B1%9E%E6%80%A7%E4%B8%8E%E8%A1%8C%E4%B8%BA</description>
                </p>
                <p key="uiGuid" value="2917" valuetype="string">
                  <description>%E7%BC%96%E8%BE%91%E5%99%A8%E7%94%9F%E6%88%90%E7%9A%84%E5%94%AF%E4%B8%80id</description>
                </p>
                <p key="global" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E4%B8%BA%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%EF%BC%8C%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%E5%9C%A8%E8%B7%A8%E5%9C%BA%E6%99%AF%E5%90%8E%E4%B8%8D%E4%BC%9A%E8%A2%AB%E9%94%80%E6%AF%81%EF%BC%8C%E4%BB%8D%E7%84%B6%E4%BC%9A%E8%A2%AB%E4%BF%9D%E7%95%99%EF%BC%8C%E5%B9%B6%E4%B8%94%E5%85%B6%E6%9C%AC%E8%BA%AB%E5%B8%A6%E7%9A%84%E6%95%B0%E6%8D%AE%E4%B9%9F%E4%BC%9A%E4%BF%9D%E7%95%99</description>
                </p>
                <p key="visible" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E5%8F%AF%E8%A7%81</description>
                </p>
                <p key="x" value="50" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="y" value="-50" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorX" value="0.4786761354471502" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorY" value="0.49" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="width" value="100" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%AE%BD%E5%BA%A6</description>
                </p>
                <p key="height" value="100" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%AB%98%E5%BA%A6</description>
                </p>
                <p key="angle" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E8%87%AA%E8%BA%AB%E8%A7%92%E5%BA%A6</description>
                </p>
                <p key="alpha" value="1" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%80%8F%E6%98%8E%E5%BA%A6</description>
                </p>
                <p key="url" value="resource%2FuserAsset%2F%E8%A5%BF%E7%93%9C.png" valuetype="string">
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
                    <p key="speed" value="0" valuetype="number">
                      <description>%E8%AE%BE%E7%BD%AE%E5%AD%90%E5%BC%B9%E7%9A%84%E8%BF%90%E5%8A%A8%E9%80%9F%E5%BA%A6%E3%80%82%EF%BC%88%E5%8D%95%E4%BD%8D%EF%BC%9A%E5%83%8F%E7%B4%A0%2F%E7%A7%92%EF%BC%89</description>
                    </p>
                    <p key="acceleration" value="0" valuetype="number">
                      <description>%E5%AD%90%E5%BC%B9%E8%BF%90%E5%8A%A8%E7%9A%84%E5%8A%A0%E9%80%9F%E5%BA%A6%EF%BC%8C%E9%BB%98%E8%AE%A4%E7%9A%84%E5%8A%A0%E9%80%9F%E5%BA%A6%E4%B8%BA%E9%9B%B6%E3%80%82%EF%BC%88%E5%8D%95%E4%BD%8D%EF%BC%9A%E5%83%8F%E7%B4%A0%2F%E7%A7%92%C2%B2%EF%BC%89</description>
                    </p>
                    <p key="gravity" value="0" valuetype="number">
                      <description>%E5%AD%90%E5%BC%B9%E8%BF%90%E8%A1%8C%E4%B8%AD%E6%89%80%E6%89%BF%E5%8F%97%E7%9A%84%E5%90%91%E4%B8%8B%E7%9A%84%E9%87%8D%E5%8A%9B%EF%BC%8C%E9%BB%98%E8%AE%A4%E4%B8%BA%E9%9B%B6%E3%80%82</description>
                    </p>
                    <p key="angle" value="90" valuetype="number">
                      <description>%E8%AE%BE%E7%BD%AE%E5%AD%90%E5%BC%B9%E9%BB%98%E8%AE%A4%E7%9A%84%E8%BF%90%E8%A1%8C%E8%A7%92%E5%BA%A6%E3%80%82</description>
                    </p>
                    <p key="bounceOffSolids" value="0" valuetype="number">
                      <description>%E8%AE%BE%E7%BD%AE%E5%AD%90%E5%BC%B9%E4%B8%8E%E5%88%9A%E4%BD%93%E6%98%AF%E5%90%A6%E7%A2%B0%E6%92%9E%E3%80%82</description>
                    </p>
                    <p key="solidChangedAngle" value="1" valuetype="number">
                      <description>%E8%AE%BE%E7%BD%AE%E4%B8%8E%E5%AD%90%E5%BC%B9%E4%B8%8E%E5%88%9A%E4%BD%93%E7%A2%B0%E6%92%9E%E5%90%8E%E6%98%AF%E5%90%A6%E6%94%B9%E5%8F%98%E5%AD%90%E5%BC%B9%E8%87%AA%E8%BA%AB%E7%9A%84%E8%A7%92%E5%BA%A6</description>
                    </p>
                  </properties>
                </b>
              </behaviors>
              <children/>
            </object>
            <object type="AISprite" uiname="AISprite2912" layer="0">
              <properties>
                <p key="name" value="AISprite2912" valuetype="string">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%B1%BB%E5%9E%8B%E5%90%8D%E7%A7%B0%EF%BC%8C%E8%BF%99%E4%B9%9F%E5%B0%B1%E6%98%AF%E8%AF%B4%EF%BC%8C%E5%A4%9A%E4%B8%AA%E5%AE%9E%E4%BE%8B%E5%8F%AF%E8%83%BD%E4%BC%9A%E6%9C%89%E7%9B%B8%E5%90%8C%E7%9A%84%E5%90%8D%E5%AD%97%EF%BC%8C%E8%80%8C%E5%90%8C%E4%B8%80%E7%B1%BB%E5%9E%8B%E5%AE%9E%E4%BE%8B%E4%BC%9A%E5%85%B7%E5%A4%87%E7%9B%B8%E5%90%8C%E7%9A%84%E8%87%AA%E5%AE%9A%E4%B9%89%E5%B1%9E%E6%80%A7%E4%B8%8E%E8%A1%8C%E4%B8%BA</description>
                </p>
                <p key="uiGuid" value="2913" valuetype="string">
                  <description>%E7%BC%96%E8%BE%91%E5%99%A8%E7%94%9F%E6%88%90%E7%9A%84%E5%94%AF%E4%B8%80id</description>
                </p>
                <p key="global" value="false" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E4%B8%BA%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%EF%BC%8C%E5%85%A8%E5%B1%80%E5%AE%9E%E4%BE%8B%E5%9C%A8%E8%B7%A8%E5%9C%BA%E6%99%AF%E5%90%8E%E4%B8%8D%E4%BC%9A%E8%A2%AB%E9%94%80%E6%AF%81%EF%BC%8C%E4%BB%8D%E7%84%B6%E4%BC%9A%E8%A2%AB%E4%BF%9D%E7%95%99%EF%BC%8C%E5%B9%B6%E4%B8%94%E5%85%B6%E6%9C%AC%E8%BA%AB%E5%B8%A6%E7%9A%84%E6%95%B0%E6%8D%AE%E4%B9%9F%E4%BC%9A%E4%BF%9D%E7%95%99</description>
                </p>
                <p key="visible" value="true" valuetype="boolean">
                  <description>%E5%BD%93%E5%89%8D%E6%98%BE%E7%A4%BA%E5%AF%B9%E8%B1%A1%E6%98%AF%E5%90%A6%E5%8F%AF%E8%A7%81</description>
                </p>
                <p key="x" value="-50" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="y" value="48.154394714482976" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorX" value="0.4786761354471502" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E6%B0%B4%E5%B9%B3%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="anchorY" value="0.4896611565804358" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%9E%82%E7%9B%B4%E6%96%B9%E5%90%91%E9%94%9A%E7%82%B9%E5%9D%90%E6%A0%87</description>
                </p>
                <p key="width" value="100" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E5%AE%BD%E5%BA%A6</description>
                </p>
                <p key="height" value="100" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%AB%98%E5%BA%A6</description>
                </p>
                <p key="angle" value="0" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E8%87%AA%E8%BA%AB%E8%A7%92%E5%BA%A6</description>
                </p>
                <p key="alpha" value="1" valuetype="number">
                  <description>%E5%BD%93%E5%89%8D%E5%AE%9E%E4%BE%8B%E7%9A%84%E9%80%8F%E6%98%8E%E5%BA%A6</description>
                </p>
                <p key="url" value="resource%2FuserAsset%2F%E8%A5%BF%E7%93%9C.png" valuetype="string">
                  <description>%E5%9B%BE%E7%89%87%E6%BA%90</description>
                </p>
                <p key="enabled" value="true" valuetype="boolean">
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
                    <p key="speed" value="200" valuetype="number">
                      <description>%E8%AE%BE%E7%BD%AE%E5%AD%90%E5%BC%B9%E7%9A%84%E8%BF%90%E5%8A%A8%E9%80%9F%E5%BA%A6%E3%80%82%EF%BC%88%E5%8D%95%E4%BD%8D%EF%BC%9A%E5%83%8F%E7%B4%A0%2F%E7%A7%92%EF%BC%89</description>
                    </p>
                    <p key="acceleration" value="0" valuetype="number">
                      <description>%E5%AD%90%E5%BC%B9%E8%BF%90%E5%8A%A8%E7%9A%84%E5%8A%A0%E9%80%9F%E5%BA%A6%EF%BC%8C%E9%BB%98%E8%AE%A4%E7%9A%84%E5%8A%A0%E9%80%9F%E5%BA%A6%E4%B8%BA%E9%9B%B6%E3%80%82%EF%BC%88%E5%8D%95%E4%BD%8D%EF%BC%9A%E5%83%8F%E7%B4%A0%2F%E7%A7%92%C2%B2%EF%BC%89</description>
                    </p>
                    <p key="gravity" value="0" valuetype="number">
                      <description>%E5%AD%90%E5%BC%B9%E8%BF%90%E8%A1%8C%E4%B8%AD%E6%89%80%E6%89%BF%E5%8F%97%E7%9A%84%E5%90%91%E4%B8%8B%E7%9A%84%E9%87%8D%E5%8A%9B%EF%BC%8C%E9%BB%98%E8%AE%A4%E4%B8%BA%E9%9B%B6%E3%80%82</description>
                    </p>
                    <p key="angle" value="90" valuetype="number">
                      <description>%E8%AE%BE%E7%BD%AE%E5%AD%90%E5%BC%B9%E9%BB%98%E8%AE%A4%E7%9A%84%E8%BF%90%E8%A1%8C%E8%A7%92%E5%BA%A6%E3%80%82</description>
                    </p>
                    <p key="bounceOffSolids" value="0" valuetype="number">
                      <description>%E8%AE%BE%E7%BD%AE%E5%AD%90%E5%BC%B9%E4%B8%8E%E5%88%9A%E4%BD%93%E6%98%AF%E5%90%A6%E7%A2%B0%E6%92%9E%E3%80%82</description>
                    </p>
                    <p key="solidChangedAngle" value="1" valuetype="number">
                      <description>%E8%AE%BE%E7%BD%AE%E4%B8%8E%E5%AD%90%E5%BC%B9%E4%B8%8E%E5%88%9A%E4%BD%93%E7%A2%B0%E6%92%9E%E5%90%8E%E6%98%AF%E5%90%A6%E6%94%B9%E5%8F%98%E5%AD%90%E5%BC%B9%E8%87%AA%E8%BA%AB%E7%9A%84%E8%A7%92%E5%BA%A6</description>
                    </p>
                  </properties>
                </b>
                <b name="出界销毁" type="DestoryOutsideLayoutBehaivor">
                  <properties>
                    <p key="type" value="1" valuetype="number">
                      <description>%E5%87%BA%E7%95%8C%E9%94%80%E6%AF%81%EF%BC%8C%E6%9C%89%E4%B8%A4%E7%A7%8D%E7%B1%BB%E5%9E%8B%EF%BC%9A%0A%20%201.%E3%80%90%E5%B1%8F%E5%B9%95%E5%86%85%E4%BA%A7%E7%94%9F%E3%80%91%E5%AF%B9%E8%B1%A1%E5%88%9D%E5%A7%8B%E4%BA%A7%E7%94%9F%E5%9C%A8%E5%B1%8F%E5%B9%95%E5%86%85%EF%BC%8C%E8%BF%90%E5%8A%A8%E5%87%BA%E5%B1%8F%E5%B9%95%E5%A4%96%E5%90%8E%E9%94%80%E6%AF%81%E3%80%82%0A%20%202.%E3%80%90%E5%B1%8F%E5%B9%95%E5%A4%96%E4%BA%A7%E7%94%9F%E3%80%91%E5%AF%B9%E8%B1%A1%E5%88%9D%E5%A7%8B%E4%BA%A7%E7%94%9F%E5%9C%A8%E5%B1%8F%E5%B9%95%E5%A4%96%EF%BC%8C%E5%90%8E%E8%BF%90%E5%8A%A8%E5%88%B0%E5%B1%8F%E5%B9%95%E5%86%85%EF%BC%8C%E5%86%8D%E8%BF%90%E5%8A%A8%E5%87%BA%E5%B1%8F%E5%B9%95%E5%90%8E%E9%94%80%E6%AF%81%E3%80%82</description>
                    </p>
                  </properties>
                </b>
              </behaviors>
              <children/>
            </object>
          </children>
        </object>
      </children>
    </object>
  </scenes>
</project>