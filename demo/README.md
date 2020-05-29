# 后端说明

 1. 数据库的名为net，在连接数据库时若无法连接成功，则把url换成jdbc:mysql://localhost:3306/net?useUnicode=true&characterEncoding=UTF-8&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC
 2. 增加reply实体类，comment持有对reply的引用。
