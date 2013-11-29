/*
 * ===========================================================
 *   script name:      ģ�Ϳ���ؽ���ű�                                
 *   database name:    m_gjj                                         
 *   dbms name:        mysql version 5.1                         
 *   created on:                                                       
 *   last modified on: 2011-10-11 10:50                             
 *   designed by:      ������                                       
 *   created by:       ������                                 
 * ===========================================================
 */

/*
����ģ�Ϳ�
*/
create database if not exists `m_gjj-test`;
use `m_gjj-test`;
seta names gbk;

/*
 * ===========================================================
 *   table��data_incremen
 *   ��������:������Ǳ�
 *   �����ˣ�  ������
 *   �������ڣ�2011.10.18
 *   �޸��ˣ�������
 *   �޸����ڣ�2011.12.26
 *   �޸����ݣ�������ṹ
 * ===========================================================
 */
drop table if exists `data_increment`;
create table `data_increment` (
  `id`		int(15)		not null auto_increment		comment 'id',
  `sql_id`	varchar(200)	not null			comment '��ǰץȡ���ݱ��sql_id',
  `createtime`	char(50)	not null			comment '����ʱ��',
  `updatetime`	char(50)	not null			comment '����ʱ��',
  `finishcount` char(50)	not null			comment '��ץȡ����������',
  `remark`	char(100)	not null			comment '��ע��Ĭ��Ϊ��ǰsql����Ӧ�ı���',
  primary key (`id`)
) engine=innodb default charset=gbk;

/*
 * ===========================================================
 *   table��gjjjg_m_cw_cwmxz
 *   ��������: ������ϸ��
 *   �����ˣ�  ���
 *   �������ڣ�2011.12.26
 *   �޸��ˣ�
 *   �޸����ڣ�
 *   �޸����ݣ�
 * ===========================================================
 */
drop table if exists `gjjjg_m_cw_cwmxz`;
create table `gjjjg_m_cw_cwmxz` (
  `id`          int(15)         not null auto_increment          comment '����id',
  `zxbhdm`      char(15)        default null                     comment '���ı�Ŵ���',
  `cjsj`        date            default null                     comment '����ʱ��',
  `jgh`         char(50)        default null                     comment '����ʱ��',
  `kmbh`        char(18)        default null                     comment '��Ŀ���',
  `ny`          char(6)         default null                     comment '����',
  `cnlsh`       char(50)        default null                     comment '����',
  `lx`          char(2)         default null                     comment '����',
  `jzrq`        char(8)         default null                     comment '��������',
  `zy`          varchar(200)    default null                     comment 'ժҪ',
  `jdfx`        char(6)         default null                     comment '�������',
  `jffse`       decimal(18,2)   default null                     comment '�跽������',
  `dffse`       decimal(18,2)   default null                     comment '����������',
  `ye`          decimal(18,2)   default null                     comment '���',
  `yefx`        char(6)         default null                     comment '����',
  `qcye`        decimal(18,2)   default null                     comment '�ڳ����',
  `qcyefx`      char(6)         default null                     comment '�ڳ�����',
  `dfkm`        char(18)        default null                     comment '�Է���Ŀ',
  `qmye`        decimal(18,2)   default null                     comment '��ĩ���',
  `qmyefx`      char(6)         default null                     comment '��ĩ����',
  `byljjffse`   decimal(18,2)   default null                     comment '�����ۼƽ跽������',
  `byljdffse`   decimal(18,2)   default null                     comment '�����ۼƴ���������',
  `pzh`         char(50)        default null                     comment 'ƾ֤��',
  `zqbh`        char(18)        default null                     comment 'ծȯ���',
  `dqckbh`      char(18)        default null                     comment '���ڴ����',
  primary key (`id`),
  unique key `idx_id` (`id`),
  key `idx_zxbhdm` (`zxbhdm`),
  key `idx_jgh` (`jgh`),
  key `idx_cnlsh` (`cnlsh`),
  key `idx_kmbh` (`kmbh`),
  key `idx_jdfx` (`jdfx`)
) engine=innodb default charset=gbk comment='������ϸ�ʱ�';

/*
 * ===========================================================
 *   table��gjjjg_m_cw_dqckmxxx
 *   ��������: ���ڴ����ϸ��Ϣ
 *   �����ˣ�  ���
 *   �������ڣ�2011.12.26
 *   �޸��ˣ�
 *   �޸����ڣ�
 *   �޸����ݣ�
 * ===========================================================
 */
drop table if exists `gjjjg_m_cw_dqckmxxx`;
create table `gjjjg_m_cw_dqckmxxx` (
  `id`          int(15)         not null auto_increment          comment '����id',
  `zxbhdm`      char(15)        default null                     comment '���ı�Ŵ���',
  `cjsj`        date            default null                     comment '����ʱ��',
  `jgh`         char(50)        default null                     comment '������',
  `dqckbh`      char(18)        default null                     comment '���ڴ����',
  `zqmc`        varchar(100)    default null                     comment '���ڴ������',
  `khyh`        varchar(100)    default null                     comment '��������',
  `yhzh`        varchar(40)     default null                     comment '�����˺�',
  `ll`          decimal(18,2)   default null                     comment '����',
  `je`          decimal(18,2)   default null                     comment '���',
  `ckrq`        char(8)         default null                     comment '�������',
  `dqrq`        char(8)         default null                     comment '��������',
  `qx`          int(11)         default null                     comment '����',
  primary key (`id`),
  unique key `idx_id` (`id`),
  key `idx_zxbhdm` (`zxbhdm`),
  key `idx_jgh` (`jgh`),
  key `idx_dqckbh` (`dqckbh`)
) engine=innodb default charset=gbk comment='��¼���ڴ�����ϸ��Ϣ��';

/*
 * ===========================================================
 *   table��gjjjg_m_cw_kmyehzqk
 *   ��������: ��Ŀ���������
 *   �����ˣ�  ���
 *   �������ڣ�2011.12.26
 *   �޸��ˣ�
 *   �޸����ڣ�
 *   �޸����ݣ�
 * ===========================================================
 */
drop table if exists `gjjjg_m_cw_kmyehzqk`;
create table `gjjjg_m_cw_kmyehzqk` (
  `id`          int(15)         not null auto_increment          comment '����id',
  `zxbhdm`      char(15)        default null                     comment '���ı�Ŵ���',
  `cjsj`        date            default null                     comment '����ʱ��',
  `ny`          char(6)         default null                     comment '����',
  `kmdm`        char(50)	default null			 comment '��Ŀ����',
  `kmmc`        char(50)        default null                     comment '��Ŀ����',
  `qcye`        decimal(18,2)   default null			 comment '�ڳ����',
  `jf`		decimal(18,2)	default null			 comment '�跽������',
  `df`		decimal(18,2)	default null			 comment '����������',
  `qmye`	decimal(18,2)   default null			 comment '���',
  primary key (`id`),
  unique key `idx_id` (`id`),
  key `idx_zxbhdm` (`zxbhdm`),
  key `idx_kmdm` (`kmdm`)
) engine=innodb default charset=gbk comment='��Ŀ���������';

/*
 * ===========================================================
 *   table��gjjjg_m_cw_pzfl
 *   ��������: ƾ֤��¼��
 *   �����ˣ�  ���
 *   �������ڣ�2011.12.26
 *   �޸��ˣ�
 *   �޸����ڣ�
 *   �޸����ݣ�
 * ===========================================================
 */
drop table if exists `gjjjg_m_cw_pzfl`;
create table `gjjjg_m_cw_pzfl` (
  `id`		int(15)		not null auto_increment		 comment '����id',
  `zxbhdm`	char(15)	default null			 comment '���ı�Ŵ���',
  `cjsj`	date		default null			 comment '����ʱ��',
  `cnlsh`	char(50)	default null                     comment '������ˮ��',
  `pzh`		char(50)	default null                     comment 'ƾ֤��',
  `flbh`	varchar(100)		default null			 comment '��¼���',
  `jzrq`	char(8)		default null			 comment '��������',
  `zy`		char(60)	default null			 comment 'ժҪ',
  `zzkm`	char(30)	default null			 comment '���˿�Ŀ',
  `mxkm`	char(30)	default null			 comment '��ϸ��Ŀ',
  `jfje`	decimal(18,2)	default null			 comment '�跽���',
  `dfje`	decimal(18,2)	default null			 comment '�������',
  `djs`		int(15)		default null			 comment '������',
  `czsj` date default null comment '����ʱ��',
  primary key (`id`)
) engine=innodb default charset=gbk comment='ƾ֤��¼��';

/*
 * ===========================================================
 *   table��gjjjg_m_cw_zqmxxx
 *   ��������: ծ����ϸ��Ϣ
 *   �����ˣ�  ���
 *   �������ڣ�2011.12.26
 *   �޸��ˣ�
 *   �޸����ڣ�
 *   �޸����ݣ�
 * ===========================================================
 */
drop table if exists `gjjjg_m_cw_zqmxxx`;
create table `gjjjg_m_cw_zqmxxx` (
  `id`		int(15)		not null auto_increment		 comment '����id',
  `zxbhdm`	char(15)	default null			 comment '���ı�Ŵ���',
  `cjsj`        date		default null			 comment '����ʱ��',
  `jgh`		char(50)	default null			 comment '������',
  `zqbh`	char(18)	default null			 comment 'ծȯ���',
  `pz`		varchar(50)	default null			 comment 'Ʒ��',
  `gmfs`	varchar(50)	default null			 comment '��������',
  `gzpzh`	char(50)	default null                     comment '��ծƾ֤��',
  `zqmc`	varchar(100)	default null			 comment 'ծȯ����',
  `khyh`	varchar(100)	default null			 comment '��������',
  `yhzh`	varchar(40)	default null			 comment '�����˺�',
  `ll`		decimal(18,2)	default null                     comment '����',
  `je`		decimal(18,2)	default null                     comment '���',
  `gmzqsl`	decimal(18,2)	default null                     comment '����ծȯ����',
  `gmrq`	char(8)		default null			 comment '��������',
  `dqrq`	char(8)		default null			 comment '��������',
  `qx`		int(11)		default null			 comment '����',
  `dfzrje`	decimal(18,2)	default null			 comment '�Ҹ�ת�ñ���',
  `dfzrrq`	char(8)		default null			 comment '�Ҹ�ת������',
  `ye`		decimal(18,2)	default null                     comment '��ծ���',
  `lxsr`	decimal(18,2)	default null			 comment '��Ϣ����',
  primary key (`id`),
  unique key `idx_id` (`id`),
  key `idx_zxbhdm` (`zxbhdm`),
  key `idx_jgh` (`jgh`),
  key `idx_zqbh` (`zqbh`)
) engine=innodb default charset=gbk comment='ծ����ϸ��Ϣ';

/*
 * ===========================================================
 *   table��gjjjg_m_dk_dkmx
 *   ��������: ������ϸ
 *   �����ˣ�  ���
 *   �������ڣ�2011.12.26
 *   �޸��ˣ�
 *   �޸����ڣ�
 *   �޸����ݣ�
 * ===========================================================
 */
drop table if exists `gjjjg_m_dk_dkmx`;
create table `gjjjg_m_dk_dkmx` (
  `id`		int(15)		not null auto_increment		 comment '����id',
  `zxbhdm`	char(15)	default null			 comment '���ı�Ŵ���',
  `cjsj`	date		default null			 comment '����ʱ��',
  `jgh`		char(50)	default null                     comment '������',
  `ny`		char(6)		default null			 comment '����',
  `jkr`		char(30)	default null			 comment '�����',
  `ywlx`	char(3)		default null			 comment 'ҵ������',
  `jdbj`	char(3)		default null			 comment '������',
  `yhjgh`	char(50)	default null			 comment '���л�����',
  `yhdkzh`	char(30)	default null			 comment '���д����˺�',
  `jkhth`	char(50)	default null			 comment '����ͬ��',
  `ffje`	decimal(18,2)	default null                     comment '���Ž��',
  `grzh`	char(50)	default null                     comment '�����˺�',
  `dqqs`	int(11)		default null			 comment '��������',
  `bqyhbj`	decimal(18,2)	default null                     comment '����Ӧ�����',
  `bqyhlx`	decimal(18,2)	default null                     comment '����Ӧ������Ϣ',
  `bqyhfxje`	decimal(18,2)	default null                     comment '����Ӧ����Ϣ���',
  `bqyhjehj`	decimal(18,2)	default null                     comment '����Ӧ�����ϼ�',
  `ssrq`	char(8)		default null			 comment 'ʵ������',
  `ssbj`	decimal(18,2)	default null                     comment 'ʵ�ձ���',
  `sslx`	decimal(18,2)	default null			 comment 'ʵ����Ϣ',
  `ssfx`	decimal(18,2)	default null                     comment 'ʵ�շ�Ϣ',
  `bqshjehj`	decimal(18,2)	default null                     comment '����ʵ�����ϼ�',
  `ffye`	decimal(18,2)	default null			 comment '�������',
  `ysrq`	char(8)		default null			 comment 'Ӧ������',
  `rzry`	char(30)	default null			 comment '������Ա',
  `rzrq`	char(8)		default null			 comment '��������',
  `cnlsh`	char(50)	default null			 comment '������ˮ��',
  `hkzt`	char(3)		default null			 comment '����״̬',
  primary key (`id`),
  unique key `idx_id` (`id`),
  key `idx_zxbhdm` (`zxbhdm`),
  key `idx_jgh` (`jgh`),
  key `idx_cnlsh` (`cnlsh`),
  key `idx_jkhth` (`jkhth`)
) engine=innodb auto_increment=1807 default charset=gbk comment='������ϸ��';

/*
 * ===========================================================
 *   table��gjjjg_m_dk_dkyqdj
 *   ��������: �������ڵǼ�
 *   �����ˣ�  ���
 *   �������ڣ�2011.12.26
 *   �޸��ˣ�
 *   �޸����ڣ�
 *   �޸����ݣ�
 * ===========================================================
 */
drop table if exists `gjjjg_m_dk_dkyqdj`;
create table `gjjjg_m_dk_dkyqdj` (
  `id`		int(11)		not null auto_increment		 comment '����id',
  `zxbhdm`	char(15)	default null			 comment '���ı�Ŵ���',
  `cjsj`	date		default null			 comment '����ʱ��',
  `jgh`		char(50)	default null                     comment '������',
  `jkhth`	char(50)	default null                     comment '����ͬ��',
  `yqqc`	int(11)		default null			 comment '�����ڴ�',
  `yqbj`	decimal(18,2)	default null			 comment '���ڱ���',
  `yqxl`	decimal(18,2)	default null			 comment '������Ϣ',
  `yhrq`	char(8)		default null			 comment 'Ӧ������',
  `hkrq`	char(8)		default null			 comment 'ʵ������',
  primary key (`id`),
  unique key `index_id` (`id`),
  key `index_zxbhdm` (`zxbhdm`),
  key `index_jgh` (`jgh`),
  key `index_jkhth` (`jkhth`)
) engine=innodb default charset=gbk;

/*
 * ===========================================================
 *   table��gjjjg_m_dk_grdkqk
 *   ��������: ���˴������
 *   �����ˣ�  ���
 *   �������ڣ�2011.12.26
 *   �޸��ˣ�
 *   �޸����ڣ�
 *   �޸����ݣ�
 * ===========================================================
 */
drop table if exists `gjjjg_m_dk_grdkqk`;
create table `gjjjg_m_dk_grdkqk` (
  `id`		int(11)		not null auto_increment		 comment '����id',
  `zxbhdm`	char(15)	default null			 comment '���ı�Ŵ���',
  `cjsj`	date		default null			 comment '����ʱ��',
  `jkrxm`	varchar(50)	default null			 comment '���������',
  `jkrhm`	char(18)	default null			 comment '�����֤������',
  `jkrzjlx`	char(2)		default null			 comment '�����֤������',
  `jkrcsny`	date		default null			 comment '����˳�������',
  `jkrdzxx`	char(255)	default null			 comment '����˵�������',
  `jkrhyzk`	char(2)		default null			 comment '����˻���״��',
  `jkrjtdh`	char(20)	default null			 comment '����˼�ͥ�绰',
  `jkrjtzz`	char(255)	default null			 comment '����˼�ͥסַ',
  `jkrxb`	char(2)		default null			 comment '������Ա�',
  `jkrxl`	char(2)		default null			 comment '�����ѧ��',
  `jkryb`	char(6)		default null			 comment '������ʱ�',
  `jkrzz`	char(2)		default null			 comment '�����ְ��',
  `jkrzw`	char(2)		default null			 comment '�����ְ��',
  `jkrzy`	char(2)		default null			 comment '�����ְҵ',
  `jlrcdgx`	char(2)		default null			 comment '����˲δ���ϵ',
  `jkrsbzh`	char(50)	default null			 comment '������籣�˺�',
  `jkrgrsr`	decimal(18,2)	default null			 comment '����˸���������',
  `jkrjtsr`	decimal(18,2)	default null			 comment '����˼�ͥ������',
  `jkrxydj`	char(10)	default null			 comment '��������õȼ�',
  `jkrsjh`	char(20)	default null			 comment '������ֻ���',
  `dkfxdj`	char(2)		default null			 comment '������յȼ�',
  `dkye`	decimal(18,2)	default null			 comment '�������',
  `dkzhzt`	char(2)		default null			 comment '�����˻�״̬',
  `dkhqrq`	date		default null			 comment '���������',
  `ljhsbjje`	decimal(18,2)	default null			 comment '�ۼƻ��ձ�����',
  `ljhslxje`	decimal(18,2)	default null			 comment '�ۼƻ�����Ϣ���',
  `ljhsfxje`	decimal(18,2)	default null			 comment '�ۼƻ��շ�Ϣ���',
  `ljhsqs`	char(18)	default null			 comment '�ۼƻ�������',
  `ljtqhdje`	decimal(18,2)	default null			 comment '�ۼ���ǰ������',
  `ljyqbjje`	decimal(18,2)	default null			 comment '�ۼ����ڱ�����',
  `ljyqlxje`	decimal(18,2)	default null			 comment '�ۼ�������Ϣ���',
  `ljyqqs`	int(11)		default null			 comment '�ۼ���������',
  `ljtqhkcs`	int(11)		default null			 comment '�ۼ���ǰ�������',
  `dqyqqs`	int(11)		default null			 comment '��ǰ��������',
  `dkhth`	char(50)	default null			 comment '�����ͬ��',
  `yhdkzh`	char(30)	default null			 comment '���д����˺�',
  `yhjgh`	char(10)	default null			 comment '��������',
  `grzh`	char(50)	default null			 comment '�����˺�',
  `gjjffje`	decimal(18,2)	default null			 comment '�����𷢷Ž��',
  `gjjdkqx`	char(18)	default null			 comment '�������������',
  primary key (`id`),
  unique key `index_id` (`id`),
  key `index_zxbhdm` (`zxbhdm`),
  key `index_grzh` (`grzh`)
) engine=innodb default charset=gbk;

/*
 * ===========================================================
 *   table��gjjjg_m_dk_gtdkrxx
 *   ��������: ��ͬ��������Ϣ��
 *   �����ˣ�  ���
 *   �������ڣ�2011.12.26
 *   �޸��ˣ�
 *   �޸����ڣ�
 *   �޸����ݣ�
 * ===========================================================
 */
drop table if exists `gjjjg_m_dk_gtdkrxx`;
create table `gjjjg_m_dk_gtdkrxx` (
  `id`		int(11)		not null auto_increment		 comment '����id',
  `zxbhdm`	char(15)	default null			 comment '���ı�Ŵ���',
  `cjsj`	date		default null			 comment '����ʱ��',
  `jgh`		char(50)	default null			 comment '������',
  `dkhth`	char(50)	default null			 comment '�����ͬ��',
  `gtdkrgjjzh`	char(15)	default null			 comment '��ͬ�����˹������˺�',
  `gtdkrxm`	char(50)	default null			 comment '��ͬ����������',
  `gtdkrzjlx`	char(2)		default null			 comment '��ͬ������֤������',
  `gtdkrzjh`	char(18)	default null			 comment '��ͬ������֤����',
  `czry`	char(50)	default null			 comment '������Ա',
  `czrq`	char(8)		default null			 comment '��������',
  `pojcbj`	char(2)		default null			 comment '��ż��ؽɴ���',
  primary key (`id`),
  unique key `index_id` (`id`),
  key `index_zxbhdm` (`zxbhdm`),
  key `index_jgh` (`jgh`),
  key `index_dkhth` (`dkhth`)
) engine=innodb default charset=gbk;

/*
 * ===========================================================
 *   table��gjjjg_m_gg_ll
 *   ��������: ���ʱ�
 *   �����ˣ�  ���
 *   �������ڣ�2011.12.26
 *   �޸��ˣ�
 *   �޸����ڣ�
 *   �޸����ݣ�
 * ===========================================================
 */
drop table if exists `gjjjg_m_gg_ll`;
create table `gjjjg_m_gg_ll` (
  `id`		int(15)		not null auto_increment		 comment '����id',
  `zxbhdm`	char(15)	default null			 comment '���ı�Ŵ���',
  `cjsj`	date		default null			 comment '����ʱ��',
  `ywlx`	char(16)	default null			 comment 'ҵ������',
  `lllx`	char(16)	default null			 comment '��������',
  `ckqx`	char(60)	default null			 comment '�������',
  `sxrq`	date		default null			 comment '��Ч����',
  `jzrq`	date		default null			 comment '��������',
  `tzrq`	date		default null			 comment '��������',
  `nll`		decimal(9,8)	default null			 comment '������',
  primary key (`id`)
) engine=innodb default charset=gbk comment='���ʱ�';

/*
 * ===========================================================
 *   table��gjjjg_m_gj_dwfzmx
 *   ��������: ���ʱ�
 *   �����ˣ�  ���
 *   �������ڣ�2011.12.26
 *   �޸��ˣ�
 *   �޸����ڣ�
 *   �޸����ݣ�
 * ===========================================================
 */
drop table if exists `gjjjg_m_gj_dwfzmx`;
create table `gjjjg_m_gj_dwfzmx` (
  `id`		int(15)		not null auto_increment		 comment '����id',
  `zxbhdm`	char(15)	default null			 comment '���ı�Ŵ���',
  `cjsj`	date		default null			 comment '����ʱ��',
  `jgh`		char(50)	default null			 comment '������',
  `dwzh`	char(50)	default null			 comment '��λ�˻�',
  `jyrq`	char(10)	default null			 comment '��������',
  `pzhm`	char(50)	default null			 comment 'ƾ֤��',
  `lsh`		char(50)	default null			 comment '��ˮ��',
  `yhdm`	char(10)	default null			 comment '���д���',
  `jym`		char(10)	default null			 comment '������',
  `cnlsh`	char(50)	default null			 comment '������ˮ��',
  `zy`		varchar(150)	default null			 comment 'ժҪ',
  `rs`		int(15)		default null			 comment '����',
  `fsje`	decimal(18,2)	default null			 comment '�������',
  `jdbj`	char(6)		default null			 comment '������',
  `ye`		decimal(18,2)	default null			 comment '���',
  `czrq`	char(8)		default null			 comment '��������',
  `czy`		char(10)	default null			 comment '����Ա',
  `hcbj`	char(5)		default null			 comment '�����',
  primary key (`id`),
  unique key `idx_id` (`id`),
  key `idx_zxbhdm` (`zxbhdm`),
  key `idx_jgh` (`jgh`),
  key `idx_cnlsh` (`cnlsh`),
  key `idx_dwzh` (`dwzh`)
) engine=innodb default charset=gbk comment='��λ�ֻ�����ϸ��';

/*
 * ===========================================================
 *   table��gjjjg_m_gj_dwjcqkb
 *   ��������: ��λ�ɴ������
 *   �����ˣ�  ���
 *   �������ڣ�2011.12.26
 *   �޸��ˣ�
 *   �޸����ڣ�
 *   �޸����ݣ�
 * ===========================================================
 */
drop table if exists `gjjjg_m_gj_dwjcqkb`;
create table `gjjjg_m_gj_dwjcqkb` (
  `id`		int(15)		not null auto_increment		 comment '����id',
  `zxbhdm`	char(15)	default null			 comment '���ı�Ŵ���',
  `cjsj`	date		default null			 comment '����ʱ��',
  `dwzh`	varchar(50)	default null			 comment '��λ�˺�',
  `dwmc`	varchar(50)	default null			 comment '��λ����',
  `grjcbl`	decimal(18,2)	default null			 comment '���˽ɴ����',
  `dwjcbl`	decimal(18,2)	default null			 comment '��λ�ɴ����',
  `yjce`	decimal(18,2)	default null			 comment '�½ɴ��',
  `dwjzny`	char(6)		default null			 comment '��������',
  `qjys`	int(15)		default null			 comment 'Ƿ������',
  `qjje`	decimal(18,2)	default null			 comment 'Ƿ�ɽ��',
  `ye`		decimal(18,2)	default null			 comment '�ɴ����',
  primary key (`id`)
) engine=innodb default charset=gbk comment='��λ�ɴ����';

/*
 * ===========================================================
 *   table��gjjjg_m_gj_dwywmx
 *   ��������: ��λҵ����ϸ
 *   �����ˣ�  ���
 *   �������ڣ�2011.12.26
 *   �޸��ˣ�
 *   �޸����ڣ�
 *   �޸����ݣ�
 * ===========================================================
 */
drop table if exists `gjjjg_m_gj_dwywmx`;
create table `gjjjg_m_gj_dwywmx` (
  `id`		int(15)		not null auto_increment		 comment '����id',
  `zxbhdm`	char(15)	default null			 comment '���ı�Ŵ���',
  `cjsj`	date		default null			 comment '����ʱ��',
  `dwzh`	char(50)	default null			 comment '��λ�ʺ�',
  `dzrq`	date		default null			 comment '��������',
  `fhrq`	date		default null			 comment '��������',
  `dwbnfse`	decimal(18,2)	default null			 comment '��λ���귢����',
  `dwfse`	decimal(18,2)	default null			 comment '��λ������',
  `dwfslxe`	decimal(18,2)	default null			 comment '��λ������Ϣ��',
  `dwsnjzfse`	decimal(18,2)	default null			 comment '��λ�����ת������',
  `fsrs`	decimal(18,2)	default null			 comment '��������',
  `gjjywmxlx`	char(2)		default null			 comment '������ҵ����ϸ����',
  `hjny`	date		default null			 comment '�������',
  `ywrq`	date		default null			 comment 'ҵ������',
  `lsh`		char(50)	default null			 comment '��ˮ��',
  `jsfs`	char(2)		default null			 comment '���㷽ʽ',
  primary key (`id`)
) engine=innodb default charset=gbk comment='��λҵ����ϸ��';

/*
 * ===========================================================
 *   table��gjjjg_m_gj_glgx
 *   ��������: ҵ�������ϵ��
 *   �����ˣ�  ���
 *   �������ڣ�2011.12.26
 *   �޸��ˣ�
 *   �޸����ڣ�
 *   �޸����ݣ�
 * ===========================================================
 */
drop table if exists `gjjjg_m_gj_glgx`;
create table `gjjjg_m_gj_glgx` (
  `id`		int(11)		not null auto_increment		 comment '����id',
  `zxbhdm`	char(15)	default null			 comment '���ı�Ŵ���',
  `ywlx`	char(2)		default null			 comment 'ҵ������',
  `yhid`	int(15)		default null			 comment '����id',
  `zxid`	int(15)		default null			 comment '����id',
  `jsid`	int(15)		default null			 comment '����id',
  `status`	char(2)		default null			 comment '01,�����;02,ȫ����;03,�з���;04,�޷���;05,��������ת�����;06,ȫ����ҵ������;10,�ֹ����˽�������',
  `cjsj`	date		default null			 comment '��������ʱ��',
  `gzdate`	date		default null			 comment '����ɨ��ʱ��',
  `json`	longtext					 comment 'ȫ������ϵjson��',
  primary key (`id`),
  unique key `index_id` (`id`),
  key `index_zxbhdm` (`zxbhdm`),
  key `index_ywlx` (`ywlx`),
  key `index_status` (`status`)
) engine=innodb default charset=gbk;

 /*
 * ===========================================================
 *   table��gjjjg_m_gj_glgx_tmp
 *   ��������:������ϵ�м��
 *   �����ˣ�  ���
 *   �������ڣ�2012.02.01
 *   �޸��ˣ�
 *   �޸����ڣ�
 *   �޸����ݣ�
 * ===========================================================
 */

drop table if exists `gjjjg_m_gj_glgx_tmp`;

create table `gjjjg_m_gj_glgx_tmp` (
  `zxbhdm`	char(15)	default null		comment '���ı�Ŵ���',
  `ywlx`	char(2)		default null		comment 'ҵ������',
  `yhid`	int(15)		default null		comment '����id',
  `zxid`	int(15)		default null		comment '����id',
  `jsid`	int(15)		default null		comment '����id',
  `status`	char(2)		default null		comment '01,�����;02,ȫ����;03,�з���;04,�޷���;05,��������ת�����;06,ȫ����ҵ������;10,�ֹ����˽�������',
  `cjsj`	date		default null		comment '��������ʱ��',
  `gzdate`	date		default null		comment '����У��ʱ��',
  `json`	longtext	default null		comment 'ȫ������ϵjson��',
  key `index_zxbhdm` (`zxbhdm`),
  key `index_ywlx` (`ywlx`),
  key `index_yhid` (`yhid`),
  key `index_zxid` (`zxid`),
  key `index_status` (`status`)
) engine=innodb default charset=gbk;

/*
 * ===========================================================
 *   table��gjjjg_m_gj_grjbxx
 *   ��������: ���˻�����Ϣ
 *   �����ˣ�  ���
 *   �������ڣ�2011.12.26
 *   �޸��ˣ�
 *   �޸����ڣ�
 *   �޸����ݣ�
 * ===========================================================
 */

drop table if exists `gjjjg_m_gj_grjbxx`;

create table `gjjjg_m_gj_grjbxx` (
  `id`		int(15)		not null auto_increment comment '����id',
  `zxbhdm`	char(15)	default null		comment '���ı�Ŵ���',
  `cjsj`	date		default null		comment '����ʱ��',
  `jxrxm`	varchar(50)	default null		comment '�ɴ�������',
  `jcrxb`	char(2)		default null		comment '�ɴ����Ա� ',
  `jcrlxdh`	char(20)	default null		comment '�ɴ�����ϵ�绰',
  `jcrzjlx`	char(2)		default null		comment '�ɴ���֤������',
  `jcrzjh`	char(18)	default null		comment '�ɴ���֤����',
  `jcrcsny`	char(8)		default null		comment '�ɴ��˳�������',
  `jcrhyzk`	char(2)		default null		comment '�ɴ��˻���״��',
  `jcrzy`	char(2)		default null		comment '�ɴ���ְҵ',
  `jcrzc`	char(2)		default null		comment '�ɴ���ְ��',
  `jcrzw`	char(2)		default null		comment '�ɴ���ְ��',
  `jcrxl`	char(2)		default null		comment '�ɴ���ѧ��',
  `grbnbje`	decimal(18,2)	default null		comment '���˱��겹�ɶ�',
  `grbnhje`	decimal(18,2)	default null		comment '���˱����ɶ�',
  `grljhje`	decimal(18,2)	default null		comment '�����ۼƻ�ɶ�',
  `grljbje`	decimal(18,2)	default null		comment '�����ۼƲ��ɶ�',
  `jcedwbf`	decimal(18,2)	default null		comment '�ɴ�λ����',
  `grbntqe`	decimal(18,2)	default null		comment '���˱�����ȡ��',
  `grbnzre`	decimal(18,2)	default null		comment '���˱���ת���',
  `jcegrbf`	decimal(18,2)	default null		comment '�ɴ����˲���',
  `grjcjs`	decimal(18,2)	default null		comment '���˽ɴ����',
  `grjcye`	decimal(18,2)	default null		comment '���˽ɴ����',
  `grkhrq`	date		default null		comment '���˿�������',
  `grljjxe`	decimal(18,2)	default null		comment '�����ۼƽ�Ϣ��',
  `grljtqe`	decimal(18,2)	default null		comment '�����ۼ���ȡ��',
  `grljzre`	decimal(18,2)	default null		comment '�����ۼ�ת���',
  `grsnhje`	decimal(18,2)	default null		comment '���������ɶ�',
  `grsnbje`	decimal(18,2)	default null		comment '�������겹�ɶ�',
  `grsnjze`	decimal(18,2)	default null		comment '���������ת��',
  `grsntqe`	decimal(18,2)	default null		comment '����������ȡ��',
  `grsnzre`	decimal(18,2)	default null		comment '��������ת���',
  `grxhrq`	date		default null		comment '������������',
  `grxhyy`	char(2)		default null		comment '��������ԭ��',
  `grzh`	char(50)	default null		comment '�����˺�',
  `zrzhzt`	char(2)		default null		comment '�����˻�״̬',
  `yjce`	decimal(18,2)	default null		comment '�½ɴ��',
  `grhxkh`	char(20)	default null		comment '���˴����',
  `djzt`	char(1)		default null		comment '����״̬',
  primary key (`id`),
  unique key `idx_id` (`id`)
) engine=innodb default charset=gbk comment='���˻�����Ϣ';

/*
 * ===========================================================
 *   table��gjjjg_m_gj_grmx
 *   ��������: ������ϸ��Ϣ
 *   �����ˣ�  ���
 *   �������ڣ�2011.12.26
 *   �޸��ˣ�
 *   �޸����ڣ�
 *   �޸����ݣ�
 * ===========================================================
 */

drop table if exists `gjjjg_m_gj_grmx`;

create table `gjjjg_m_gj_grmx` (
  `id`		int(15)			not null auto_increment comment '����id',
  `zxbhdm`	char(15)		default null		comment '���ı�Ŵ���',
  `cjsj`	date			default null		comment '����ʱ��',
  `jgh`		char(50)		default null		comment '������',
  `jyrq`	char(8)			default null		comment '��������',
  `zhlx`	char(6)			default null		comment '�˻�����',
  `grzh`	char(50)		default null		comment '�����˺�',
  `zgxm`	varchar(50)		default null		comment 'ְ������',
  `ywlx`	char(6)			default null		comment 'ҵ������',
  `pzh`		char(50)		default null		comment 'ƾ֤��',
  `dwzh`	char(50)		default null		comment '��λ�������˺�',
  `cnlsh`	char(50)		default null		comment '������ˮ��',		
  `yh`		char(10)		default null		comment '��������',
  `fse`		decimal(18,2)		default null		comment '������',
  `zhye`	decimal(18,2)		default null		comment '�˻����',
  `sfcz`	char(20)		default null		comment '�Ƿ����',
  `rzry`	char(10)		default null		comment '������Ա',
  `rzrq`	char(8)			default null		comment '��������',
  `grjcbl`	decimal(18,2)		default null		comment '���˽ɴ����',
  `dwjcbl`	decimal(18,2)		default null		comment '��λ�ɴ����',
  `tqyydm`	char(2)			default null		comment '��ȡԭ�����',
  `tqyy`	varchar(50)		default null		comment '��ȡԭ��',
  `grfse`	decimal(18,2)		default null		comment '���˷�����',	
  `dwfse`	decimal(18,2)		default null		comment '��λ������',	
  `zje`		decimal(18,2)		default null		comment '���Ӷ�',
  `jse`		decimal(18,2)		default null		comment '���ٶ�',
  `ye`		decimal(18,2)		default null		comment '���',	
  `snjzye`	decimal(18,2)		default null		comment '�����ת���',
  `qnjzye`	decimal(18,2)		default null		comment 'ǰ���ת���',
  `fslx`	decimal(18,2)		default null		comment '������Ϣ',
  `lsh`		char(50)		default null		comment '��ˮ��',
  `czsj`	date			default null		comment '����ʱ��',
  `zh`		varchar(60)		default null		comment '���˴����ʻ�',
  `cxlx`	varchar(16)		default null		comment '��������',
  `yhhm`	varchar(30)		default null		comment '���л���',
  `zqfs`	varchar(100)		default null		comment '֧ȡ��ʽ',
  `zrzxqc`	varchar(60)		default null		comment 'ת���������ȫ��',
  `zrzxkhyh`	varchar(100)		default null		comment 'ת��������Ŀ�������',
  `zrzxzh`	varchar(100)		default null		comment 'ת����������˺�',
  `zrdwdjh`	varchar(16)		default null		comment 'ת�뵥λ�ǼǺ�',
  `zrsfzh`	varchar(30)		default null		comment 'ת����˹������ʺ�',
  `zcdwdjh`	varchar(16)		default null		comment 'ת����λ�ǼǺ�',
  `zcsfzh`	varchar(30)		default null		comment 'ת�����˹������ʺ�',
  `bfzqhq`	decimal(18,2)		default null		comment '����֧ȡ����',
  `bfzqdq`	decimal(18,2)		default null		comment '����֧ȡ����',
  primary key (`id`),
  unique key `idx_id` (`id`),
  key `idx_zxbhdm` (`zxbhdm`),
  key `idx_jgh` (`jgh`),
  key `idx_cnlsh` (`cnlsh`),
  key `idx_dwzh` (`dwzh`),
  key `idx_grzh` (`grzh`)
) engine=innodb default charset=gbk comment='������ϸ��������ȡ���ɴ�ҵ����ϸ��';

/*
 * ===========================================================
 *   table��gjjjg_m_gj_ndjx
 *   ��������: ��Ƚ�Ϣ
 *   �����ˣ�  ���
 *   �������ڣ�2011.12.26
 *   �޸��ˣ�
 *   �޸����ڣ�
 *   �޸����ݣ�
 * ===========================================================
 */

drop table if exists `gjjjg_m_gj_ndjx`;

create table `gjjjg_m_gj_ndjx` (
  `id`		int(15)			not null auto_increment comment '����id',
  `zxbhdm`	char(15)		default null		comment '���ı�Ŵ���',
  `cjsj`	date			default null		comment '����ʱ��',
  `jgh`		char(50)		default null		comment	'������',
  `jznd`	char(4)			default null		comment '��ת���',
  `dwzh`	char(50)		default null		comment '��λ�˺�',
  `grzh`	char(50)		default null		comment '�����˺�',
  `snye`	decimal(18,2)		default null		comment	'�������',
  `snjs`	decimal(18,2)		default null		comment	'�������',
  `snlx`	decimal(18,2)		default null		comment	'������Ϣ',
  `snll`	decimal(18,2)		default null		comment	'��������',
  `bnye`	decimal(18,2)		default null		comment	'�������',
  `bnjs`	decimal(18,2)		default null		comment	'�������',
  `bnlx`	decimal(18,2)		default null		comment	'������Ϣ',
  `bnll`	decimal(18,2)		default null		comment	'��������',
  `bjze`	decimal(18,2)		default null		comment	'�����ܶ�',
  `lxze`	decimal(18,2)		default null		comment	'��Ϣ�ܶ�',
  `jzye`	decimal(18,2)		default null		comment	'��ת���',
  `jzrq`	char(8)			default null		comment '��ת����',
  `czry`	char(20)		default null		comment '������Ա',
  `ljjc`	decimal(18,2)		default null		comment	'�ۼƽɴ�',
  `lnjc`	decimal(18,2)		default null		comment	'����ɴ�',
  `dnjc`	decimal(18,2)		default null		comment	'����ɴ�',
  `ljzq`	decimal(18,2)		default null		comment	'�ۼ�֧ȡ',
  `lnzq`	decimal(18,2)		default null		comment	'����֧ȡ',
  `dnzq`	decimal(18,2)		default null		comment	'����֧ȡ',
  `ygz`		decimal(18,2)		default null		comment	'�¹���',
  `yjc`		decimal(18,2)		default null		comment	'�½ɴ�',
  `grzt`	char(6)			default null		comment '����״̬',
  primary key (`id`),
  unique key `idx_id` (`id`),
  key `idx_zxbhdm` (`zxbhdm`)
) engine=innodb default charset=gbk comment='��Ƚ�Ϣ��';

/*
 * ===========================================================
 *   table��gjjjg_m_js_cnls
 *   ��������: ������ˮ
 *   �����ˣ�  ���
 *   �������ڣ�2011.12.26
 *   �޸��ˣ�
 *   �޸����ڣ�
 *   �޸����ݣ�
 * ===========================================================
 */

drop table if exists `gjjjg_m_js_cnls`;

create table `gjjjg_m_js_cnls` (
  `id`		int(15)			not null auto_increment comment '����id',
  `zxbhdm`	char(15)		default null		comment '���ı�Ŵ���',
  `cjsj`	date			default null		comment '����ʱ��',
  `jgh`		char(50)		default null		comment	'������',
  `ny`		char(8)			default null		comment '����',
  `lsh`		char(50)		default null		comment	'������ˮ��',
  `zhdm`	char(10)		default null		comment 'ר������',
  `je`		decimal(18,2)		default null		comment	'���',
  `jdfx`	char(2)			default null		comment '�������',
  `pjh`		char(50)		default null		comment	'Ʊ�ݺ�',
  `zy`		char(50)		default null		comment 'ժҪ',
  `rzsj`	char(8)			default null		comment '����ʱ��',
  `czsj`	char(8)			default null		comment '����ʱ��',
  `czy`		char(20)		default null		comment '����Ա',
  `kjpzny`	char(8)			default null		comment 'ƾ֤��������',
  `sfcz`	char(50)		default null		comment	'�Ƿ����',
  `lx`		char(2)			default null		comment 'ҵ������',
  `cnzt`	char(2)			default null		comment '����״̬',
  `rzzt`	char(2)			default null		comment '����״̬',
  `pzh`		char(50)		default null		comment	'ƾ֤��',
  primary key (`id`),
  unique key `idx_id` (`id`),
  key `idx_zxbhdm` (`zxbhdm`),
  key `idx_jgh` (`jgh`),
  key `idx_lsh` (`lsh`),
  key `idx_pzh` (`pzh`)
) engine=innodb default charset=gbk comment='������ˮ��';

/*
 * ===========================================================
 *   table��gjjjg_m_js_jsjyls
 *   ��������: ������ˮ
 *   �����ˣ�  ���
 *   �������ڣ�2011.12.26
 *   �޸��ˣ�
 *   �޸����ڣ�
 *   �޸����ݣ�
 * ===========================================================
 */

drop table if exists `gjjjg_m_js_jsjyls`;

create table `gjjjg_m_js_jsjyls` (
  `id`		int(15)			not null		comment '����id',
  `zxbhdm`	char(15)		default null		comment '���ı�Ŵ���',
  `cjsj`	date			default null		comment '����ʱ��',
  `ywlsh`	char(50)		default null		comment	'ҵ����ˮ��',
  `ywfsrq`	char(8)			default null		comment 'ҵ��������',
  `ywlx`	char(2)			default null		comment 'ҵ������',
  `ywpzlx`	varchar(32)		default null		comment 'ҵ��ƾ֤����',
  `ywpzhm`	varchar(32)		default null		comment 'ҵ��ƾ֤����',
  `ywzy`	varchar(60)		default null		comment 'ҵ��ժҪ',
  `jslsh`	char(50)		default null		comment	'������ˮ��',
  `jsje`	decimal(18,2)		default null		comment '������',
  `jsrq`	char(8)			default null		comment '��������',
  `jsyhdm`	char(3)			default null		comment '�������д���',
  `fkyhdm`	char(12)		default null		comment '�������д���',
  `fkwzh`	varchar(34)		default null		comment '�������˻�',
  `fkrhm`	varchar(60)		default null		comment '�����˻���',
  `fkrdz`	varchar(80)		default null		comment '�����˵�ַ',
  `fkzhxz`	char(1)			default null		comment '�����˻�����',
  `skyhdm`	char(12)		default null		comment '�տ����д���',
  `skwzh`	varchar(34)		default null		comment '�տ����˻�',
  `skrhm`	varchar(60)		default null		comment '�տ��˻���',
  `skrdz`	varchar(80)		default null		comment '�տ��˵�ַ',
  `skzhxz`	char(1)			default null		comment '�տ��˻�����',
  `clzt`	char(2)			default null		comment '����״̬',
  `yhlsh`	char(50)		default null		comment	'������ˮ��',
  `yhjyrq`	char(8)			default null		comment '���н�������',
  `yhfhxx`	varchar(60)		default null		comment '���з�����Ϣ',
  `jgh`		char(50)		default null		comment '������',
  primary key (`id`),
  unique key `idx_id` (`id`),
  key `idx_zxbhdm` (`zxbhdm`),
  key `idx_jgh` (`jgh`),
  key `idx_jslsh` (`jslsh`)
) engine=innodb default charset=gbk comment='���㽻����ˮ��';

/*
 * ===========================================================
 *   table��gjjjg_m_yh_zjzhye
 *   ��������: ��ͬ��������Ϣ��
 *   �����ˣ�  ������
 *   �������ڣ�2012.01.09
 *   �޸��ˣ�
 *   �޸����ڣ�
 *   �޸����ݣ�
 * ===========================================================
 */

drop table if exists `gjjjg_m_tj_zjzhye`;

create table `gjjjg_m_tj_zjzhye` (
  `id`		int(11)			not null auto_increment comment '����id',
  `zxbhdm`	char(15)		default null		comment '���ı�Ŵ���',
  `cjsj`	date			default null		comment '����ʱ��',
  `yh_dm`	char(2)			default null		comment '���д���',
  `zhye`	decimal(18,2)		default '0.00'		comment '�˻����',
  `kmbm`	char(50)		default null		comment '��Ŀ���',
  primary key (`id`)
) engine=innodb default charset=gbk;

/*
 * ===========================================================
 *   table��gjjjg_m_yh_yhzjjyls
 *   ��������: ��������������ˮ
 *   �����ˣ�  ���
 *   �������ڣ�2011.12.26
 *   �޸��ˣ�
 *   �޸����ڣ�
 *   �޸����ݣ�
 * ===========================================================
 */

drop table if exists `gjjjg_m_yh_yhzjjyls`;

create table `gjjjg_m_yh_yhzjjyls` (
  `id`		int(15)			not null auto_increment comment '����id',
  `zxbhdm`	char(15)		default null		comment '���ı�Ŵ���',
  `cjsj`	date			default null		comment '����ʱ��',
  `zjlsh`	char(50)		default null		comment '������ˮ��',
  `jyrq`	char(8)			default null		comment '��������',
  `jyje`	decimal(18,2)		default null		comment '���׽��',
  `sfzh`	varchar(30)		default null		comment '�շ��˺�',
  `sfmc`	varchar(200)		default null		comment '�շ�����',
  `ffzh`	varchar(30)		default null		comment '�����˺�',
  `ffmc`	varchar(200)		default null		comment '��������',
  `yhbhdm`	char(50)		default null,
  primary key (`id`),
  unique key `idx_id` (`id`),
  key `idx_zxbhdm` (`zxbhdm`),
  key `idx_zjlsh` (`zjlsh`)
) engine=innodb default charset=gbk comment='��������������ˮ��';

/*
 * ===========================================================
 *   table��gjjjg_m_yh_yhzjywpt
 *   ��������: ��������ҵ��ƽ̨
 *   �����ˣ�  ���
 *   �������ڣ�2011.12.26
 *   �޸��ˣ�
 *   �޸����ڣ�
 *   �޸����ݣ�
 * ===========================================================
 */

drop table if exists `gjjjg_m_yh_yhzjywpt`;

create table `gjjjg_m_yh_yhzjywpt` (
  `id`		int(15)			not null auto_increment		comment '����id',         
  `zxbhdm`	char(15)		default null			comment '���ı�Ŵ���',   
  `cjsj`	date			default null			comment '����ʱ��',       
  `zxbh`	char(50)		default null			comment '���ı��',       
  `zxlsh`	char(50)		default null			comment '������ˮ��',     
  `yhlsh`	char(50)		default null			comment '������ˮ��',     
  `zjlsh`	char(50)		default null			comment '������ˮ��',     
  `jkhth`	char(50)		default null			comment '����ͬ��',     
  `zxzh`	char(50)		default null			comment '�����˺�',       
  `zxkhhm`	varchar(100)		default null			comment '���Ŀͻ�����',   
  `khmc`	varchar(50)		default null			comment '���пͻ�����',   
  `khzh`	char(30)		default null			comment '���пͻ��˺�',   
  `je`		decimal(18,2)		default null			comment '���',           
  `bj`		decimal(18,2)		default null			comment '����',           
  `lx`		decimal(18,2)		default null			comment '��Ϣ',           
  `fx`		decimal(18,2)		default null			comment '��Ϣ',           
  `jyrq`	char(8)			default null			comment '��������',       
  `ywlx`	char(2)			default null			comment 'ҵ������',       
  `yhbh_dm`	char(50)		default null			comment '���б�Ŵ���',   
  `pzh`		char(50)		default null			comment 'ƾ֤��',         
  primary key (`id`),
  unique key `idx_id` (`id`),
  key `idx_zxbh_dm` (`zxbhdm`),
  key `idx_ywlx` (`ywlx`),
  key `idx_zxbh` (`zxbh`),
  key `idx_zxzh` (`zxzh`),
  key `idx_zxlsh` (`zxlsh`),
  key `idx_pzh` (`pzh`)
) engine=innodb default charset=gbk comment='�����м�ҵ��ƽ̨��';

/*
 * ===========================================================
 *   table��log_crawlcloud
 *   ��������:��ƽ̨ץ����־
 *   �����ˣ�  ���
 *   �������ڣ�2011.10.28
 *   �޸��ˣ�������
 *   �޸����ڣ�2011.12.26
 *   �޸����ݣ�������ṹ
 * ===========================================================
 */

drop table if exists `log_crawlcloud`;

create table `log_crawlcloud` (
  `id`		int(15)			not null auto_increment comment '����,������',
  `sql_id`	varchar(200)		default	null		comment '��ǰ������sql_id',
  `content`	varchar(500)		default null		comment '��������˵��',
  `createtime`	char(50)		default null		comment '���ʱ��,��ȷ������',
  `pageno`	int(15)			default null		comment '��ǰ������sql_id��Ӧ����������ҳ��',
  `datacount`	 int(50)		default null		comment '��ҳ����������',
  primary key (`id`)
) engine=innodb auto_increment=5 default charset=gbk;

/*
 * ===========================================================
 *   table��log_scan
 *   ��������: ɨ����־��
 *   �����ˣ�  ���
 *   �������ڣ�2011.12.26
 *   �޸��ˣ�
 *   �޸����ڣ�
 *   �޸����ݣ�
 * ===========================================================
 */

drop table if exists `log_scan`;

create table `log_scan` (
  `id`			int(11)			not null auto_increment comment '����id',
  `zxbhdm`		char(15)		not null		comment '���ı�Ŵ���',
  `ywlx`		char(15)		not null		comment 'ҵ������',
  `scanlx`		char(200)		not null		comment 'ɨ���㷨����',
  `createdate`		char(50)		not null		comment '����ʱ��,��ȷ����',
  `datanum`		int(10)			not null		comment '���ݱ仯��',
  `code`		char(50)		default null		comment '���',
  `bz`			varchar(500)		default null		comment '��ע',
  `operator`		char(20)		default null		comment '��������',
  `operatordate`	char(30)		default null		comment '����ʱ��',
  `tablename`		char(50)		default null		comment '�������ݿ��',
  primary key (`id`),
  unique key `index_id` (`id`)
) engine=innodb default charset=gbk;

/*
 * ===========================================================
 *   table��scan_job
 *   ��������: ɨ�������
 *   �����ˣ�  ���
 *   �������ڣ�2011.12.26
 *   �޸��ˣ�
 *   �޸����ڣ�
 *   �޸����ݣ�
 * ===========================================================
 */

drop table if exists `scan_job`;
create table `scan_job` (
  `id`		int(11)		not null auto_increment comment '����id',
  `zxbhdm`	char(15)	not null		comment '���ı�Ŵ���',
  `ywlx`	char(15)	not null		comment 'ҵ������',
  `scan`	char(20)	not null		comment 'ɨ���㷨����',
  `yxbj`	char(1)		not null		comment '��Ч���:1,ʹ��;0,δʹ��',
  primary key (`id`)
) engine=innodb auto_increment=10 default charset=gbk;

/*
 * ===========================================================
 *   table��datadistribute_route
 *   ��������:���ݷַ�·�ɱ�
 *   �����ˣ�  ������
 *   �������ڣ�2011.10.18
 *   �޸��ˣ�������
 *   �޸����ڣ�2011.12.26
 *   �޸����ݣ�������ṹ
 * ===========================================================
 */
drop table if exists `datadistribute_route`;
create table `datadistribute_route` (
  `id`		int(15)		not null auto_increment		comment 'id',
  `zxbhdm`	char(15)	not null			comment '���ı�Ŵ���',
  `zxbhmc`	char(100)	not null			comment '��������',
  `ip`		char(50)	not null			comment '��ַ',
  `port`	char(50)	not null			comment '�˿�',
  `url`		char(50)	not null			comment 'url',
  `username`	char(50)	        			comment '�û���',
  `password`	char(50)	        			comment '����',
  `methodname`	char(50)	        			comment '������',
  `type`	char(2)		not null			comment '����',
  `yxbz`	char(1)		not null			comment '��Ч��־',
  primary key (`id`)
) engine=innodb default charset=gbk;
/*
 * ===========================================================
 *   table��`datadistribute_type`
 *   ��������:���ݷַ���ʽ
 *   �����ˣ�  ������
 *   �������ڣ�2012.06.11
 *   �޸��ˣ�
 *   �޸����ڣ�
 *   �޸����ݣ�
 * ===========================================================
 */
drop table if exists `datadistribute_type`;
create table `datadistribute_type` (
  `typeid`		char(2)		not null 		comment 'id',
  `typename`		char(30)				comment 'ip��ַ',
  primary key (`typeid`)
) engine=innodb default charset=gbk;
insert into `datadistribute_type` values('01','WEBSERVICE');

/*
 * ===========================================================
 *   table��datatrans_log
 *   ��������:���ݷ���ƽ̨��־
 *   �����ˣ�  ������
 *   �������ڣ�2011.10.18
 *   �޸��ˣ�������
 *   �޸����ڣ�2011.12.26
 *   �޸����ݣ�������ṹ
 * ===========================================================
 */
drop table if exists `datatrans_log`;
create table `datatrans_log` (
  `id`		int(15)		not null auto_increment		comment 'id',
  `ip`		char(30)					comment 'ip��ַ',
  `datetime`	char(50)	not null			comment 'ʱ��',
  `level`	char(10)	not null			comment '����',
  `classname`	char(100)	not null			comment '��־�����',
  `threadname`	char(50)					comment '�߳�',
  `methodname`	char(50)					comment '��������',
  `line`	char(100)					comment '����',
  `message`	varchar(2000)	        			comment '��־��Ϣ',
  primary key (`id`)
) engine=innodb default charset=gbk;