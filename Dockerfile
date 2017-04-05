FROM java:8

COPY src /home/root/javahelloworld/src

WORKDIR /home/root/javahelloworld
RUN mkdir bin && javac -d bin src/*

ENTRYPOINT ["java", "-cp", "/home/root/javahelloworld/bin", "HelloWorld"]


