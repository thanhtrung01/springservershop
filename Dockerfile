# Sử dụng một hình ảnh cơ sở chứa Java JDK
FROM maven:3.8.1-openjdk-18-slim

# Thiết lập thư mục làm việc trong container
WORKDIR /app

# Sao chép file pom.xml vào thư mục làm việc
COPY . .

# Sao chép các tệp mã nguồn vào thư mục làm việc

# Biên dịch ứng dụng với Maven
RUN mvn install

# Chạy ứng dụng khi container được khởi chạy
CMD ["java", "-jar", "target/ecommercebackend-0.0.1-SNAPSHOT.jar"]
EXPOSE 8010
