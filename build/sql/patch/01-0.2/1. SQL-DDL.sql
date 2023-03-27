DROP TABLE IF EXISTS `mh_work_type`;
CREATE TABLE `mh_work_type`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '业务类型',
  `deleted` tinyint(0) NULL DEFAULT NULL COMMENT '删除标识0:未删除,1:已删除',
  `create_user` bigint(0) NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '工作类型' ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for mh_hour_detail_sub
-- ----------------------------
DROP TABLE IF EXISTS `mh_hour_detail_sub`;
CREATE TABLE `mh_hour_detail_sub`  (
    `id` bigint(0) NOT NULL COMMENT '主键',
    `detail_id` bigint(0) NULL DEFAULT NULL COMMENT '详情Id',
    `work_type_id` bigint(0) NULL DEFAULT NULL COMMENT '工作类型Id',
    `use_hour` double(20, 2) NULL DEFAULT 0.00 COMMENT '工时',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '工时填报详情表字表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mh_hour_detail_sub
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;