SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for sys_holiday
-- ----------------------------
DROP TABLE IF EXISTS `sys_holiday`;
CREATE TABLE `sys_holiday`  (
    `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
    `year` int(0) NULL DEFAULT NULL COMMENT '年份',
    `month` int(0) NULL DEFAULT NULL COMMENT '月份',
    `day` int(0) NULL DEFAULT NULL COMMENT '日',
    `date` date NULL DEFAULT NULL COMMENT '日期',
    `holiday` tinyint(0) NULL DEFAULT NULL COMMENT '是否法定节日期标识,1:是,0:否',
    `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
    PRIMARY KEY (`id`) USING BTREE,
    UNIQUE INDEX `sys_holiday_index_date`(`date`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '节假日信息表' ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;

INSERT INTO `jx_project_dev`.`sys_menu`(`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES (2077, '节假日管理', 2000, 10, 'holiday', 'manager/holiday', 1, 0, 'C', '0', '0', 'system:holiday:page', 'date-range', 'admin', '2022-11-15 14:31:22', 'admin', '2022-11-15 14:33:13', '');

INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (4, 2019, 4, 5, '2019-04-05', 1, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (5, 2019, 5, 1, '2019-05-01', 1, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (6, 2019, 5, 2, '2019-05-02', 1, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (7, 2019, 5, 3, '2019-05-03', 1, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (8, 2019, 5, 4, '2019-05-04', 1, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (9, 2019, 6, 7, '2019-06-07', 1, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (10, 2019, 9, 13, '2019-09-13', 1, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (11, 2019, 10, 1, '2019-10-01', 1, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (12, 2019, 10, 2, '2019-10-02', 1, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (13, 2019, 10, 3, '2019-10-03', 1, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (14, 2019, 10, 4, '2019-10-04', 1, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (15, 2019, 10, 5, '2019-10-05', 1, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (16, 2019, 10, 6, '2019-10-06', 1, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (17, 2019, 10, 7, '2019-10-07', 1, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (18, 2020, 1, 1, '2020-01-01', 1, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (19, 2020, 1, 24, '2020-01-24', 1, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (20, 2020, 1, 25, '2020-01-25', 1, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (21, 2020, 1, 26, '2020-01-26', 1, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (22, 2020, 1, 27, '2020-01-27', 1, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (23, 2020, 1, 28, '2020-01-28', 1, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (24, 2020, 1, 29, '2020-01-29', 1, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (25, 2020, 1, 30, '2020-01-30', 1, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (26, 2020, 4, 4, '2020-04-04', 1, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (27, 2020, 4, 5, '2020-04-05', 1, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (28, 2020, 4, 6, '2020-04-06', 1, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (29, 2020, 5, 1, '2020-05-01', 1, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (30, 2020, 5, 2, '2020-05-02', 1, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (31, 2020, 5, 3, '2020-05-03', 1, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (32, 2020, 5, 4, '2020-05-04', 1, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (33, 2020, 5, 5, '2020-05-05', 1, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (34, 2020, 6, 25, '2020-06-25', 1, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (35, 2020, 6, 26, '2020-06-26', 1, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (36, 2020, 6, 27, '2020-06-27', 1, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (37, 2020, 10, 1, '2020-10-01', 1, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (38, 2020, 10, 2, '2020-10-02', 1, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (39, 2020, 10, 3, '2020-10-03', 1, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (40, 2020, 10, 4, '2020-10-04', 1, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (41, 2020, 10, 5, '2020-10-05', 1, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (42, 2020, 10, 6, '2020-10-06', 1, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (43, 2020, 10, 7, '2020-10-07', 1, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (44, 2020, 10, 8, '2020-10-08', 1, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (45, 2021, 1, 1, '2021-01-01', 1, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (46, 2021, 1, 2, '2021-01-02', 1, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (47, 2021, 1, 3, '2021-01-03', 1, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (48, 2021, 2, 11, '2021-02-11', 1, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (49, 2021, 2, 12, '2021-02-12', 1, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (50, 2021, 2, 13, '2021-02-13', 1, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (51, 2021, 2, 14, '2021-02-14', 1, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (52, 2021, 2, 15, '2021-02-15', 1, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (53, 2021, 2, 16, '2021-02-16', 1, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (54, 2021, 2, 17, '2021-02-17', 1, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (55, 2021, 4, 3, '2021-04-03', 1, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (56, 2021, 4, 4, '2021-04-04', 1, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (57, 2021, 4, 5, '2021-04-05', 1, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (58, 2021, 5, 1, '2021-05-01', 1, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (59, 2021, 5, 2, '2021-05-02', 1, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (60, 2021, 5, 3, '2021-05-03', 1, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (61, 2021, 5, 4, '2021-05-04', 1, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (62, 2021, 5, 5, '2021-05-05', 1, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (63, 2021, 6, 12, '2021-06-12', 1, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (64, 2021, 6, 13, '2021-06-13', 1, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (65, 2021, 6, 14, '2021-06-14', 1, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (66, 2021, 9, 19, '2021-09-19', 1, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (67, 2021, 9, 20, '2021-09-20', 1, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (68, 2021, 9, 21, '2021-09-21', 1, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (69, 2021, 10, 1, '2021-10-01', 1, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (70, 2021, 10, 2, '2021-10-02', 1, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (71, 2021, 10, 3, '2021-10-03', 1, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (72, 2021, 10, 4, '2021-10-04', 1, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (73, 2021, 10, 5, '2021-10-05', 1, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (74, 2021, 10, 6, '2021-10-06', 1, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (75, 2021, 10, 7, '2021-10-07', 1, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (76, 2022, 1, 1, '2022-01-01', 1, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (77, 2022, 1, 2, '2022-01-02', 1, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (78, 2022, 1, 3, '2022-01-03', 1, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (79, 2022, 1, 31, '2022-01-31', 1, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (80, 2022, 2, 1, '2022-02-01', 1, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (81, 2022, 2, 2, '2022-02-02', 1, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (82, 2022, 2, 3, '2022-02-03', 1, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (83, 2022, 2, 4, '2022-02-04', 1, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (84, 2022, 2, 5, '2022-02-05', 1, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (85, 2022, 2, 6, '2022-02-06', 1, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (86, 2022, 4, 3, '2022-04-03', 1, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (87, 2022, 4, 4, '2022-04-04', 1, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (88, 2022, 4, 5, '2022-04-05', 1, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (89, 2022, 4, 30, '2022-04-30', 1, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (90, 2022, 5, 1, '2022-05-01', 1, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (91, 2022, 5, 2, '2022-05-02', 1, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (92, 2022, 5, 3, '2022-05-03', 1, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (93, 2022, 5, 4, '2022-05-04', 1, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (94, 2022, 6, 3, '2022-06-03', 1, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (95, 2022, 6, 4, '2022-06-04', 1, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (96, 2022, 6, 5, '2022-06-05', 1, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (97, 2022, 9, 10, '2022-09-10', 1, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (98, 2022, 9, 11, '2022-09-11', 1, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (99, 2022, 9, 12, '2022-09-12', 1, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (100, 2022, 10, 1, '2022-10-01', 1, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (101, 2022, 10, 2, '2022-10-02', 1, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (102, 2022, 10, 3, '2022-10-03', 1, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (103, 2022, 10, 4, '2022-10-04', 1, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (104, 2022, 10, 5, '2022-10-05', 1, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (105, 2022, 10, 6, '2022-10-06', 1, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (106, 2022, 10, 7, '2022-10-07', 1, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (107, 2019, 4, 28, '2019-04-28', 0, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (108, 2019, 5, 5, '2019-05-05', 0, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (109, 2019, 9, 26, '2019-09-26', 0, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (110, 2019, 10, 12, '2019-10-12', 0, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (111, 2020, 1, 19, '2020-01-19', 0, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (112, 2020, 2, 1, '2020-02-01', 0, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (113, 2020, 4, 26, '2020-04-26', 0, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (114, 2020, 5, 9, '2020-05-09', 0, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (115, 2020, 6, 28, '2020-06-28', 0, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (116, 2020, 9, 27, '2020-09-27', 0, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (117, 2020, 10, 10, '2020-10-10', 0, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (118, 2021, 10, 9, '2021-10-09', 0, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (119, 2021, 9, 18, '2021-09-18', 0, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (120, 2021, 9, 26, '2021-09-26', 0, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (121, 2021, 5, 8, '2021-05-08', 0, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (122, 2021, 2, 7, '2021-02-07', 0, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (123, 2021, 2, 20, '2021-02-20', 0, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (124, 2022, 1, 29, '2022-01-29', 0, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (125, 2022, 1, 30, '2022-01-30', 0, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (126, 2022, 4, 2, '2022-04-02', 0, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (127, 2022, 4, 24, '2022-04-24', 0, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (128, 2022, 5, 7, '2022-05-07', 0, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (129, 2022, 10, 8, '2022-10-08', 0, '2022-11-15 17:55:11');
INSERT INTO `jx_project_dev`.`sys_holiday`(`id`, `year`, `month`, `day`, `date`, `holiday`, `create_time`) VALUES (130, 2022, 10, 9, '2022-10-09', 0, '2022-11-15 17:55:11');
