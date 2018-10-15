CREATE TABLE user (
  user_id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  username VARCHAR(50) NOT NULL,  
  password VARCHAR(50) NOT NULL,
  role VARCHAR(50) NOT NULL,
  locked BIT NOT NULL,
  customer_id BIGINT UNSIGNED NOT NULL,
  PRIMARY KEY(user_id),
  INDEX IX_user_customer_id(customer_id),
  UNIQUE INDEX UQ_user_username(username),
  CONSTRAINT FK_user_customer_id FOREIGN KEY(customer_id) REFERENCES customer(customer_id)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
