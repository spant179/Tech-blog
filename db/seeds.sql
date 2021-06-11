USE <jawsdb sql db name here>;

INSERT INTO user (username, password)
VALUES
("Sal", "$2b$10$SNNvDGr4wqSV9j2C/yHN7OH8ovTjY8QToURU5FVEqFSr2T03n01OG"),
("Lernantino", "$2b$10$SNNvDGr4wqSV9j2C/yHN7OH8ovTjY8QToURU5FVEqFSr2T03n01OG"),
("Amiko", "$2b$10$SNNvDGr4wqSV9j2C/yHN7OH8ovTjY8QToURU5FVEqFSr2T03n01OG");

INSERT INTO post (title, post_content, date_created, user_id)
VALUES
("Why MVC is so important", "MVC allows developers to maintain a true separation of concerns, devising their code between the Model layer for data, the View layer for design, and the Controller layer for application logic.", "2021-03-07 20:43:51", 1),
("Authentication vs. Authorization", "There is a difference between authentication and authorization. Authentication means confirming your won identity, whereas authorization means being allowed access to the system.", "2021-03-07 20:43:51", 2),
("Object-Relational Mapping", "I have really loved learning about ORMs. It's really ismplified the way I create queries in SQL!", "2021-03-07 20:43:51", 3);

INSERT INTO comment (comment_content, date_created, post_id, user_id)
VALUES
("I love this!", "2021-03-07 20:43:51", 1, 2),
("Yo this is fire!", "2021-03-07 20:43:51", 2, 3),
("I found this concept super hard to grasp...", "2021-03-07 20:43:51", 3, 1);