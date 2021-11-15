#! /bin/bash

#Installing maven
wget https://dlcdn.apache.org/maven/maven-3/3.8.3/binaries/apache-maven-3.8.3-bin.tar.gz -P /tmp
tar -xzf /tmp/apache-maven-3.8.3-bin.tar.gz -C /opt/ 
ln -s /opt/apache-maven-3.8.3/ /opt/maven
cat > /etc/profile.d/maven.sh <<EOF
export JAVA_HOME=/usr/lib/jvm/jre-openjdk
export M2_HOME=/opt/maven
export MAVEN_HOME=/opt/maven
export PATH=${M2_HOME}/bin:${PATH}
EOF
chmod +x /etc/profile.d/maven.sh
source /etc/profile.d/maven.sh
mvn -version
