---
- name: Install Java
  hosts: all
  become: true
  tasks:
    - name: Install OpenJDK 17
      apt:
        name: openjdk-17-jdk
        state: present

    - name: Download app.jar
      get_url:
        url: "https://github.com/aliasgarxo/app-java-jar.git"
        dest: "/opt/app.jar"

    - name: Execute shell command
      shell: java -jar /opt/app.jar
