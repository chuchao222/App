/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2015/3/6 11:37:32                            */
/*==============================================================*/

drop table if exists BASE_ADVERSITY;

drop table if exists BASE_DOMAIN;

drop table if exists BASE_GET_API;

drop table if exists BASE_GRANT;

drop table if exists BASE_LOG;

drop table if exists BASE_MENU;

drop table if exists BASE_NEWS;

drop table if exists BASE_ORGANIZATION;

drop table if exists BASE_ROLE;

drop table if exists BASE_SWITH;

drop table if exists BASE_USER;

drop table if exists BASE_WEB_LINK;

drop table if exists TIP_ACTIVITY_MESSAGE;

drop table if exists TIP_APPEAL;

drop table if exists TIP_APPEAL_JUDGE;

drop table if exists TIP_ARTICLE;

drop table if exists TIP_ARTICLE_COMMENT;

drop table if exists TIP_ASSISTANT;

drop table if exists TIP_BANK_PAY;

drop table if exists TIP_COMPLAINT;

drop table if exists TIP_COMPLAINT_JUDGE;

drop table if exists TIP_DEPARTMENT;

drop table if exists TIP_DISEASE;

drop table if exists TIP_DOCTOR;

drop table if exists TIP_DOCTOR_AUTH;

drop table if exists TIP_DOCTOR_COMMENT;

drop table if exists TIP_DOCTOR_PATIENT_GROUP_RELA;

drop table if exists TIP_DOCTOR_SERVICE;

drop table if exists TIP_DOCTOR_SERVICE_DETAIL;

drop table if exists TIP_DOCTOR_TEAM;

drop table if exists TIP_DOCTOR_TEAM_RELA;

drop table if exists TIP_DOCTOR_TITLE;

drop table if exists TIP_DOCTOR_WORKPLAN;

drop table if exists TIP_DRUGS;

drop table if exists TIP_DRUGS_USETIP;

drop table if exists TIP_FAMILY;

drop table if exists TIP_FANS;

drop table if exists TIP_GROUP;

drop table if exists TIP_HOSPITAL;

drop table if exists TIP_HOSPITAL_DEP_RELA;

drop table if exists TIP_HOSPITAL_DOCTOR_RELA;

drop table if exists TIP_LAB_CHECK_DETAIL;

drop table if exists TIP_MAJOR;

drop table if exists TIP_MEDICAL_GRANT;

drop table if exists TIP_MEDICAL_RECORD;

drop table if exists TIP_MEETING;

drop table if exists TIP_MEETING_EMP;

drop table if exists TIP_MESSAGE;

drop table if exists TIP_ORDER;

drop table if exists TIP_ORDER_DETAIL;

drop table if exists TIP_PATIENT;

drop table if exists TIP_PATIENT_MONITOR_ITEM;

drop table if exists TIP_TASK;

drop table if exists TIP_TEAM_RECRUIT;

drop table if exists TIP_TEAM_SERVICE;

drop table if exists TIP_TEAM_SERVICE_DETAIL;

drop table if exists TIP_TREAT_PLAN;

/*==============================================================*/
/* Table: BASE_ADVERSITY                                        */
/*==============================================================*/
create table BASE_ADVERSITY
(
   id                   int not null auto_increment,
   CODE                 varchar(32),
   NAME                 varchar(32),
   CREATE_TIME          datetime,
   OFF_TIME             datetime,
   CUSTOMS              int,
   primary key (id)
);

alter table BASE_ADVERSITY comment '系统广告位';

/*==============================================================*/
/* Table: BASE_DOMAIN                                           */
/*==============================================================*/
create table BASE_DOMAIN
(
   ID                   int not null auto_increment,
   CODE                 varchar(32),
   NAME                 varchar(32),
   PARENT               int comment ' 0 为顶级',
   SORT_CODE            int,
   primary key (ID)
);

/*==============================================================*/
/* Table: BASE_GET_API                                          */
/*==============================================================*/
create table BASE_GET_API
(
   ID                   int not null auto_increment,
   NAME                 varchar(32),
   URL                  varchar(255),
   XML                  text,
   REQUEST_TIME         datetime,
   primary key (ID)
);

alter table BASE_GET_API comment '调用外部接口信息存储';

/*==============================================================*/
/* Table: BASE_GRANT                                            */
/*==============================================================*/
create table BASE_GRANT
(
   ID                   int not null auto_increment,
   ROEL_ID              int,
   MENU_ITEM_ID         int,
   primary key (ID)
);

/*==============================================================*/
/* Table: BASE_LOG                                              */
/*==============================================================*/
create table BASE_LOG
(
   ID                   int not null auto_increment,
   primary key (ID)
);

/*==============================================================*/
/* Table: BASE_MENU                                             */
/*==============================================================*/
create table BASE_MENU
(
   ID                   int not null auto_increment,
   CODE                 varchar(32),
   NAME                 varchar(32),
   ITEM                 varchar(32),
   ITEM_CODE            varchar(32),
   ROOT_NODE            int comment '0 为顶级',
   primary key (ID)
);

/*==============================================================*/
/* Table: BASE_NEWS                                             */
/*==============================================================*/
create table BASE_NEWS
(
   ID                   int not null auto_increment,
   TITLE                varchar(64),
   AUTHOR               varchar(12),
   CREATE_TIME          datetime,
   CONTEXT              varchar(255),
   IMG_URL              varchar(255),
   LAST_MODIFIELD_TIME  datetime,
   IS_DELETE            int comment '1 是 2 否',
   primary key (ID)
);

alter table BASE_NEWS comment '平台新闻';

/*==============================================================*/
/* Table: BASE_ORGANIZATION                                     */
/*==============================================================*/
create table BASE_ORGANIZATION
(
   ID                   int not null auto_increment,
   CODE                 varchar(12),
   NAME                 varchar(12),
   ROOT_NODE            int comment '0 is ROOT',
   SORT_CODE            int,
   primary key (ID)
);

/*==============================================================*/
/* Table: BASE_ROLE                                             */
/*==============================================================*/
create table BASE_ROLE
(
   ID                   int not null auto_increment,
   CODE                 varchar(32),
   NAME                 varchar(32),
   primary key (ID)
);

/*==============================================================*/
/* Table: BASE_SWITH                                            */
/*==============================================================*/
create table BASE_SWITH
(
   ID                   int not null auto_increment,
   NAME                 varchar(32),
   CODE                 varchar(32),
   STATUS               int comment ' 1 ON  2 OFF',
   primary key (ID)
);

/*==============================================================*/
/* Table: BASE_USER                                             */
/*==============================================================*/
create table BASE_USER
(
   ID                   int not null auto_increment,
   USER_NAME            varchar(32),
   PASSWORD             varchar(32),
   ROLE_ID              varchar(32),
   DOMAIN_ID            varchar(32),
   primary key (ID)
);

/*==============================================================*/
/* Table: BASE_WEB_LINK                                         */
/*==============================================================*/
create table BASE_WEB_LINK
(
   ID                   int not null auto_increment,
   LINK_NAME            varchar(32),
   URL                  varchar(32),
   CREATE_TIME          datetime,
   CREATOR              int,
   primary key (ID)
);

alter table BASE_WEB_LINK comment '与其他网站交换的友情连接信息
';

/*==============================================================*/
/* Table: "TIP_ ACTIVITY_MESSAGE"                               */
/*==============================================================*/
create table TIP_ACTIVITY_MESSAGE
(
   ID                   int not null auto_increment,
   CONTEXT              varchar(64),
   CREATE_TIME          datetime,
   SEND_ID              int,
   ISDELETE             int comment '1 是 2 否',
   primary key (ID)
);

alter table TIP_ACTIVITY_MESSAGE comment '发布的动态消息，如微博';

/*==============================================================*/
/* Table: TIP_APPEAL                                            */
/*==============================================================*/
create table TIP_APPEAL
(
   ID                   int not null auto_increment,
   primary key (ID)
);

/*==============================================================*/
/* Table: TIP_APPEAL_JUDGE                                      */
/*==============================================================*/
create table TIP_APPEAL_JUDGE
(
   ID                   int not null auto_increment,
   primary key (ID)
);

/*==============================================================*/
/* Table: TIP_ARTICLE                                           */
/*==============================================================*/
create table TIP_ARTICLE
(
   ID                   int not null auto_increment,
   TITLE                varchar(32),
   CONTEXT              varchar(255),
   AUTHOR_ID            int,
   CREATE_TIME          datetime,
   ISTOP                int,
   CATEGORY             varchar(32),
   primary key (ID)
);

/*==============================================================*/
/* Table: TIP_ARTICLE_COMMENT                                   */
/*==============================================================*/
create table TIP_ARTICLE_COMMENT
(
   ID                   int not null auto_increment,
   CONTEXT              varchar(255),
   DATE                 datetime,
   CRITICS_ID           int,
   ISDELETE             int comment '1 为删除 2为否',
   primary key (ID)
);

alter table TIP_ARTICLE_COMMENT comment '文章评论';

/*==============================================================*/
/* Table: TIP_ASSISTANT                                         */
/*==============================================================*/
create table TIP_ASSISTANT
(
   ID                   int not null auto_increment,
   NAME                 varchar(8),
   SEX                  varchar(4),
   BIRTHDAY             datetime,
   PHONE_NUM            varchar(32),
   EMAIL                varchar(32),
   ID_CARD              varchar(32),
   TITLE_TYPE           varchar(32),
   CLINICAL_TITLE       varchar(32),
   HOSPITAL             varchar(32),
   HOSPITAL_DEP         varchar(32),
   LANGUAGE             varchar(32),
   ADDRESS              varchar(32),
   NATIVE               varchar(12),
   GOOD_AT              varchar(255),
   INTRODUCE            varchar(255),
   MAJOR                varchar(255),
   EDUCATION            varchar(255),
   AWARD                varchar(255),
   VIDEO_URL            varchar(255),
   PHOTO_URL            varchar(255),
   CREATE_TIME          datetime,
   LAST_MODIFILE_TIME   datetime,
   HOSPITAL_ID          int,
   DEP_ID               int,
   DISEASE_ID           int,
   primary key (ID),
   key AK_Key_1 (ID)
);

alter table TIP_ASSISTANT comment '医生助理  平台服务人员 帮助医生处理平时病人的一些问题';

/*==============================================================*/
/* Table: TIP_BANK_PAY                                          */
/*==============================================================*/
create table TIP_BANK_PAY
(
   ID                   int not null auto_increment,
   BANK_NAME            varchar(32),
   BANK_URL             varchar(255),
   BANK_LOGO_URL        varchar(255),
   primary key (ID)
);

alter table TIP_BANK_PAY comment '选择某个银行开户行进行付款';

/*==============================================================*/
/* Table: TIP_COMPLAINT                                         */
/*==============================================================*/
create table TIP_COMPLAINT
(
   ID                   int not null auto_increment,
   CONTEXT              varchar(255),
   primary key (ID)
);

alter table TIP_COMPLAINT comment 'Complaint
';

/*==============================================================*/
/* Table: TIP_COMPLAINT_JUDGE                                   */
/*==============================================================*/
create table TIP_COMPLAINT_JUDGE
(
   ID                   int not null auto_increment,
   primary key (ID)
);

alter table TIP_COMPLAINT_JUDGE comment 'Complaint
';

/*==============================================================*/
/* Table: TIP_DEPARTMENT                                        */
/*==============================================================*/
create table TIP_DEPARTMENT
(
   ID                   int not null auto_increment,
   DEP_NAME             varchar(12),
   HOSPITAL_ID          int,
   DEP_INTRO            varchar(255),
   MAJOR_ID             varchar(12),
   DOMAIN_ID            int,
   DOCTOR_ID            int,
   primary key (ID)
);

alter table TIP_DEPARTMENT comment '医院科室';

/*==============================================================*/
/* Table: TIP_DISEASE                                           */
/*==============================================================*/
create table TIP_DISEASE
(
   ID                   int not null auto_increment,
   NAME                 varchar(32),
   CODE                 varchar(32),
   LEVEL                int,
   CATEGORY             varchar(32),
   SORT_CODE            varchar(32),
   INTROCUDE            varchar(255),
   primary key (ID)
);

alter table TIP_DISEASE comment 'Disease
';

/*==============================================================*/
/* Table: TIP_DOCTOR                                            */
/*==============================================================*/
create table TIP_DOCTOR
(
   ID                   int not null auto_increment,
   NAME                 varchar(8),
   SEX                  varchar(4),
   BIRTHDAY             datetime,
   PHONE_NUM            int,
   EMAIL                varchar(32),
   ID_CARD              varchar(32),
   TITLE_TYPE           varchar(32),
   CLINICAL_TITLE       varchar(32),
   HOSPITAL             varchar(32),
   HOSPITAL_DEP         varchar(32),
   LANGUAGE             varchar(32),
   ADDRESS              varchar(32),
   NATIVE               varchar(12),
   GOOD_AT              varchar(255),
   INTRODUCE            varchar(255),
   MAJOR                varchar(255),
   EDUCATION            varchar(255),
   AWARD                varchar(255),
   VIDEO_URL            varchar(255),
   PHOTO_URL            varchar(255),
   CREATE_TIME          datetime,
   LAST_MODIFILE_TIME   datetime,
   DISEASE_ID           int,
   primary key (ID)
);

alter table TIP_DOCTOR comment '医生资料信息';

/*==============================================================*/
/* Table: TIP_DOCTOR_AUTH                                       */
/*==============================================================*/
create table TIP_DOCTOR_AUTH
(
   ID                   int not null auto_increment,
   NAME                 varchar(32),
   PHONE_NUM            int,
   ID_CARD              int,
   EMAIL                int,
   PHOTO_URL            varchar(255),
   CARD_URL             varchar(255),
   PHYSICIAN_CERTIFICATE_URL varchar(255),
   CERTIFICATE_NUM      varchar(255),
   TITEL_CERTIFICATE_URL varchar(255),
   CREATE_TIME          datetime,
   primary key (ID)
);

alter table TIP_DOCTOR_AUTH comment '医生资料认证，上传医生的相关职业证书
Authentication
';

/*==============================================================*/
/* Table: TIP_DOCTOR_COMMENT                                    */
/*==============================================================*/
create table TIP_DOCTOR_COMMENT
(
   ID                   int not null auto_increment,
   CONTEXT              varchar(255),
   ALTITUDE             int comment '五星值评分',
   WORK_EFFICIENCY      int comment '五星值评分',
   COMMUNICATION_SKILLS int comment '五星值评分',
   OPERATION_SKILLS     int comment '五星值评分',
   PROFESSIONAL_SKILLS  int comment '五星值评分',
   REPLY_EFFICIENCY     int comment '五星值评分',
   DEP_VOTES            int comment '五星值评分',
   DATE                 datetime,
   IS_DELETE            int comment '1 是  0 否',
   IS_UPDATE            int comment '1 是  0否',
   LAST_MODIFIELD_TIME  datetime,
   TO_JUDGE             int comment ' 根据ID找到人名',
   FROM_JUDGE           int comment '根据ID找到人名',
   TYPE                 int comment '1医生评论 2病人评论 3文章评论 4 科室评论',
   primary key (ID),
   key AK_Key_1 (ID)
);

alter table TIP_DOCTOR_COMMENT comment 'Comment
';

/*==============================================================*/
/* Table: TIP_DOCTOR_PATIENT_GROUP_RELA                         */
/*==============================================================*/
create table TIP_DOCTOR_PATIENT_GROUP_RELA
(
   ID                   int not null auto_increment,
   PATIENT_ID           int,
   GROUP_ID             int,
   DOMAIN_ID            int,
   primary key (ID)
);

alter table TIP_DOCTOR_PATIENT_GROUP_RELA comment '医生创建与病人讨论群组群组关系';

/*==============================================================*/
/* Table: TIP_DOCTOR_SERVICE                                    */
/*==============================================================*/
create table TIP_DOCTOR_SERVICE
(
   ID                   int not null auto_increment,
   NAME                 varchar(32),
   CATEGORY             varchar(32),
   METHOD               int comment '1图文2电话3视频',
   PAY_AMOUNT           int,
   primary key (ID)
);

alter table TIP_DOCTOR_SERVICE comment '医生提供的服务';

/*==============================================================*/
/* Table: TIP_DOCTOR_SERVICE_DETAIL                             */
/*==============================================================*/
create table TIP_DOCTOR_SERVICE_DETAIL
(
   ID                   int not null auto_increment,
   SERVICE_METHOD       int comment '1 图文 2 电话 3 视频',
   LINE_AMOUNT          int,
   CONTEXT              varchar(255),
   SERVIC_ID            int,
   DOCTOR_ID            int,
   CREATE_TIME          datetime,
   primary key (ID)
);

alter table TIP_DOCTOR_SERVICE_DETAIL comment '医生提供服务的详细信息介绍';

/*==============================================================*/
/* Table: TIP_DOCTOR_TEAM                                       */
/*==============================================================*/
create table TIP_DOCTOR_TEAM
(
   ID                   int not null auto_increment,
   NAME                 varchar(32),
   INTRODUCE            varchar(255),
   MAOJR                varchar(32),
   DATE                 datetime,
   AWARD                varchar(255),
   PATIENT_ID           int,
   HOSPITAL             int,
   DEP_ID               int,
   DOMAIN_ID            int,
   CODE                 varchar(32),
   CREATOR              varchar(32),
   TEAM_PHOTO           varchar(255),
   primary key (ID)
);

/*==============================================================*/
/* Table: TIP_DOCTOR_TEAM_RELA                                  */
/*==============================================================*/
create table TIP_DOCTOR_TEAM_RELA
(
   ID                   int not null auto_increment,
   团队ID                 int,
   地域ID                 int,
   primary key (ID)
);

alter table TIP_DOCTOR_TEAM_RELA comment '医生和团队的从属关系
';

/*==============================================================*/
/* Table: TIP_DOCTOR_TITLE                                      */
/*==============================================================*/
create table TIP_DOCTOR_TITLE
(
   ID                   int not null auto_increment,
   NAME                 varchar(32),
   CODE                 varchar(32),
   TITLE_TYPE           varchar(32),
   CLINICAL_TITLE       varchar(32),
   primary key (ID)
);

/*==============================================================*/
/* Table: TIP_DOCTOR_WORKPLAN                                   */
/*==============================================================*/
create table TIP_DOCTOR_WORKPLAN
(
   ID                   int not null auto_increment,
   PALN_TIME            datetime comment '12:00',
   DATE                 datetime comment '14-01-22',
   DOCTOR_ID            int,
   CYCLE                int comment '1 是 0 否',
   IS_DELETE            int comment '1 是 0 否',
   primary key (ID)
);

alter table TIP_DOCTOR_WORKPLAN comment '医生制定给自己的排班计划
';

/*==============================================================*/
/* Table: TIP_DRUGS                                             */
/*==============================================================*/
create table TIP_DRUGS
(
   ID                   int not null auto_increment,
   NAME                 varchar(32),
   CODE                 varchar(32),
   CATEGORY             varchar(32),
   primary key (ID)
);

alter table TIP_DRUGS comment 'Drugs 药物表
';

/*==============================================================*/
/* Table: TIP_DRUGS_USETIP                                      */
/*==============================================================*/
create table TIP_DRUGS_USETIP
(
   ID                   int not null auto_increment,
   CONTEXT              varchar(255),
   Column_3             char(10),
   primary key (ID)
);

alter table TIP_DRUGS_USETIP comment 'Drugs 药物使用提醒
';

/*==============================================================*/
/* Table: TIP_FAMILY                                            */
/*==============================================================*/
create table TIP_FAMILY
(
   ID                   int not null auto_increment,
   NAME                 varchar(12),
   FAMILY_CALL          varchar(12),
   MEDICAL_RECOED       numeric(12,0),
   DOCTOR_ID            int,
   TEAM_ID              int,
   HOSPITAL_ID          int,
   DEP_ID               int,
   DISEASE_ID           int,
   CHECK_ID             int,
   primary key (ID)
);

alter table TIP_FAMILY comment '患者家属';

/*==============================================================*/
/* Table: TIP_FANS                                              */
/*==============================================================*/
create table TIP_FANS
(
   ID                   int not null auto_increment,
   FANS_ID              int,
   STAR_ID              int,
   STATUS               int comment '1 关注 2  取消关注 3  互相关注',
   primary key (ID)
);

/*==============================================================*/
/* Table: TIP_GROUP                                             */
/*==============================================================*/
create table TIP_GROUP
(
   ID                   int not null auto_increment,
   NAME                 varchar(12),
   CODE                 varchar(12),
   INTRODUCE            varchar(255),
   DATE                 datetime,
   DOAMIN_ID            int,
   primary key (ID)
);

/*==============================================================*/
/* Table: TIP_HOSPITAL                                          */
/*==============================================================*/
create table TIP_HOSPITAL
(
   ID                   int not null auto_increment,
   NAME                 varchar(32),
   HOSPITAL             varchar(32),
   LEVEL                varchar(32),
   DOMAIN_ID            varchar(32),
   CODE                 varchar(32),
   SORTCODE             varchar(32),
   HOSPITAL_INRO        varchar(255),
   HONOR                varchar(255),
   ADDRESS              varchar(255),
   TELPHONE             int,
   HISTORY              varchar(255),
   SERVICE_INTRO        varchar(255),
   primary key (ID)
);

/*==============================================================*/
/* Table: TIP_HOSPITAL_DEP_RELA                                 */
/*==============================================================*/
create table TIP_HOSPITAL_DEP_RELA
(
   ID                   int not null auto_increment,
   DEP_ID               int,
   DOMAIN_ID            int,
   MAJOR_ID             int,
   primary key (ID)
);

alter table TIP_HOSPITAL_DEP_RELA comment '医院与科室的具体 从属关系
';

/*==============================================================*/
/* Table: TIP_HOSPITAL_DOCTOR_RELA                              */
/*==============================================================*/
create table TIP_HOSPITAL_DOCTOR_RELA
(
   ID                   int not null auto_increment,
   DOMAIN_ID            int,
   DEP_ID               int,
   primary key (ID)
);

alter table TIP_HOSPITAL_DOCTOR_RELA comment '医院与本院医生的具体 从属关系
';

/*==============================================================*/
/* Table: TIP_LAB_CHECK_DETAIL                                  */
/*==============================================================*/
create table TIP_LAB_CHECK_DETAIL
(
   ID                   int not null auto_increment,
   MAJOR                varchar(32),
   DOCTOR_ID            int,
   PATIENT_ID           int,
   RESULT               varchar(32),
   primary key (ID)
);

alter table TIP_LAB_CHECK_DETAIL comment '实验室检查的科目详细内容';

/*==============================================================*/
/* Table: TIP_MAJOR                                             */
/*==============================================================*/
create table TIP_MAJOR
(
   ID                   int not null auto_increment,
   MAJOR_CODE           varchar(32),
   MAJOR_NAME           varchar(32),
   MAJOR_LEVEL          varchar(2),
   SORT_CODE            varchar(32),
   MAJOR_CATEGORY       varchar(32),
   MAJOR_INTOR          varchar(255),
   primary key (ID)
);

alter table TIP_MAJOR comment '医学专业';

/*==============================================================*/
/* Table: TIP_MEDICAL_GRANT                                     */
/*==============================================================*/
create table TIP_MEDICAL_GRANT
(
   ID                   int not null auto_increment,
   DOCTOR_ID            int,
   PATIENT_ID           int,
   IS_LOOK              int comment '1 是 0 否',
   CYCLE                int comment '1周,一月',
   DOMAIN_ID            int,
   primary key (ID)
);

alter table TIP_MEDICAL_GRANT comment 'medical record
病人病历的授权
';

/*==============================================================*/
/* Table: TIP_MEDICAL_RECORD                                    */
/*==============================================================*/
create table TIP_MEDICAL_RECORD
(
   ID                   int not null auto_increment,
   CODE                 varchar(32),
   HEALTH_STATUS        int comment '1手术治疗  2住院风险 3门诊观察 4药物保健治疗 5亚健康状态 6 健康人群',
   SYMPTOM              varchar(255),
   SCREENED             varchar(255),
   TREATMENT            varchar(255) comment '1未治疗 2治疗中 3已治疗   原    1未进行治疗   2正接受药物治疗   3已经手术治疗',
   PIC_URL              varchar(255) comment '资料里面统一管理',
   ISCOMPLETE           int comment '1 是 0 否',
   ISLOOK               int comment '授权当前医生 1 是 0 否',
   REPORT               varchar(255) comment '疾病主诉',
   PRESENTING           varchar(255),
   ANAMNESIS            varchar(255),
   OPERATION_HISTORY    varchar(255),
   HABITS               varchar(255),
   TRAUMA_HISTORY       varchar(255),
   FAMILY_DISEASE       varchar(255),
   PHYCICAL_EXAM        varchar(255),
   DIAGNOSIS            varchar(255),
   IS_DELETE            int comment '1 是 0 否',
   IS_UPDATE            int comment '1 是 0 否',
   CREATE_TIME          datetime,
   CREATE_ID            int,
   primary key (ID)
);

alter table TIP_MEDICAL_RECORD comment 'medical record 病人病历信息';

/*==============================================================*/
/* Table: TIP_MEETING                                           */
/*==============================================================*/
create table TIP_MEETING
(
   ID                   int not null auto_increment,
   CODE                 int,
   NAME                 varchar(32),
   TITLE                varchar(32),
   NUMS                 int,
   MEMBERS              int comment '参会成员的ID在会议成员表中建立映射关系',
   STATUS               int comment '1 开始 2 开会中 3 结束',
   CREATOR_ID           int,
   METHOD               int comment '1 电话 2 视频 3视频桌面共享',
   MEET_TIME            datetime,
   primary key (ID)
);

/*==============================================================*/
/* Table: TIP_MEETING_EMP                                       */
/*==============================================================*/
create table TIP_MEETING_EMP
(
   ID                   int not null auto_increment,
   MEET_ID              int,
   MEMBER_ID            int,
   DOMAIN_ID            int,
   primary key (ID)
);

alter table TIP_MEETING_EMP comment '参加会议的人员
';

/*==============================================================*/
/* Table: TIP_MESSAGE                                           */
/*==============================================================*/
create table TIP_MESSAGE
(
   ID                   int not null auto_increment,
   CONTEXT              varchar(255),
   DATE                 datetime,
   SEND_ID              int,
   FROM_ID              int,
   primary key (ID)
);

/*==============================================================*/
/* Table: TIP_ORDER                                             */
/*==============================================================*/
create table TIP_ORDER
(
   ID                   int not null auto_increment,
   CODE                 varchar(32),
   NAME                 varchar(32),
   TYPE                 int,
   CREATE_TIME          datetime,
   STATUS               int,
   PATIENT              int comment '下单人一般是病人ID',
   DOCTOR               int comment '医生ID,医院id，团队id',
   PAY_STATUS           int comment '1 已支付 2 未支付 3 退款',
   UPDATE_TIME          datetime,
   AMOUNT               numeric(19,2),
   IS_DELETE            int comment '1 是  0 否',
   primary key (ID)
);

alter table TIP_ORDER comment '订单的主单，描绘订单的主要信息 ，与订单子单关联 ，主单一对多个子单';

/*==============================================================*/
/* Table: TIP_ORDER_DETAIL                                      */
/*==============================================================*/
create table TIP_ORDER_DETAIL
(
   ID                   int not null auto_increment,
   LINE_CODE            varchar(32),
   LINE_CONTEXR         varchar(255),
   CREATE_TIME          datetime,
   LINE_AMOUNT          numeric(19,2),
   SERVICE_METHOD       int comment '1 图文 2 电话 3 视频',
   TIME                 datetime,
   SERVICE_NAME         varchar(32),
   UPDATE_TIME          datetime,
   IS_DELETE            int comment '1 是  0 否',
   MAJOR_ID             int,
   DISEASE_ID           int,
   HOSPITAL_ID          int,
   DEP_ID               int,
   PAY_METHOD           int comment '1网银 2 支付宝 3 微信 4 其他',
   DOCTOR_ID            int,
   TEAM_ID              int,
   primary key (ID)
);

alter table TIP_ORDER_DETAIL comment '订单的子单，描绘订单的详细内容 ，与订单主单关联 ，主单一对多';

/*==============================================================*/
/* Table: TIP_PATIENT                                           */
/*==============================================================*/
create table TIP_PATIENT
(
   ID                   int not null auto_increment,
   NAME                 varchar(8),
   SEX                  varchar(4),
   BIRTHDAY             datetime,
   PHONE_NUM            varchar(32),
   EMAIL                varchar(32),
   ID_CARD              varchar(32),
   HOSPITAL             varchar(64),
   HOSPITAL_DEP         varchar(32),
   LANGUAGE             varchar(32),
   ADDRESS              varchar(128),
   NATIVE               varchar(32),
   GOOD_AT              varchar(255),
   INTRODUCE            varchar(255),
   EDUCATION            varchar(255),
   VIDEO_URL            varchar(255),
   PHOTO_URL            varchar(255),
   CREATE_TIME          datetime,
   LAST_MODIFILE_TIME   datetime,
   HOSPITAL_ID          int,
   DEP_ID               int,
   DISEASE_ID           int,
   primary key (ID),
   key AK_Key_1 (ID)
);

alter table TIP_PATIENT comment '病人资料信息';

/*==============================================================*/
/* Table: TIP_PATIENT_MONITOR_ITEM                              */
/*==============================================================*/
create table TIP_PATIENT_MONITOR_ITEM
(
   ID                   int not null auto_increment,
   DISEASE_ID           int,
   VALUE                numeric(19,2),
   UNIT                 varchar(32),
   DOCTOR_ID            int,
   PATIENT_ID           int,
   DOMAIN_ID            int,
   primary key (ID)
);

alter table TIP_PATIENT_MONITOR_ITEM comment '病人病情的监测
Condition monitoring
';

/*==============================================================*/
/* Table: TIP_TASK                                              */
/*==============================================================*/
create table TIP_TASK
(
   ID                   int not null auto_increment,
   TYPE                 int,
   STATUS               int,
   CONTENT              varchar(255),
   SEND_ID              int,
   primary key (ID)
);

alter table TIP_TASK comment '坐席人员（管理员）的工作任务';

/*==============================================================*/
/* Table: TIP_TEAM_RECRUIT                                      */
/*==============================================================*/
create table TIP_TEAM_RECRUIT
(
   ID                   int not null auto_increment,
   RECRUITMENT          varchar(32),
   MAJOR                varchar(32),
   WORK_YEAR            varchar(32),
   NUMS                 int,
   DOMAIN               varchar(32),
   CREATE_TIME          datetime,
   DUTY                 varchar(255),
   REQUIREMENTS         varchar(255),
   IS_DELETE            int comment '1 是 2  否',
   CREATOR              varchar(32),
   primary key (ID)
);

alter table TIP_TEAM_RECRUIT comment 'recruit';

/*==============================================================*/
/* Table: TIP_TEAM_SERVICE                                      */
/*==============================================================*/
create table TIP_TEAM_SERVICE
(
   ID                   int not null auto_increment,
   NAME                 varchar(32),
   CATEGORY             varchar(32),
   METHOD               int comment '1 图文 2 电话 3  视频',
   PAY_AMOUNT           int,
   DOCTOR_ID            int,
   IS_DELETE            int,
   DOMAIN_ID            int,
   HOSPITAL_ID          int,
   DEP_ID               int,
   primary key (ID)
);

/*==============================================================*/
/* Table: TIP_TEAM_SERVICE_DETAIL                               */
/*==============================================================*/
create table TIP_TEAM_SERVICE_DETAIL
(
   ID                   int not null auto_increment,
   SERVICE_METHOD       int comment '1  图文 2  电话 3  视频',
   LINE_AMOUNT          numeric(12,2),
   CONTEXT              varchar(255),
   SERVICE_ID           int,
   TEAM_ID              int,
   CREATE_TIME          datetime,
   primary key (ID)
);

alter table TIP_TEAM_SERVICE_DETAIL comment '服务的具体说明，详细信息
';

/*==============================================================*/
/* Table: TIP_TREAT_PLAN                                        */
/*==============================================================*/
create table TIP_TREAT_PLAN
(
   ID                   int not null auto_increment,
   FUNCTION_TYPE        varchar(32) comment '药品主要用于治疗什么疾病',
   CATEGORY             varchar(32) comment '药物分类 丙戊酸钠缓释片',
   DRUG_SPECIFICATIONS  numeric(12,2),
   UNIT                 varchar(32) comment 'ml,kg',
   SODE                 numeric(12,2) comment '0.1 ml',
   USES                 varchar(255) comment '1天3次',
   CYCLE                varchar(32) comment '一周',
   SIDE_EFFECTS         varchar(255),
   DOCTOR_ID            int,
   PATIENT_ID           int,
   IS_DELETE            int,
   primary key (ID),
   key AK_Key_1 (ID)
);

alter table TIP_TREAT_PLAN comment '医生给病人看病后，医生会给病人做一个用药治疗计划
';

