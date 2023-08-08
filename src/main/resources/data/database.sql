create database if not exists book_management;

use book_management;

create table book
(
    ID         int auto_increment
        primary key,
    NAME       varchar(200)     not null,
    TYPE       varchar(50)      not null,
    YEAR       date             not null,
    DETAIL     varchar(1000)    not null,
    PRICE      int              not null,
    QUANTITY   int              not null,
    IMG        varchar(500)     not null,
    IS_DELETED bit default b'0' null,
    constraint IMG_UNIQUE
        unique (IMG)
);

insert into book_management.book (ID, NAME, TYPE, YEAR, DETAIL, PRICE, QUANTITY, IMG, IS_DELETED)
values  (8, 'Ngôi Làng Cổ Mộ', 'Sách kinh dị', '2023-04-24', 'Những chi tiết rùng rợn, những tình huống gay cấn, căng thẳng, sợ hãi, góc nhìn trong cuộc của người đang phải chạy trốn hay đương đầu với những thế lực huyền bí ở Ngôi làng cổ mộ sẽ lôi cuốn bạn không ngừng. Từng câu chữ của Thục Linh sẽ dẫn dắt bạn đọc như lạc vào chính xứ sở u linh trong câu chuyện, trải nghiệm cảm giác ghê rợn một cách chân thực nhất như chính các nhân vật. Không chỉ dừng lại ở yếu tố kinh dị, điều đặc sắc hơn cả là đằng sau bức màn câu chuyện huyền bí tâm linh, Thục Linh sẽ kể cho độc giả một bức tranh đời thực trần trụi nhất, sự đương đầu giữa cái ác và cái thiện trong cuộc sống, tình yêu thương và xúc cảm bản năng nhất của con người, những giá trị nhân văn mà đôi lúc dường như ta đã vô tình lãng quên…', 157000, 30, 'https://salt.tikicdn.com/cache/w1200/ts/product/5d/53/c3/488944d2c270965e7be9c5298a5ead94.jpg', false),
        (9, 'Bạch Dạ Hành', ' Sách kinh dị', '2019-06-01', 'Kosuke, chủ một tiệm cầm đồ bị sát hại tại một ngôi nhà chưa hoàn công, một triệu yên mang theo người cũng bị cướp mất.Sau đó một tháng, nghi can Fumiyo được cho rằng có quan hệ tình ái với nạn nhân và đã sát hại ông để cướp một triệu yên, cũng chết tại nhà riêng vì ngộ độc khí ga. Vụ án mạng ông chủ tiệm cầm đồ rơi vào bế tắc và bị bỏ xó.Nhưng với hai đứa trẻ mười một tuổi, con trai nạn nhân và con gái nghi can, vụ án mạng năm ấy chưa bao giờ kết thúc. Sinh tồn và trưởng thành dưới bóng đen cái chết của bố mẹ, cho đến cuối đời, Ryoji vẫn luôn khao khát được một lần đi dưới ánh mặt trời, còn Yukiho cứ ra sức vẫy vùng rồi mãi mãi chìm vào đêm trắng.', 188100, 20, 'https://revelogue.com/wp-content/uploads/2021/04/Bach-da-hanh-hinh-anh-1-1.jpg', false),
        (10, 'Gã Hề Ma Quái - Tập 2', 'Sách kinh dị', '2022-01-01', ' Derry, một thị trấn nhỏ ở Maine, một nơi quen thuộc đến ám ảnh. Chỉ ở Derry, ám ảnh là có thật. Một câu chuyện về bảy người lớn trở lại quê hương để đối mặt với cơn ác mộng mà họ gặp phải khi còn là những cô cậu thanh thiếu niên. 28 năm trước, họ đã chiến đấu với một sinh vật độc ác chuyên ăn thịt trẻ em. Giờ đây, những đứa trẻ lại tiếp tục bị sát hại, và những ký ức dồn nén của họ về mùa hè kinh khủng ấy trở lại khi một lần nữa phải chiến đấu với con quái vật ẩn nấp trong cống rãnh ở Derry. Cuộc điện thoại giữa đêm. Lời hứa thời thơ ấu. Những ký ức day dứt, điên cuồng và chực trào. Gã hề trong ống cống. Hành trình trở về quê hương của bảy đứa trẻ năm nào không phải để xoa dịu mà để đương đầu với cơn ác mộng', 193500, 0, 'https://cdn0.fahasa.com/media/catalog/product/2/0/2022000000071.jpg', false),
        (11, 'Cây Cam Ngọt Của Tôi', 'Sách tâm lý', '2021-05-01', ' Hãy làm quen với Zezé, cậu bé tinh nghịch siêu hạng đồng thời cũng đáng yêu bậc nhất, với ước mơ lớn lên trở thành nhà thơ cổ thắt nơ bướm. Chẳng phải ai cũng công nhận khoản “đáng yêu” kia đâu nhé. Bởi vì, ở cái xóm ngoại ô nghèo ấy, nỗi khắc khổ bủa vây đã che mờ mắt người ta trước trái tim thiện lương cùng trí tưởng tượng tuyệt vời của cậu bé con năm tuổi. Có hề gì đâu bao nhiêu là hắt hủi, đánh mắng, vì Zezé đã có một người bạn đặc biệt để trút nỗi lòng: cây cam ngọt nơi vườn sau. Và cả một người bạn nữa, bằng xương bằng thịt, một ngày kia xuất hiện, cho cậu bé nhạy cảm khôn sớm biết thế nào là trìu mến, thế nào là nỗi đau, và mãi mãi thay đổi cuộc đời cậu.', 82080, 100, 'https://sachnhanam.s3.ap-southeast-1.amazonaws.com/wp-content/uploads/20220419011941/275249391_489759975948245_4807283355582626488_n.jpg', false),
        (12, 'Willow Nhút Nhát', ' Sách thiếu nhi', '2022-02-28', ' Willow rất nhát. CỰC KÌ nhát. Cô sống trong một hòm thư bỏ hoang, và cô không thích ra ngoài cho lắm. Nhưng rồi một ngày nọ có phong thư đáp xuống nhà cô, trong thư là lời thỉnh cầu của cậu bé gửi tới mặt trăng trong ngày sinh nhật mẹ. Willow biết rằng nếu mình không dũng cảm bước ra ngoài, bức thư sẽ không bao giờ được gửi và cậu bé sẽ buồn vô cùng. Vậy thì, cô có nên thử không? Cô có làm được không?', 104000, 48, 'https://sanhobooks.com/wp-content/uploads/2022/02/Willow_bia-truoc.jpg', false),
        (13, 'Chuyện Con Mèo Dạy Hải Âu Bay(Tái bản)', 'Sách thiếu nhi', '2019-06-01', 'Cô hải âu Kengah bị nhấn chìm trong váng dầu – thứ chất thải nguy hiểm mà những con người xấu xa bí mật đổ ra đại dương. Với nỗ lực đầy tuyệt vọng, cô bay vào bến cảng Hamburg và rơi xuống ban công của con mèo mun, to đùng, mập ú Zorba. Trong phút cuối cuộc đời, cô sinh ra một quả trứng và con mèo mun hứa với cô sẽ thực hiện ba lời hứa chừng như không tưởng với loài mèo: Không ăn quả trứng. Chăm sóc cho tới khi nó nở. Dạy cho con hải âu bay. Lời hứa của một con mèo cũng là trách nhiệm của toàn bộ mèo trên bến cảng, bởi vậy bè bạn của Zorba bao gồm ngài mèo Đại Tá đầy uy tín, mèo Secretario nhanh nhảu, mèo Einstein uyên bác, mèo Bốn Biển đầy kinh nghiệm đã chung sức giúp nó hoàn thành trách nhiệm. Tuy nhiên, việc chăm sóc, dạy dỗ một con hải âu đâu phải chuyện đùa, sẽ có hàng trăm rắc rối nảy sinh và cần có những kế hoạch đầy linh hoạt được bàn bạc kỹ càng…', 32800, 50, 'https://static.8cache.com/cover/o/eJzLyTDW181ONTKN9_M3sLCM1A8zyA7IiiwwzjHz1HeEAn_DSP30VGePzKzkKmPDSMdC9yQ_k4xs54gUo4iKEI8Si0ATb0dn53z9YgMAwWkYJg==/chuyen-con-meo-day-hai-au-bay.jpg', false),
        (14, 'Sách - Complete English - Chinh phục tiếng Anh giao tiếp toàn diện + Tặng kèm App học thông minh trọn đời', ' Sách tiếng anh', '2021-08-23', ' TẠI SAO COMBO SÁCH COMPLETE ENGLISH KÈM APP HỌC THÔNG MINH HIỆU QUẢ? Phương pháp học độc đáo hàng đầu thế giới được nhiều người áp dụng.“Complete English” sử dụng kết hợp 3 phương pháp học ngôn ngữ nổi tiếng và hiệu quả trên thế giới, tạo ra một môi trường học ngôn ngữ thú vị qua việc luyện tập chuyên sâu các kỹ năng Nghe – Nói (học qua AUDIOLINGUAL), Quan sát và tư duy (học qua PICTOLOGICS và MIND-MAP) từ đó mang lại hiệu quả cao nhất, ghi nhớ lâu nhất cho người học.', 490000, 0, 'https://salt.tikicdn.com/cache/w1200/ts/product/93/25/22/b966d89c73bd6b4e5c36a2cef383628d.png', false),
        (15, 'Đứa Trẻ Hư (Tái Bản)', ' Sách trinh thám - Sách kinh dị', '2019-07-01', ' Chu Triều Dương, cậu học sinh có thành tích học tập xuất sắc nhất toàn trường cấp 2. Phổ Phổ và Đinh Hạo bỏ trốn khỏi cô nhi viện và đến tìm cậu để ở nhờ.Ba đửa trẻ tình cờ quay được đoan video Trương Đống Thăng giết bố mẹ vợ anh ta và tiến hành tống tién. Chu Triều Dương vô tình ngộ sát đứa em gái cùng cha khác mẹ, lúc đó chí éo Phổ Phổ và Đinh Hạo chứng kiến. Bà mẹ kế nghi ngờ cậu chính là hung thủ nên dã tìm mọi cách trả thù cậu. Cảnh sát hoàn toàn không nghi ngờ gì Chu Triều Dương nhưng vẫn luôn tìm kiếm tung tích của kẻ giết chết Chu Tinh Tinh và đã dần điêu tra được một số manh mối.', 150500, 1, 'https://cdn0.fahasa.com/media/flashmagazine/images/page_images/dua_tre_hu/2021_04_20_15_14_48_1-390x510.jpg', false),
        (81, 'Muôn Kiếp Nhân Sinh (Khổ Nhỏ)', 'Sách tâm lý', '2023-04-24', '“Muôn kiếp nhân sinh” mang lại cho bạn đọc kho kiến thức đồ sộ và mới mẻ, những câu chuyện kỳ lạ, những kiến giải uyên bác và tiên đoán bất ngờ về hiện tại và tương lai của con người và thế giới. Thông điệp quan trọng nhất của tác phẩm là nguồn gốc và cách thức vận hành của luật nhân quả và luân hồi của vũ trụ.', 98000, 10, 'https://salt.tikicdn.com/cache/750x750/ts/product/76/7a/77/69f731e145d34d55d6ba5a8feb6101c8.jpg.webp', false),
        (82, 'Càng Bình Tĩnh Càng Hạnh Phúc - Vãn Tình', 'Sách tâm lý', '2023-04-25', 'Tiếp nối thành công rực rỡ của Bạn đắt giá bao nhiêu?, Khí chất bao nhiêu hạnh phúc bấy nhiêu, Không sợ chậm chỉ sợ dừng,… Vãn Tình đã quay trở lại cùng cuốn sách Càng bình tĩnh Càng hạnh phúc. Đây là cuốn sách thứ bảy của cô được xuất bản tại Việt Nam bởi thương hiệu sách Bloom Books, đánh dấu cho hành trình trưởng thành đầy rực rỡ của Vãn Tình – từ một cô gái trẻ trung, mạnh mẽ trở nên chín chắn, điềm tĩnh và bao dung hơn với cuộc đời.', 110000, 10, 'https://salt.tikicdn.com/cache/750x750/ts/product/56/8c/d2/65367aeda327ae2b529f2e62014588c3.jpg.webp', false),
        (83, 'Cư Xử Như Đàn Bà Suy Nghĩ Như Đàn Ông', 'Sách tâm lý', '2023-04-27', 'Là chủ chương trình Buổi sáng của Steve Harvey nổi tiếng khắp nước Mỹ, Steve Harvey đã được tiếp xúc với vô số phụ nữ trong suốt nhiều năm, thông qua chuyên mục Lá thư Dâu tây mà ông phụ trách hoặc qua những chuyến lưu diễn hài kịch ở nhiều nơi. Những phụ nữ đó có thể đồng thời vừa làm chủ một doanh nghiệp, vừa chăm sóc một gia đình với ba đứa con, vừa tham gia các hoạt động xã hội khác. Nhưng điều đó cũng chưa bao giờ khiến những mối quan hệ với đàn ông trở nên dễ dàng đối với họ. Tại sao vậy? Theo Steve, đó là bởi vì họ đều tìm lời khuyên ở những phụ nữ khác, trong khi chỉ một người đàn ông mới có thể cho họ biết cách tìm thấy và giữ chân một người đàn ông đáng giá. Trong Cư xử như đàn bà, suy nghĩ như đàn ông, Steve cho phụ nữ thấy bên trong suy nghĩ của đàn ông.', 81300, 100, 'https://salt.tikicdn.com/cache/750x750/ts/product/c7/8d/5b/da78bf6702f3ad3be0799dbcbbbef1d2.jpg.webp', true),
        (84, 'Sách Ehon - Combo 3 Cuốn Âm Thanh Quanh Bé - Dành Cho Trẻ Từ 0 - 6 Tuổi', 'Sách thiếu nhi', '2023-04-28', 'Ehon là một loại sách kết hợp các yếu tố màu sắc, tranh vẽ và câu từ đơn giản với những nội dung hoặc đề tài hết sức gần gũi, dành cho các bé từ 0 đến 10 tuổi, giúp bé có thể nhận biết và học hỏi nhiều điều từ thế giới xung quanh.Dạy con bằng sách Ehon là phương pháp giáo dục sớm đến từ Nhật Bản, đã được áp dụng hàng trăm năm nay tại đất nước này để nuôi dưỡng một thế hệ người Nhật nghiêm túc, kỷ luật hàng đầu thế giới.', 100000, 10, 'https://salt.tikicdn.com/cache/750x750/ts/product/69/06/66/2c0bfd6828ec1ba523f137aaf91391fb.png.webp', false);

create table customer
(
    ID           int auto_increment
        primary key,
    USER_NAME    varchar(50)      null,
    FULL_NAME    varchar(50)      not null,
    PHONE_NUMBER varchar(11)      not null,
    EMAIL        varchar(50)      not null,
    PASSWORD     varchar(50)      not null,
    ADDRESS      varchar(100)     not null,
    AVATAR       varchar(2000)    null,
    IS_DELETED   bit default b'0' not null,
    constraint EMAIL_UNIQUE
        unique (EMAIL),
    constraint PHONE_NUMBER_UNIQUE
        unique (PHONE_NUMBER)
);

insert into book_management.customer (ID, USER_NAME, FULL_NAME, PHONE_NUMBER, EMAIL, PASSWORD, ADDRESS, AVATAR, IS_DELETED)
values  (1, 'thaidui123', 'Hoàng Thái Dúi', '0969123456', 'dui@gmail.com', '12345678', '21K Nguyễn Văn Trỗi', 'https://firebasestorage.googleapis.com/v0/b/lam-dep-trai-de1b4.appspot.com/o/107105060_p0.jpg?alt=media&token=3bf391b4-99ed-4d14-905b-142c1f664e8c', false),
        (2, 'thaidom123', 'Hoàng Thái Dơm', '0963852741', 'dom@gmail.com', '12345678', '21K Nguyễn Văn Trỗi', '', false),
        (3, 'thaihau123', 'Hoàng Thái Hậu', '0369258147', 'hau@gmail.com', '12345678', '21K Nguyễn Văn Trỗi', '', false),
        (4, 'thaigiam123', 'Hoàng Thái Giám', '0741852963', 'giam@gmail.com', '12345678', '21K Nguyễn Văn Trỗi', '', false),
        (5, 'thaiduong123', 'Hoàng Thái Dương', '0147258369', 'duong@gmail.com', '12345678', '21K Nguyễn Văn Trỗi', '', false),
        (6, 'chinhpham', 'Phạm Văn Chính', '0987654321', 'phamchinh@gmail.com', 'Chinhpham@1012', '21K Nguyễn Văn Trỗi', '', false),
        (7, null, 'Hoàng Thái Bình', '0123456789', 'binh@gmail.com', '123', '21K Nguyễn Văn Trỗi', null, false),
        (8, null, 'Hoàng Thái Lan', '0123456788', 'lan@gmail.com', '123', '21K Nguyễn Văn Trỗi', 'https://firebasestorage.googleapis.com/v0/b/lam-dep-trai-de1b4.appspot.com/o/107565620_p0.png?alt=media&token=91366e41-0eda-4279-8d82-05ab561cd787', false),
        (9, null, 'Phạm Văn Chính', '0123456780', 'chinh@gmail.com', '123', '21K Nguyễn Văn Trỗi', 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBUVFRgVFRUYFRYaGhgYGhgYGBgYGBgZGBgZGhgZGRocIS4lHB4rIRgYJjgmKy8xNTU1GiQ7QDs0Py40NTEBDAwMEA8QHxISHzQrJCs0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0MTQ0NDQ0NDQ0NDQ0NDE0NP/AABEIALgBEgMBIgACEQEDEQH/xAAcAAACAgMBAQAAAAAAAAAAAAADBAUGAAECBwj/xAA4EAACAQMCBAUDAgQFBQEAAAABAgADBBEhMQUSQVEGEyJhcTKBkaGxB0LB0SNScvDxFBZigpIV/8QAGQEAAwEBAQAAAAAAAAAAAAAAAAECAwQF/8QAJBEAAgICAgIBBQEAAAAAAAAAAAECEQMSITFBURMEImGRoTL/2gAMAwEAAhEDEQA/AKWKw0nT4IMiDXmG77Th1kzGglzRzI/ycHWOpdaaxK6uMnSaxUuikPW9NSNRiF8wLIunXYDWb83Jj1YUTlOvmaqcpgLTaL3L66TFJ7COntQdRrA1aRG0aoHOokpwrhbXDhAcZ1ZiNFUbt+8rdplRtukVkabzbt2nstlwGlTTkSnTwQAzOiu74/zlhgD2XGJ55414CttUVqY5aVQEhc5COD6kBPTqPaVDJGTpG+TBKCtlZprkyRS20gbajrJFVxHJ+jBsiq9AgwaJJCs47RSs2I4tvgDZTGIZKukjmrGESrG4hQd6uDGEvz9ooaBMGKJETjFoCTNXmkZdmELkRWtkwhGmCBrGqWsUEJScgzWSsbHqttpI11wY693kRKo2ZOPbyEQtIiSNtcleshwYzQaE42JonkvIVLkGQ6tGadQdpg4IkaqnrAvggzTPM5MjWRVDIysuuk2hMJdKBtF0edC5iMYye0ya5h3mRUAcJmBuKBEHTqFTvGGuAYuUxCRRoMIc6yS51xF6hGZakwTOai6RdG1jyMCICtS7Qi/DG', false);

create table staff
(
    ID           int auto_increment
        primary key,
    USER_NAME    varchar(50)      null,
    FULL_NAME    varchar(50)      not null,
    PHONE_NUMBER varchar(11)      not null,
    EMAIL        varchar(50)      not null,
    PASSWORD     varchar(50)      not null,
    ADDRESS      varchar(100)     not null,
    AVATAR       varchar(2000)    null,
    IS_DELETED   bit default b'0' not null,
    constraint EMAIL_UNIQUE
        unique (EMAIL),
    constraint PHONE_NUMBER_UNIQUE
        unique (PHONE_NUMBER)
);

insert into book_management.staff (ID, USER_NAME, FULL_NAME, PHONE_NUMBER, EMAIL, PASSWORD, ADDRESS, AVATAR, IS_DELETED)
values  (1, 'tuyenlam123', 'Vòng Tuyền Lâm', '0977036574', 'lam@gmail.com', '12345678', '21K Nguyễn Văn Trỗi', 'https://firebasestorage.googleapis.com/v0/b/lam-dep-trai-de1b4.appspot.com/o/107570506_p0.jpg?alt=media&token=8949a673-bcc9-433a-a13b-f2af2a93c24a', false),
        (2, 'vanhuong123', 'Đoàn Văn Hưởng', '0987412563', 'huong@gmail.com', '12345678', '21K Nguyễn Văn Trỗi', null, false),
        (3, 'tuyenlam321', 'Vòng Tuyền Lâm', '0987654321', 'tuyenlam@gmail.com', 'Tuyenlam@1012', '21K Nguyễn Văn Trỗi', null, false);