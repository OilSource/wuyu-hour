alter table mh_hour_detail add column approve_status tinyint default 0 COMMENT '审批状态，0:待审批,1:批准,-1:拒绝'

alter table mh_hour_detail add column work_overtime_hour double(20,2) default 0 COMMENT '加班工时'

alter table mh_hour_detail add column change_hour double(20,2) default 0 COMMENT '变更工时'

alter table mh_hour_detail add column time_off_hour double(20,2) default 0 COMMENT '调休工时'

alter table mh_hour_detail add column leave_hour double(20,2) default 0 COMMENT '请假工时'

alter table mh_user_hour add column fill_hour double(20,2) default 0 COMMENT '已填工时'

