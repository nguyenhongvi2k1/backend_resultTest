-- Active: 1701961286190@@127.0.0.1@5432
CREATE TABLE
    username (
        id_user SERIAL PRIMARY KEY,
        name VARCHAR(256),
        email VARCHAR(256),
        password VARCHAR(256),
        birth VARCHAR(256),
        phone INT
    );

CREATE Table
    website (
        id_web SERIAL PRIMARY KEY,
        style VARCHAR(256),
        title VARCHAR(256),
        role VARCHAR(256),
        category VARCHAR(256)
    )

CREATE Table
    template (
        id_tem SERIAL PRIMARY KEY,
        id_web INT,
        CONSTRAINT fk_id_web FOREIGN KEY (id_web) REFERENCES website(id_web),
        image_data VARCHAR(500)
    )

CREATE TABLE
    job (
        id_job SERIAL PRIMARY KEY,
        logo VARCHAR(500),
        title VARCHAR(256),
        demain VARCHAR(256)
    )

Drop TABLE website cascade;

Select * from template;

INSERT INTO username (id_user,name,email,password, birth,phone)
VALUES ('1', 'ViVi', 'vivi@gmail.com','123123','2022/06/19','0387451318' );


INSERT INTO website (style,title,role,category)
VALUES ( 'Mẫu theo công việc','Mẫu Java đơn giản nâng cao','Thực tập sinh', 'Phát triển Frontend');
INSERT INTO website (style,title,role,category)
VALUES ( 'Mẫu theo công việc', 'Mẫu NextJS đơn giản','Thực tập sinh', 'Phát triển Frontend');
INSERT INTO website (style,title,role,category)
VALUES (  'Mẫu theo công việc','Mẫu ReactJS nâng cao','Thực tập sinh', 'Phát triển Frontend');
INSERT INTO website (style,title,role,category)
VALUES ( 'Mẫu theo công việc', 'Mẫu Javascript nâng cao','Thực tập sinh', 'Phát triển Frontend');
INSERT INTO website (style,title,role,category)
VALUES ('Mẫu phong cách','Mẫu trang nhã', 'Mới tốt nghiệp', 'Vị trí thiết kế cao');
INSERT INTO website (style,title,role,category)
VALUES ('Mẫu phong cách','Mẫu đơn giản thiết kế trang sức mới', 'Mới tốt nghiệp', 'Vị trí thiết kế cao');
INSERT INTO website (style,title,role,category)
VALUES ( 'Mẫu theo công việc','Mẫu thực tập thiết kế nội thất trung cấp','Thiếu niên', 'Quản lý bán hàng');
INSERT INTO website (style,title,role,category)
VALUES ('Mẫu theo công việc', 'Mẫu đơn giản hóa quản lý tài sản','Trung cấp', 'Đầu tư và tài chính');
INSERT INTO website (style,title,role,category)
VALUES ( 'Mẫu theo công việc','Mẫu thực tập công nhân xây dựng','Thiếu niên', 'Quản lý bán hàng');
INSERT INTO website (style,title,role,category)
VALUES ( 'Mẫu theo công việc','Mẫu trợ lý nghệ sĩ','Trung cấp', 'Đầu tư và tài chính');
INSERT INTO website (style,title,role,category)
VALUES ( 'Mẫu phong cách','Mẫu trang nhã tiếp thị nâng cao','Thiếu niên', 'Quản lý bán hàng');
INSERT INTO website (style,title,role,category)
VALUES ( 'Mẫu theo công việc','Mẫu thực tập thư ký văn phòng','Trung cấp', 'Đầu tư và tài chính');

INSERT INTO template (id_web, image_data)
VALUES ('1', 'https://www.vietnamworks.com/assets-wowcv/images/list_templates/cv_template_33.png');
INSERT INTO template (id_web, image_data)
VALUES ('2', 'https://www.vietnamworks.com/assets-wowcv/images/list_templates/cv_template_33.png');
INSERT INTO template (id_web, image_data)
VALUES ('3',  'https://www.vietnamworks.com/assets-wowcv/images/list_templates/cv_template_33.png');
INSERT INTO template (id_web, image_data)
VALUES ('4',  'https://www.vietnamworks.com/assets-wowcv/images/list_templates/cv_template_33.png');
INSERT INTO template (id_web, image_data)
VALUES ('5', 'https://www.vietnamworks.com/assets-wowcv/images/list_templates/cv_template_33.png');
INSERT INTO template (id_web, image_data)
VALUES ('6', 'https://www.vietnamworks.com/assets-wowcv/images/list_templates/cv_template_33.png');
INSERT INTO template (id_web, image_data)
VALUES ('7', 'https://www.vietnamworks.com/assets-wowcv/images/list_templates/cv_template_33.png');
INSERT INTO template (id_web, image_data)
VALUES ('8', 'https://www.vietnamworks.com/assets-wowcv/images/list_templates/cv_template_33.png');
INSERT INTO template (id_web, image_data)
VALUES ('9', 'https://www.vietnamworks.com/assets-wowcv/images/list_templates/cv_template_33.png');
INSERT INTO template (id_web, image_data)
VALUES ('10', 'https://www.vietnamworks.com/assets-wowcv/images/list_templates/cv_template_33.png');
INSERT INTO template (id_web, image_data)
VALUES ('11', 'https://www.vietnamworks.com/assets-wowcv/images/list_templates/cv_template_33.png');
INSERT INTO template (id_web, image_data)
VALUES ('12', 'https://www.vietnamworks.com/assets-wowcv/images/list_templates/cv_template_33.png');


INSERT INTO job (logo,title,demain)
VALUES ('https://insieutoc.vn/wp-content/uploads/2021/03/cac-mau-logo-dep-nhat.jpg', 'Pepsi', 'Phần cứng thông minh');
INSERT INTO job (logo,title,demain)
VALUES ('https://png.pngtree.com/png-vector/20191018/ourlarge/pngtree-logo-coin-vector-investment-logo-financial-or-business-concept-png-image_1820372.jpg', 'Bird', 'Đầu tư và tài chính');
INSERT INTO job (logo,title,demain)
VALUES ('https://logoart.vn/blog/wp-content/uploads/2013/03/thiet-ke-logo-sao-kim-7-1.jpg', 'Green', 'Thương mại điện tử');
INSERT INTO job (logo,title,demain)
VALUES ('https://iweb.tatthanh.com.vn/pic/3/blog/images/image(4701).png', 'Bluewolf', 'Phát triển front end');
INSERT INTO job (logo,title,demain)
VALUES ('https://gudlogo.com/wp-content/uploads/2019/05/logo-su-tu-Little-Lion.jpg', 'Little Lion', 'Phát triển điện thoại di động');
INSERT INTO job (logo,title,demain)
VALUES ('https://insieutoc.vn/wp-content/uploads/2021/03/mau-logo-dep.jpg', 'Apple', 'Quản lý bán hàng');
INSERT INTO job (logo,title,demain)
VALUES ('https://adtimin.vn/wp-content/uploads/2017/09/Logo-1.jpg', 'Tập đoàn', 'Phần mềm máy tính');
INSERT INTO job (logo,title,demain)
VALUES ('https://cdn.pixabay.com/photo/2023/05/29/11/14/artificial-intelligence-8025738_1280.png', 'Skill', 'Trí tuệ nhân tạo');