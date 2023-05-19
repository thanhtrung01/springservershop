# Sử dụng một hình ảnh cơ sở chứa Java JDK
FROM openjdk:18-jdk

# Thiết lập thư mục làm việc trong container
WORKDIR /app

# Sao chép file pom.xml vào thư mục làm việc
COPY pom.xml .

# Sao chép các tệp mã nguồn vào thư mục làm việc
COPY src ./src

# Biên dịch ứng dụng với Maven
RUN mvn package

# Chạy ứng dụng khi container được khởi chạy
CMD ["java", "-jar", "target/ecommercebackend-0.0.1-SNAPSHOT.jar"]
EXPOSE 8010
