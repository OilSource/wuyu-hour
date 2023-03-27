alter table mh_hour_detail add column approve_status tinyint default 0 COMMENT '审批状态，0:待审批,1:批准,-1:拒绝'

alter table mh_hour_detail add column approve_status tinyint default 0 COMMENT '审批状态，0:待审批,1:批准,-1:拒绝'