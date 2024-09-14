mkdir /tmp/gradle_temp
wget -P /tmp/gradle_temp https://services.gradle.org/distributions/gradle-8.0-bin.zip
mkdir /opt/gradle
unzip -d /opt/gradle /tmp/gradle_temp/gradle-8.0-bin.zip
ls /opt/gradle/gradle-8.0
rm -rf /tmp/gradle_temp