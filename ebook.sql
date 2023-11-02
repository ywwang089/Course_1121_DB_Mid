--------------------------------------------------------
--  已建立檔案 - 星期二-三月-21-2023   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence CART_TNO_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "GROUP19"."CART_TNO_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 9 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence MEMBER_MID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "GROUP19"."MEMBER_MID_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 5 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence ORDER_OID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "GROUP19"."ORDER_OID_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 9 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Table CART
--------------------------------------------------------

  CREATE TABLE "GROUP19"."CART" 
   (	"MID" VARCHAR2(26 BYTE), 
	"CARTTIME" VARCHAR2(26 BYTE), 
	"TNO" VARCHAR2(26 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table MEMBER
--------------------------------------------------------

  CREATE TABLE "GROUP19"."MEMBER" 
   (	"MID" VARCHAR2(38 BYTE), 
	"NAME" VARCHAR2(128 BYTE), 
	"ACCOUNT" VARCHAR2(128 BYTE), 
	"PASSWORD" VARCHAR2(128 BYTE), 
	"IDENTITY" VARCHAR2(128 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ORDER_LIST
--------------------------------------------------------

  CREATE TABLE "GROUP19"."ORDER_LIST" 
   (	"OID" NUMBER(38,0), 
	"MID" NUMBER(38,0), 
	"ORDERTIME" DATE, 
	"PRICE" NUMBER(38,0), 
	"TNO" NUMBER(38,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PRODUCT
--------------------------------------------------------

  CREATE TABLE "GROUP19"."PRODUCT" 
   (	"PID" VARCHAR2(26 BYTE), 
	"PNAME" VARCHAR2(128 BYTE), 
	"PRICE" NUMBER(38,0), 
	"CATEGORY" VARCHAR2(128 BYTE), 
	"PDESC" NVARCHAR2(1024)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table RECORD
--------------------------------------------------------

  CREATE TABLE "GROUP19"."RECORD" 
   (	"TNO" NUMBER(38,0), 
	"PID" VARCHAR2(26 BYTE), 
	"AMOUNT" NUMBER(38,0), 
	"SALEPRICE" NUMBER(38,0), 
	"TOTAL" NUMBER(38,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into GROUP19.CART
SET DEFINE OFF;
REM INSERTING into GROUP19.MEMBER
SET DEFINE OFF;
Insert into GROUP19.MEMBER (MID,NAME,ACCOUNT,PASSWORD,IDENTITY) values ('1','王大明','mingwang','test','user');
Insert into GROUP19.MEMBER (MID,NAME,ACCOUNT,PASSWORD,IDENTITY) values ('2','孫小美','may','test','user');
Insert into GROUP19.MEMBER (MID,NAME,ACCOUNT,PASSWORD,IDENTITY) values ('3','林大偉','weiLin','test','user');
Insert into GROUP19.MEMBER (MID,NAME,ACCOUNT,PASSWORD,IDENTITY) values ('4','陳美環','maychang','test','user');
REM INSERTING into GROUP19.ORDER_LIST
SET DEFINE OFF;
Insert into GROUP19.ORDER_LIST (OID,MID,ORDERTIME,PRICE,TNO) values (1,4,to_date('04-7月 -21','DD-MON-RR'),4350,1);
Insert into GROUP19.ORDER_LIST (OID,MID,ORDERTIME,PRICE,TNO) values (2,1,to_date('26-4月 -21','DD-MON-RR'),1500,2);
Insert into GROUP19.ORDER_LIST (OID,MID,ORDERTIME,PRICE,TNO) values (3,2,to_date('18-8月 -21','DD-MON-RR'),1300,3);
Insert into GROUP19.ORDER_LIST (OID,MID,ORDERTIME,PRICE,TNO) values (4,3,to_date('31-5月 -21','DD-MON-RR'),800,4);
Insert into GROUP19.ORDER_LIST (OID,MID,ORDERTIME,PRICE,TNO) values (5,2,to_date('09-12月-21','DD-MON-RR'),700,5);
Insert into GROUP19.ORDER_LIST (OID,MID,ORDERTIME,PRICE,TNO) values (6,2,to_date('05-9月 -21','DD-MON-RR'),1100,6);
Insert into GROUP19.ORDER_LIST (OID,MID,ORDERTIME,PRICE,TNO) values (7,2,to_date('16-7月 -21','DD-MON-RR'),1200,7);
Insert into GROUP19.ORDER_LIST (OID,MID,ORDERTIME,PRICE,TNO) values (8,4,to_date('27-2月 -21','DD-MON-RR'),100,8);
REM INSERTING into GROUP19.PRODUCT
SET DEFINE OFF;
Insert into GROUP19.PRODUCT (PID,PNAME,PRICE,CATEGORY,PDESC) values ('u58046','商品1234',888,'BOOK','胡錦濤曾講過，對外開放的國策不能變。但中國人也要避免在未來的中國經濟中成為跑龍套的。要做到這一點，就需要國人支持本土企業，提高自主發展能力。韓國人“”這句話很好嘛，這種精神值得中國人學習。這段話讓我所有的疑惑頓時豁然開朗。每個人的一生中，幾乎可說碰到商品123這件事，是必然會發生的。如果此時我們選擇忽略商品123，那後果可想而知。\n 我想，把商品123的意義想清楚，對各位來說並不是一件壞事。丁尼生講過，科學的進展是十分緩慢的，需要爬行才能從一點到達另一點。這段話非常有意思。商品123因何而發生？世界需要改革，需要對商品123有新的認知。我們都有個共識，若問題很困難，那就勢必不好解決。商品123勢必能夠左右未來。比豐曾說過，天才不是別的，而是辛勞和勤奮。這段話讓我所有的疑惑頓時豁然開朗。每個人都不得不面對這些問題。在面對這種問題時，務必詳細考慮商品123的各種可能。說到商品123，你會想到什麼呢？');
Insert into GROUP19.PRODUCT (PID,PNAME,PRICE,CATEGORY,PDESC) values ('v00111','英雄',400,'DVD','● 《神話》和《英雄》是英國喜劇大師、有聲書領域的大師人物“油炸叔”斯蒂芬·弗萊為成人重新講述的希臘神話。在這套書中，斯蒂芬·弗萊以作為演員和作家的雙重身份，重新梳理了希臘神話的脈絡，並用戲劇線索將它們串聯起來，徹底摒除了希臘神話的生硬感和學術感，為希臘神話賦予了更加豐富的情節、更加鮮明的個性和具有吸引力的電影質感。\n ● 如果說《神話》是由希臘眾神組成的一個“復仇者聯盟”，那《英雄》就是為希臘神話中的英雄單獨拍攝的獨立英雄電影。在本書中，我們可以跟隨弗萊的講述看到：\n 唯yi得到了善終的英雄珀爾修斯怎樣斬獲美杜莎的頭顱；\n 一心當鹹魚的赫拉克勒斯如何在赫拉的詛咒下走上英雄之路；\n 歷盡艱辛取得金羊毛的伊阿宋，成也女人，敗也女人；\n 受到伊阿宋被判的美狄亞，親自殺死自己的孩子和伊阿宋的新歡；\n 這些戲劇性的、有趣的、悲劇性的和永恆的故事都可以在本書中看到。可以說，希臘神話是一個巨大的寶庫，而斯蒂芬·弗萊就是一位幽默的寶庫引路人，帶領我們去看它究竟有多迷人、多有趣。');
Insert into GROUP19.PRODUCT (PID,PNAME,PRICE,CATEGORY,PDESC) values ('d11222','任賢齊專輯三',300,'CD','1990年由新格唱片出版的「再問一次」，是任賢齊歌唱生涯的首張個人專輯，雖然質樸生澀，卻是青春時期夢想揚帆的起點。由於任賢齊大一就開始組Band，20歲時更展開校園DJ的生涯，製作人因此針對他陽光明亮、活潑隨和而又熱愛音樂的特質，挑選了不少輕快甚至富有節奏感的歌曲，像是〈就讓一切自由〉、〈奔向午後〉、〈年輕的心〉以及重搖滾曲風的〈我想預約所有的愛〉均屬這類型的歌曲。青澀的校園歲月，除了編織的夢想與兄弟的情誼外，愛情更在年輕生命中占有重要的一席之地，主打歌〈再問一次〉以及〈別再回頭〉、〈走一段想妳的路〉和〈妳的心我知道〉，在在都展現了小齊彼時單純而又直覺的愛情觀與憧憬。');
Insert into GROUP19.PRODUCT (PID,PNAME,PRICE,CATEGORY,PDESC) values ('b20666','OLAP進階',500,'BOOK','帶著這些問題，我們一起來審視OLAP進階。拉伯雷相信，在病人即將痊癒時，請來的醫生是幸運的。這啟發了我。愛因斯坦曾經提到過，科學研究基於同一法則，即一切事物的產生取決於自然規律，這也適用於人們的行動。這句話令我不禁感慨問題的迫切性。透過逆向歸納，得以用最佳的策略去分析OLAP進階。現在，正視OLAP進階的問題，是非常非常重要的。因為，王安石相信，不畏浮雲遮望眼，只緣身在最高層。這段話讓我的心境提高了一個層次。總而言之，而這些並不是完全重要，更加重要的問題是，鬱達夫說過，人類的所以能進步，國家的所以能富強，社會的所以能安定，根本就都在於政治。這句話讓我們得到了一個全新的觀點去思考這個問題。一般來講，我們都必須務必慎重的考慮考慮。');
Insert into GROUP19.PRODUCT (PID,PNAME,PRICE,CATEGORY,PDESC) values ('b10234','管理資訊系統概論',600,'BOOK','人工智慧、物聯網、大數據、金融科技、區塊鏈等等IT的新科技在2017年以後逐漸由實驗室走出，進入了商業市場的實戰階段。AI的自駕車、智慧助理、聊天機器人、工業機器人、AI醫療、AI金融、AI安防、AI法律鋪天蓋地地攻擊了傳統產業，許多專家預測10年之內可能人類有50%的工作將被AI所取代。當然AI如果再搭配物聯網、大數據、雲端及5G以後更是如虎添翼、翻天覆地、銳不可擋。MIS人員如何及早地預防、準備，或是如何善加利用這些武器當然是一個非常重要的議題。\n 而在產業經濟體系方面，2018年全球市值最高的前七大公司包括蘋果、谷歌、微軟、亞馬遜、臉書、騰訊與阿里巴巴，一律都是平台型的經營模式，本身沒有主導產品的製造與販售，只是提供一個大家共存共榮的平台。這種網路經濟體系下，特有的、非常成功的經營模式，未來將會是企業主流的經營模式。平台經濟體系下的遊戲規則、競爭策略、組織結構、資源系統、收益模式，都與傳統的企業有非常大的不同，對於這種未來主流的經營模式，MIS人員當然應該深入的去瞭解。因此本版的改版重點包括：全新撰寫三個章節，(1)人工智慧的技術、應用與衝擊，(2)平台經濟體系，(3)平台經營模式與競爭策略。此外也加寫了物聯網、金融科技、區塊鏈、5G、智慧行銷、新零售及網紅經濟等最新的內容，希望能在最近極為快速變動的科技環境下，提供MIS同好一本可以跟上時代的教科書。');
Insert into GROUP19.PRODUCT (PID,PNAME,PRICE,CATEGORY,PDESC) values ('b40555','系統分析理論與實務',550,'BOOK','本書明白揭示結合MDA與UML的物件導向分析與設計，擴充系統之動態行為與靜態結構塑模方法論，以強化物件導向系統分析與設計之實用性與易用性。此外，擴充MDA之轉換方法論及其與CASE工具之整合，以強化系統開發之自動化。內容編排共分四個部分：\n 首先介紹系統開發模式（例如瀑布、雛型、RUP、動態系統開發、Scrum與MDA等模式），以及模組化系統理論、物件導向技術、物件導向系統與實作，包括物件導向的基本概念（例如物件、類別、抽象化、封裝、繼承與同名異式等）、系統分析與設計塑模工具（如UML）與觀點。\n 接著開始介紹系統開發之需求分析與塑模步驟，包括介紹需求擷取方式、塑模工具與方法論、強韌分析，及其產出文件（模式）等。\n 再介紹物件導向系統分析與設計步驟，包括物件互動行為塑模、結構塑模、類別正規化等活動、塑模工具與方法論，及其產出模式等。\n 最後介紹結合MDA與UML，從系統分析、系統設計至程式模式的轉換步驟與方法論、系統元件與結構塑模工具與方法論，及其產出模式等。');
Insert into GROUP19.PRODUCT (PID,PNAME,PRICE,CATEGORY,PDESC) values ('N41023','test',400,'DVD','這樣看來，馬辛傑告訴我們，要明智些，揚之過高易落，屈尊方能求榮。這似乎解答了我的疑惑。若到今天結束時我們都還無法釐清測試的意義，那想必我們昨天也無法釐清。克拉肖曾說過一句意義深遠的話，雷霆是上帝的大砲。這似乎解答了我的疑惑。問題的核心究竟是什麼？從這個角度來看，對於一般人來說，測試究竟象徵著什麼呢？就我個人來說，測試對我的意義，不能不說非常重大。其實，若思緒夠清晰，那麼測試也就不那麼複雜了。左傳曾說過，吉凶由人。這句話看似簡單，但其中的陰鬱不禁讓人深思。阿拉伯曾經說過，有四樣東西一去不復返：出口之言，射出之箭，過去的時間，錯過的機會。這段話的餘韻不斷在我腦海中迴盪著。培根曾經認為，在一切大事業上，人在開始做事前要像千眼神那樣察看時機，而在進行時要像千手神那樣抓住時機。這是撼動人心的。儘管測試看似不顯眼，卻佔據了我的腦海。在這種不可避免的衝突下，我們必須解決這個問題。我們需要淘汰舊有的觀念，對我個人而言，測試不僅僅是一個重大的事件，還可能會改變我的人生。一般來講，我們都必須務必慎重的考慮考慮。若無法徹底理解測試，恐怕會是人類的一大遺憾。這必定是個前衛大膽的想法。');
Insert into GROUP19.PRODUCT (PID,PNAME,PRICE,CATEGORY,PDESC) values ('n02345','醫療資訊管理',600,'BOOK','本書第三版在電子化醫療創新、大數據與智慧醫療、電子化醫療行銷領域不但有創新的見解，更有企業實踐的經典個案實證，期由理論與實務結合，使讀者可以更深入瞭解本書論述的創新觀念及時代趨勢。內容編排從資訊科技如何促進企業創新與價值創造之觀點出發，共分四個部分： 先介紹商業模式與創新型態、企業價值組態（包括價值鏈、價值商店、價值網路與價值共創生態系）、核心流程與所需之資訊科技、電子化醫療的演進，並進一步介紹如何將資訊科技與商業模式結合，以促成電子化醫療創新，進而創造價值。 接著介紹電子化醫療所需之資訊科技基礎設施與應用，包括「互聯網＋」之架構與概念，相關之硬體、網路與通訊技術、裝置、軟體與資訊安全、資訊倫理與隱私、電子病歷等。 再介紹電子化醫療照護的流程與核心科技，包括醫療平台與社群、醫療作業與資訊系統、大數據與智慧醫療。 最後介紹醫療機構經營管理與加值系統，包括資訊科技如何提升醫院資源規劃、電子化行銷與客戶關係管理等。 文中特別針對上述議題製作十多個醫療相關個案，以淺顯的方式闡明其內涵與觀念，希望使沒有深厚技術背景的讀者亦能瞭解現代醫療管理者應具備的資訊科技與管理知識，以及資訊科技如何促進醫療創新與價值創造。');
Insert into GROUP19.PRODUCT (PID,PNAME,PRICE,CATEGORY,PDESC) values ('A12333','資訊安全概論',500,'BOOK','本書主要探討基礎電腦作業系統、網路傳輸方式、網路倫理及資訊安全對於企業的重要性及應對方式，並從電腦技術的過去、現在與未來面向，深入了解網路的發展歷史、傳輸技術、虛擬化技術等多元內容。 本書特色 一、對於資訊安全的介紹不僅包含技術層面，更納入非技術層面之威脅（如社交工程等）內容，讓讀者深刻體會資訊安全的重要性。 二、考量企業內部流程，將資訊安全的技術結合至企業實務，並大量援用最新的資訊個案，讓讀者了解資安管理在全球各領域企業的實際應用。 三、提供自我檢測的方法，讓讀者自行檢測周遭設備的資訊安全。 四、引用資訊安全領域知名企業相關數據，幫助讀者了解資安的未來趨勢及威脅的防範措施。');
Insert into GROUP19.PRODUCT (PID,PNAME,PRICE,CATEGORY,PDESC) values ('A12344','圖解資訊系統安全',400,'BOOK','• 國內外知名網站遭到駭客入侵的消息時有所聞，駭客如何進行攻擊?系統又該如何與駭客對抗? 這些都需要有基本的認識，才能保護資訊系統安全性。 • 全書內容將資訊系統常見的弱點進行介紹，透過精心設計的圖解，搭配深入淺出的說明方式，不僅可了解駭客攻擊手法，也能從中學習正確的防禦手法，避免開發實作上常犯的疏失。 • 資訊系統安全的重要性不言而喻，並不是系統開發人員才需要學習的知識，只要是資訊系統使用者，都需具備一定的資訊安全常識，才能避免產生不良的操作行為。本書作者將長年的實務經驗進行分享，目的是讓讀者對資訊系統的安全控制措施有所認識，了解其背後原理及實作，減少資安事件發生的機會。');
Insert into GROUP19.PRODUCT (PID,PNAME,PRICE,CATEGORY,PDESC) values ('V10889','哈利波特：消失的密室',400,'BOOK','這個夏天結束前，哈利本來應該能夠順利重返霍格華茲。但人算不如天算，家庭小精靈多比突然造訪，警告他若是回到學校，將面臨生命危險！為了讓哈利徹底「斷念」，多比不但攔截了所有朋友們寄來的信，還用魔法陷害他，害他慘遭禁足。 但哈利始終很清楚，自己渴望回到霍格華茲。他想念那座藏著秘密通道和幽靈的城堡，想念他的魔法課程、由貓頭鷹送達的郵件，以及馳騁天際的魁地奇。彷彿聽到了他內心的呼喚，好友榮恩駕著飛天車，硬是把他從姨丈家給救了出來。 升上二年級的哈利，因為擊退佛地魔的英勇事蹟，成為全校的風雲人物，嚮往已久的校園生活，似乎有了極佳的開端。但危機卻也在此時悄然而至，先是無人的走廊出現了詭異的耳語聲，接著竟發生一連串襲擊事件。 管理員飛七的貓、崇拜哈利的一年級學弟……遭到「石化」的被害者陸續增加。難道，多比的警告成真了嗎？犯罪現場留下的不祥訊息「密室」又代表著什麼意義？一個埋藏了五十年的可怕秘密，正一步步引領哈利走向險境……');
Insert into GROUP19.PRODUCT (PID,PNAME,PRICE,CATEGORY,PDESC) values ('V10890','哈利波特：死神的禮物',650,'BOOK','每一次回到水蠟樹街，哈利波特都迫不及待想早點離開，但今年的他並不孤單，與他一同撤離的不只德思禮全家，還有其他「六個哈利」。為了防範佛地魔襲擊，鳳凰會的巫師們用變身水偽裝成哈利，兵分七路掩護他逃往衛斯理家的洞穴屋。 雖然不幸失去了鄧不利多，但哈利並非毫無反擊黑暗勢力的機會，從鄧不利多留下的遺物中，哈利與夥伴們推敲出「死神聖物」的線索。這是三件極為強大的魔法道具，相傳只要集齊聖物就能夠主宰死亡，而這也將是擊敗佛地魔的重要關鍵。 哈利的機會有限，黑魔王的野心卻不曾止息，如今的佛地魔不僅主宰了整個魔法部，霍格華茲更已危在旦夕。為了守護自己深愛的一切，哈利必須吹起決戰的號角，挺身迎戰佛地魔。儘管母親施加的保護咒已然失效，儘管信任的盟友們接連背叛，儘管這將意味著，他可能必須犧牲自己的生命……');
Insert into GROUP19.PRODUCT (PID,PNAME,PRICE,CATEGORY,PDESC) values ('V10891','哈利波特：阿茲卡班的逃犯',400,'BOOK','瑪姬姑姑又要來了！這個名字一出現在德思禮家，就代表著哈利為期一週的惡夢。小時候玩大風吹，她會用手杖猛敲哈利的腳，免得他贏過達力，有一年他不小心踩到了瑪姬養的牛頭犬，只能在樹上躲到三更半夜。瑪姬姑姑跟德思禮家所有人一樣，都以貶低他為樂，直到她侮辱了哈利的父母，被他用魔法變成大氣球…… 在麻瓜的世界裡擅自使用魔法是重罪，哈利擔心自己一時的衝動，會害他永遠回不了霍格華茲，但對整個魔法世界來說，有遠比瑪姬姑姑更嚴重的事。天狼星．布萊克逃離了阿茲卡班監獄！十三年前，他只下了一個詛咒，就殺死了十三個人，如今這個佛地魔追隨者的頭號目標，正是——哈利波特！ 好不容易回到霍格華茲，升上三年級的哈利卻發現，恐怖的「催狂魔」已經悄悄進駐校園。這是魔法部為了追捕天狼星所放出的邪惡生物，牠們喜愛腐敗和絕望，會將人們心中的一切的美好全都吸食殆盡。牠們的到來，讓原本就已危機四伏的校園生活，變得更加令人毛骨悚然。而就在此時，占卜學的崔老妮教授，竟在哈利的茶杯中看到了「死亡」的預兆……');
Insert into GROUP19.PRODUCT (PID,PNAME,PRICE,CATEGORY,PDESC) values ('b30771','五月天專輯：第二人生',400,'CD','「亞洲天團」五月天暌違三年，即將於12/16正式發行「作品八號」，雖然歌迷引頸期盼焦急難待，五月天仍然堅持對新專輯名稱保密到家，今日舉辦全亞洲發片記者會，在記者會上，五月天終於公佈新專輯「作品八號」的正式名稱-《第二人生》。主唱阿信說明: 「雖然整張專輯的背景是世界末日，但核心傳達的是，如果最後末日沒有到來，你就有機會選擇你的《第二人生》!」比起一般單純以絕望角度詮釋世界末日的作品，五月天再度展現五月天式的不同世界觀。2012年，新專輯《第二人生》選擇將觸角放寬、向外在世界出發，從個體走向群體，思考起更恢宏難解的巨大命題，由外至內地對所有聽眾拋出了大哉問。「上一張作品七號《後青春期的詩》將我們人生現階段想要談述的主題都說完了，五月天等待三年醞釀下個要傳達的訊息。」阿信說道。「如果2012年瑪雅末世預言逐漸成真，在這看似最後倒數的生命關頭，我們該要如何面對我們各自的人生？這點逐漸蘊釀成新專輯的思考核心。」五月天認真的表示，「五月天本來是不相信末世論，但從汶川大地震開始，這幾年來各式天災人禍接連不斷發生。一直到311日本東北大地震時，親眼在電視上看見海嘯翻捲，甚至引發核電廠爆炸，輻射外洩，這才驚覺，『末日』其實與我們生活的『平日』只有一線之隔，終於確定要採用末日作為新專輯的主題。」而這張專輯於今年四月日本海嘯後一個月依預定錄音是形成於輻射威脅下的東京開錄，在限電、缺水、家人反對等多重壓力下，《第二人生》似乎命中注定要逼著五月天突破過往看世界看人生觀點!吉他手石頭表示，雖然家人、公司同事會擔心，但是他們仍對排定的工作義無返顧，「盡力做好我們本來就應該做好的事情，就像如果明天真的是世界末日，今天該上的通告我們還是會認真上。」雖然專輯主軸概念看似嚴肅龐大，五月天也不忘搞笑：「希望不會有歌迷因為專輯名稱不是《諾亞八寶粥》而把預購的專輯退貨。」');
Insert into GROUP19.PRODUCT (PID,PNAME,PRICE,CATEGORY,PDESC) values ('b30772','五月天專輯：知足',450,'CD','五月天6首新歌加6年精華傑作即將強勢襲台 首波主打【戀愛ing】MV搶到墾丁難得陽光 決定該是時候讓大家靜下來，好好檢查自己一眨眼的六年與復出後毫無喘息空間的兩年，要為自己與歌迷作一次總整理，找到五個人下一個五年新的出發點。讓一切歸零，重新找回與音樂戀愛的心情，要回歸第一張專輯發行的夏天發片。');
Insert into GROUP19.PRODUCT (PID,PNAME,PRICE,CATEGORY,PDESC) values ('d03333','5566專輯',450,'CD','狂賀！發片首日即登各大排行榜冠軍！亞洲天團5566首張精選作品，冠軍氣勢，所向披靡！\n 慶功紀念版限量發行，超值加贈：\n ●2首新歌（C’est si bon+It’s Our Party Time)及12首精選完整MV\n ●5566歷年冠軍專輯封面圖鑑海報（贈品內附在CD包裝內）\n 汗水、淚水、體力、耐力，成就九百八十二天的輝煌冠軍紀錄。亞洲天團5566 首張超值精選經典作品，3首新歌+12首精選。力與美、抒情與動感、快樂與憂傷全部收藏。感謝你們一路相伴5566放每位歌迷在心裡最重要的地方。');
Insert into GROUP19.PRODUCT (PID,PNAME,PRICE,CATEGORY,PDESC) values ('b30773','五月天專輯：人生無限公司',650,'CD','[ 人生無限公司 ] Life Live 全球巡演55城市122場， 本碟完整收錄巡演音樂全紀實。 3CD 36首歌，除了 [ 完整收錄篇 ] 的演唱會曲目外，更有各地分公司群星主管，齊來出差跨刀的 [ 好友加班篇 ]。 蕭敬騰. 田馥甄. 蔡依林. 陳綺貞. 李榮浩. 羅志祥. 張國璽. 吳宗憲. 歐陽靖. GLAY TERU. 十位巨星與420萬位社員熱情合唱。 這些滿載紀念價值的作品，收錄在 Life Live 裡，成為無限人生裡，最動人的自傳篇章。');
Insert into GROUP19.PRODUCT (PID,PNAME,PRICE,CATEGORY,PDESC) values ('b20776','蔡依林專輯：呸Play',600,'CD','首張同時登上美國《時代雜誌》官網、加拿大《CMB》音樂雜誌、西班牙《GQ》雜誌網站 澳洲 巴西 法國 荷蘭, 克羅埃西亞等國際傳媒推薦介紹 2014全球音樂話題討論度最高華語年度流行熱門專輯! 絕世好呸 話題不墜 國際級豪華旗艦版 CD+DVD 超值收錄籌備8個月耗資5千萬[玩劇女伶]全主打9支MV音樂錄影帶DVD+ 穿越古今橫跨中西50組百變造型 [2015玩美人生寫真週曆]');
Insert into GROUP19.PRODUCT (PID,PNAME,PRICE,CATEGORY,PDESC) values ('b20778','蔡依林專輯：花蝴蝶',450,'CD','史上最豪華平裝專輯，CD+DVD誠意巨獻 金曲台前幕後得主 三頭六臂聯手打造 一年ㄧ張全力付出  10首新/型音樂品種 以花蝴蝶JOLIN為創作謬思  華語最Hit創/製作人大集合   創意繽紛花開泉湧！ ★誠意巨獻Bonus DVD 『DANCE with JOLIN』 JOLIN遠赴美國東西兩岸進行魔鬼特訓，二大最HIT名師Jonte、Bobby Newberry親自教學，激盪耀眼火花，完整舞蹈版MV首次絕密珍藏！');
Insert into GROUP19.PRODUCT (PID,PNAME,PRICE,CATEGORY,PDESC) values ('F95191','啦啦啦',100,'DVD','讓一首又一首超有創意的兒歌，陪伴孩子在音樂中學習，於遊戲中成長。\n 手部的動作與大腦的發育有著重要的聯繫，當大腦得到豐富的鍛鍊，孩子自然會聰明、機靈，科學實驗顯示，手指的活動對孩子語言、視覺、聽覺、觸覺的發展都有很大的助益。\n 此外，透過反覆遊戲的練習，孩子會漸漸懂得「等待」與「掌握時機」，而每首手指謠的歌詞與動作都有密切配合，孩子會在念唱中激發出想像力與創造力。當父母和孩子一同念唱手指謠時，透過語言、眼神與肢體的接觸，還能培養出絕佳的親子默契。');
Insert into GROUP19.PRODUCT (PID,PNAME,PRICE,CATEGORY,PDESC) values ('W42957','真愛一生',300,'BOOK','每個婚姻都需要經營與餵養。對於夫妻而言，將時間及精力投資於此，是最有價值的。有上百萬人能夠證明，沒有甚麼比建立婚姻更能應用神話語的原則。\n 本書是今日最佳的婚姻宣言，其中以聖經為基礎的觀點，是每一位已訂婚、或已進入婚姻的男女最佳的選擇，它能強化每一對夫妻之間的關係。從本書中尋找智慧，它能使你在婚姻中獲致持續的成功。');
Insert into GROUP19.PRODUCT (PID,PNAME,PRICE,CATEGORY,PDESC) values ('A13863','MIS',800,'BOOK','人工智慧、物聯網、大數據、金融科技、區塊鏈等等IT的新科技在2017年以後逐漸由實驗室走出，進入了商業市場的實戰階段。AI的自駕車、智慧助理、聊天機器人、工業機器人、AI醫療、AI金融、AI安防、AI法律鋪天蓋地地攻擊了傳統產業，許多專家預測10年之內可能人類有50%的工作將被AI所取代。當然AI如果再搭配物聯網、大數據、雲端及5G以後更是如虎添翼、翻天覆地、銳不可擋。MIS人員如何及早地預防、準備，或是如何善加利用這些武器當然是一個非常重要的議題。\n 而在產業經濟體系方面，2018年全球市值最高的前七大公司包括蘋果、谷歌、微軟、亞馬遜、臉書、騰訊與阿里巴巴，一律都是平台型的經營模式，本身沒有主導產品的製造與販售，只是提供一個大家共存共榮的平台。這種網路經濟體系下，特有的、非常成功的經營模式，未來將會是企業主流的經營模式。平台經濟體系下的遊戲規則、競爭策略、組織結構、資源系統、收益模式，都與傳統的企業有非常大的不同，對於這種未來主流的經營模式，MIS人員當然應該深入的去瞭解。因此本版的改版重點包括：全新撰寫三個章節，(1)人工智慧的技術、應用與衝擊，(2)平台經濟體系，(3)平台經營模式與競爭策略。此外也加寫了物聯網、金融科技、區塊鏈、5G、智慧行銷、新零售及網紅經濟等最新的內容，希望能在最近極為快速變動的科技環境下，提供MIS同好一本可以跟上時代的教科書。');
Insert into GROUP19.PRODUCT (PID,PNAME,PRICE,CATEGORY,PDESC) values ('v10888','哈利波特：混血王子的背叛',500,'CD','如果要讓哈利波特選出自己在霍格華茲中最討厭的一門課，「魔藥學」絕對名列前茅。拋開長年以來與石內卜教授的恩怨情仇，他的成績也始終在及格邊緣掙扎。所以就算升上了六年級，換了新的魔藥學教授，哈利也不期待自己能獲得多大進步。直到他偶然得到一份筆記，竟奇蹟地扭轉一切！透過更高效的魔藥製作方法、課本沒教的神奇咒語，這份署名「混血王子」的筆記不但讓他的表現超越妙麗，更讓他對魔藥學有了全新的認識。\n 儘管如此，探究「混血王子」的真實身分卻不是哈利的當務之急，有更迫切的使命正等待著他。佛地魔在失去力量之前，曾經把自己的靈魂分成七份，其中六份被藏入了可以儲存魔法的「分靈體」之中。如今哈利必須與鄧不利多攜手合作，將散落各處的分靈體盡數摧毀，才能徹底殺死黑魔王。\n 但在計畫成功之前，時間恐怕不站在哈利這邊。魔法部高層面臨權力更迭，潛伏在暗處的食死人們蠢蠢欲動，就連霍格華茲也不再安全了。秘密與猜忌，謊言與背叛，一場前所未有的風暴即將吞噬整個魔法世界。哈利必須要謹慎選擇自己的盟友，因為他身邊，早已有人被烙上了屬於佛地魔的「黑魔標記」……');
Insert into GROUP19.PRODUCT (PID,PNAME,PRICE,CATEGORY,PDESC) values ('b30999','資料庫理論與實務',500,'BOOK','本書涵蓋了實務上常用的資料庫理論，為有志升學者必備教本。\n 因應雲端科技的發展，強化「雲端運算與資料庫」一章，除了描述雲端環境下資料的型態和結構外，對於近年來愈來愈普遍的NoSQL資料庫也做了介紹，尤其針對目前最流行的NoSQL資料庫MongoDB做了相當具體的說明。\n 以同一個範例（網路書店的線上購物系統）貫穿全書來說明資料庫的重要觀念，同時提供多個範例程式下載及系統支援實務練習，本版更新「Web程式語言和資料庫應用」一章裡的程式範例以反映最新的程式版本，本書為有志精研資料庫者必讀書籍。\n 提供「中山網路書店」範例系統，讓讀者可以具體瞭解每一個應用系統後面資料庫的變化情形，全書有200 餘張圖表，讓讀者更容易理解相關概念，並有豐富的練習題和習題，其中絕大部分是演算題，有助強化讀者在資料庫設計的應用能力。\n 本書專屬網站有課程投影片、網路書店範例系統、SQL語法練習、練習題和習題解答、範例程式下載、資料庫網路資源、討論版等，本版更提供每章的影音檔和前八章每章的課後測驗題，網站裡也提供練習題解答、測驗題解答和部分習題解答，是教師授與學生研習的最佳後盾。');
Insert into GROUP19.PRODUCT (PID,PNAME,PRICE,CATEGORY,PDESC) values ('b20777','蔡依林專輯二',350,'CD','見怪不怪 美不勝收\n 打破世俗標準的審美觀  包容大千世界的惡與善\n 亞洲流行天后 蔡依林 JOLIN最新專輯 UGLY BEAUTY\n 11首心靈探索自問自答  最誠實的私密音樂日記');
Insert into GROUP19.PRODUCT (PID,PNAME,PRICE,CATEGORY,PDESC) values ('b51111','電子商務理論與實務',700,'BOOK','各篇章的主題都很符合目前智慧電子商務的環境，研究也都有其深厚的學術理論與價值，學術性的嚴謹內容將來可能都會在相關的學術期刊發展，但是本書嘗試先以深入淺出的方式，讓非專業的讀者也能夠瞭解研究的發現。');
REM INSERTING into GROUP19.RECORD
SET DEFINE OFF;
Insert into GROUP19.RECORD (TNO,PID,AMOUNT,SALEPRICE,TOTAL) values (1,'b51111',3,700,2100);
Insert into GROUP19.RECORD (TNO,PID,AMOUNT,SALEPRICE,TOTAL) values (1,'d03333',5,450,2250);
Insert into GROUP19.RECORD (TNO,PID,AMOUNT,SALEPRICE,TOTAL) values (2,'W42957',3,300,900);
Insert into GROUP19.RECORD (TNO,PID,AMOUNT,SALEPRICE,TOTAL) values (2,'b10234',1,600,600);
Insert into GROUP19.RECORD (TNO,PID,AMOUNT,SALEPRICE,TOTAL) values (3,'d11222',3,300,900);
Insert into GROUP19.RECORD (TNO,PID,AMOUNT,SALEPRICE,TOTAL) values (3,'v00111',1,400,400);
Insert into GROUP19.RECORD (TNO,PID,AMOUNT,SALEPRICE,TOTAL) values (4,'N41023',2,400,800);
Insert into GROUP19.RECORD (TNO,PID,AMOUNT,SALEPRICE,TOTAL) values (5,'b20777',2,350,700);
Insert into GROUP19.RECORD (TNO,PID,AMOUNT,SALEPRICE,TOTAL) values (6,'b40555',2,550,1100);
Insert into GROUP19.RECORD (TNO,PID,AMOUNT,SALEPRICE,TOTAL) values (7,'v00111',3,400,1200);
Insert into GROUP19.RECORD (TNO,PID,AMOUNT,SALEPRICE,TOTAL) values (8,'F95191',1,100,100);
--------------------------------------------------------
--  DDL for Trigger MEMBER_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "GROUP19"."MEMBER_TRG" 
BEFORE INSERT ON member  
FOR EACH ROW  
BEGIN  
IF :new.mid IS NULL THEN  
SELECT member_mid_seq.nextval INTO :new.mid FROM dual;  
END IF;  
END;

/
ALTER TRIGGER "GROUP19"."MEMBER_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger ORDER_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "GROUP19"."ORDER_TRG" 
BEFORE INSERT ON order_list  
FOR EACH ROW  
BEGIN  
IF :new.oid IS NULL THEN  
SELECT order_oid_seq.nextval INTO :new.oid FROM dual;  
END IF;  
END;

/
ALTER TRIGGER "GROUP19"."ORDER_TRG" ENABLE;
