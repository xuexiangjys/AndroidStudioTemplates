// Top-level build file where you can add configuration options common to all sub-projects/modules.

buildscript {
    <#if includeKotlinSupport!false>ext.kotlin_version = '${kotlinVersion}'</#if>
    apply from: 'https://raw.githubusercontent.com/xuexiangjys/XUtil/master/versions.gradle'
    addRepos(repositories) //增加代码仓库

    dependencies {
        classpath deps.android_gradle_plugin
        classpath deps.android_maven_gradle_plugin
        <#if includeKotlinSupport!false>classpath "org.jetbrains.kotlin:kotlin-gradle-plugin:$kotlin_version"</#if>
        // NOTE: Do not place your application dependencies here; they belong
        // in the individual module build.gradle files
    }
}

allprojects {
     addRepos(repositories)
}

task clean(type: Delete) {
    delete rootProject.buildDir
}
