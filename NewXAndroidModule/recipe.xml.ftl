<?xml version="1.0"?>
<!-- TODO: check include Cpp support; add driver module template -->
<recipe>
    <mkdir at="${escapeXmlAttribute(projectOut)}/libs" />
    <mkdir at="${escapeXmlAttribute(resOut)}/drawable" />
    <mkdir at="${escapeXmlAttribute(resOut)}/drawable-v24" />
    <mkdir at="${escapeXmlAttribute(resOut)}/mipmap-anydpi-v26" />
    <mkdir at="${escapeXmlAttribute(resOut)}/mipmap-hdpi" />
    <mkdir at="${escapeXmlAttribute(resOut)}/mipmap-xhdpi" />
    <mkdir at="${escapeXmlAttribute(resOut)}/mipmap-xxhdpi" />
    <mkdir at="${escapeXmlAttribute(resOut)}/mipmap-xxxhdpi" />
    <mkdir at="${escapeXmlAttribute(resOut)}/layout" />
    <mkdir at="${projectOut}/src/main/java/${slashedPackageName(packageName)}/activity" />
    <mkdir at="${projectOut}/src/main/java/${slashedPackageName(packageName)}/fragment" />

    <merge from="root/settings.gradle.ftl"
             to="${escapeXmlAttribute(topOut)}/settings.gradle" />

    <instantiate from="root/build.gradle.ftl"
                   to="${escapeXmlAttribute(projectOut)}/build.gradle" />
    <instantiate from="root/AndroidManifest.xml.ftl"
                   to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />            
    <instantiate from="root/res/values/strings.xml.ftl"
                   to="${escapeXmlAttribute(resOut)}/values/strings.xml" />
    <instantiate from="root/res/values/styles.xml.ftl"
                   to="${escapeXmlAttribute(resOut)}/values/styles.xml" />
    <copy from="root/res/values/colors.xml"
                   to="${escapeXmlAttribute(resOut)}/values/colors.xml" />
    <instantiate from="root/test/app_package/ExampleInstrumentedTest.java.ftl"
                   to="${escapeXmlAttribute(testOut)}/ExampleInstrumentedTest.java" />

    <instantiate from="root/src/app_package/MainActivity.java.ftl"
                   to="${projectOut}/src/main/java/${slashedPackageName(packageName)}/activity/MainActivity.java" />
    <instantiate from="root/src/app_package/MainFragment.java.ftl"
                   to="${projectOut}/src/main/java/${slashedPackageName(packageName)}/fragment/MainFragment.java" />
    <instantiate from="root/src/app_package/App.java.ftl"
                   to="${projectOut}/src/main/java/${slashedPackageName(packageName)}/App.java" />
    


<#if unitTestsSupported>
    <instantiate from="root/test/app_package/ExampleUnitTest.java.ftl"
                   to="${escapeXmlAttribute(unitTestOut)}/ExampleUnitTest.java" />
</#if>


<#if !createActivity>
    <mkdir at="${escapeXmlAttribute(srcOut)}" />
</#if>

<#if makeIgnore>
    <copy from="root://gradle-projects/common/gitignore"
            to="${escapeXmlAttribute(projectOut)}/.gitignore" />
</#if>

<instantiate from="root/proguard-rules.txt.ftl"
                   to="${escapeXmlAttribute(projectOut)}/proguard-rules.pro" />


<copy from="root/res/mipmap-hdpi/ic_launcher.png"
        to="${escapeXmlAttribute(resOut)}/mipmap-hdpi/ic_launcher.png" />
<copy from="root/res/mipmap-xhdpi/ic_launcher.png"
        to="${escapeXmlAttribute(resOut)}/mipmap-xhdpi/ic_launcher.png" />
<copy from="root/res/mipmap-xxhdpi/ic_launcher.png"
        to="${escapeXmlAttribute(resOut)}/mipmap-xxhdpi/ic_launcher.png" />
<copy from="root/res/mipmap-xxxhdpi/ic_launcher.png"
        to="${escapeXmlAttribute(resOut)}/mipmap-xxxhdpi/ic_launcher.png" />

</recipe>
