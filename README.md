1. Clone dự án trên Github bằng Git Tool
2. Chạy dự án trên JRE của Java như Eclipse, Intellij
3. Chạy database scripts:
src -> main -> resources -> data -> database.sql. Chạy Scripts này trên phần mềm database như MySQL Workbench, DataGrip.
4. Cấu hình lại database trong src -> main -> java -> com -> example -> book_management -> connection -> JdbcConnection.java. Cấu hình JDBC_URL, USERNAME, PASSWORD theo cấu hình của máy.
5. Chạy chương trình, cấu hình và sử dụng Tomcat Server.