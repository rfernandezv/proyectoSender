CREATE TABLE project (
  project_id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  code VARCHAR(50) NOT NULL,
  name VARCHAR(200) NOT NULL,
  balance DECIMAL(10,2) NOT NULL,
  currency VARCHAR(3) NOT NULL,
  locked BIT NOT NULL,
  customer_id BIGINT UNSIGNED NOT NULL,
  PRIMARY KEY(project_id),
  INDEX IX_project_customer_id(customer_id),
  UNIQUE INDEX UQ_project_code(code),
  CONSTRAINT FK_project_customer_id FOREIGN KEY(customer_id) REFERENCES customer(customer_id)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
