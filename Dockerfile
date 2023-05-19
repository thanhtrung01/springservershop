# Sử dụng một hình ảnh cơ sở chứa Java JDK
FROM openjdk:11-jdk

# Thiết lập thư mục làm việc trong container
WORKDIR /app

# Sao chép file pom.xml vào thư mục làm việc
COPY pom.xml .

# Sao chép các tệp mã nguồn vào thư mục làm việc
COPY src ./src

# Biên dịch ứng dụng với Maven
RUN ./mvnw package -DskipTests

# Chạy ứng dụng khi container được khởi chạy
CMD ["java", "-jar", "target/ecommercebackend.jar"]
EXPOSE 8010
