package com.oaker.common.utils;

import org.apache.commons.lang3.time.DateFormatUtils;

import java.time.Duration;
import java.time.Instant;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.Period;
import java.time.ZoneId;
import java.time.temporal.ChronoUnit;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.stream.Stream;

import static java.util.stream.Collectors.toList;

/**
 * created by fuyd on 2019/3/12
 */
public class FestivalsUtil {

    private static final String FORMAT_YMD = "yyyy-MM-dd";

    public enum WeekEnum {
        /**
         * 周一
         */
        MONDAY(1),
        /**
         * 周二
         */
        TUESDAY(2),

        /**
         * 周三
         */
        WEDNESDAY(3),
        /**
         * 周四
         */
        THURSDAY(4),
        /**
         * 周五
         */
        FRIDAY(5),
        /**
         * 周六
         */
        SATURDAY(6),
        /**
         * 周日
         */
        SUNDAY(7);

        private final int value;

        WeekEnum(int value) {
            this.value = value;
        }

        public int value() {
            return value;
        }
    }


    /**
     * 获取两个时间内所有日期
     *
     * @param start 开始日期 {@link Date}
     * @param end   结束日期 {@link Date}
     */
    public static List<LocalDate> interval(Date start, Date end) {
        LocalDate startDate = FestivalsUtil.toLocalDateTime(start).toLocalDate();
        LocalDate endDate = FestivalsUtil.toLocalDateTime(end).toLocalDate();
        return FestivalsUtil.interval(startDate, endDate);
    }

    /**
     * 获取两个时间内所有日期
     *
     * @param start 开始日期 {@link String}
     * @param end   结束日期 {@link String}
     */
    public static List<LocalDate> interval(String start, String end) {
        LocalDate startDate = LocalDate.parse(start);
        LocalDate endDate = LocalDate.parse(end);
        return FestivalsUtil.interval(startDate, endDate);
    }

    /**
     * 获取两个时间内所有日期
     *
     * @param start 开始日期 {@link LocalDate}
     * @param end   结束日期 {@link LocalDate}
     */
    public static List<LocalDate> interval(LocalDate start, LocalDate end) {
        long between = ChronoUnit.DAYS.between(start, end);
        if (between < 0) {
            return new ArrayList<>();
        }
        return Stream.iterate(start, localDate -> localDate.plusDays(1)).limit(between + 1).collect(toList());
    }

    /**
     * 获取两个时间相差多少小时
     *
     * @param start 开始日期 {@link LocalDateTime}
     * @param end   结束日期  {@link LocalDateTime}
     */
    public static long betweenHours(LocalDateTime start, LocalDateTime end) {
        Duration between = Duration.between(start, end);
        return between.toHours();
    }

    /**
     * 获取两个时间相差多少小时
     *
     * @param start 开始日期 {@link Date}
     * @param end   结束日期 {@link Date}
     */
    public static long betweenHours(Date start, Date end) {
        Duration between = Duration.between(FestivalsUtil.toLocalDateTime(start), FestivalsUtil.toLocalDateTime(end));
        return between.toHours();
    }

    /**
     * 获取两个时间相差多少小时
     *
     * @param start 开始日期 {@link String}
     * @param end   结束日期 {@link String}
     */
    public static long betweenHours(String start, String end) {
        Duration between = Duration.between(LocalDateTime.parse(start), LocalDateTime.parse(end));
        return between.toHours();
    }

    /**
     * 获取两个时间相差多少分钟
     *
     * @param start 开始日期 {@link LocalDateTime}
     * @param end   结束日期  {@link LocalDateTime}
     */
    public static long betweenMinutes(LocalDateTime start, LocalDateTime end) {
        Duration between = Duration.between(start, end);
        return between.toMinutes();
    }

    /**
     * 获取两个时间相差多少分钟
     *
     * @param start 开始日期 {@link Date}
     * @param end   结束日期 {@link Date}
     */
    public static long betweenMinutes(Date start, Date end) {
        Duration between = Duration.between(FestivalsUtil.toLocalDateTime(start), FestivalsUtil.toLocalDateTime(end));
        return between.toMinutes();
    }

    /**
     * 获取两个时间相差多少分钟
     *
     * @param start 开始日期 {@link String}
     * @param end   结束日期 {@link String}
     */
    public static long betweenMinutes(String start, String end) {
        Duration between = Duration.between(LocalDateTime.parse(start), LocalDateTime.parse(end));
        return between.toMinutes();
    }

    /**
     * 获取两个时间相差多少天
     *
     * @param start 开始日期 {@link String}
     * @param end   结束日期 {@link String}
     */
    public static long betweenDays(String start, String end) {
        Period between = Period.between(LocalDate.parse(start), LocalDate.parse(end));
        return between.getDays();
    }

    /**
     * 获取两个时间相差多少天
     *
     * @param start 开始日期 {@link LocalDate}
     * @param end   结束日期 {@link LocalDate}
     */
    public static long betweenDays(LocalDate start, LocalDate end) {
        Period between = Period.between(start, end);
        return between.getDays();
    }

    /**
     * 获取两个时间相差多少天
     *
     * @param start 开始日期 {@link Date}
     * @param end   结束日期 {@link Date}
     */
    public static long betweenDays(Date start, Date end) {
        LocalDate startDate = FestivalsUtil.toLocalDateTime(start).toLocalDate();
        LocalDate endDate = FestivalsUtil.toLocalDateTime(end).toLocalDate();
        return FestivalsUtil.betweenDays(startDate, endDate);
    }


    /**
     * 是否是周末
     *
     * @param date 日期 {@link LocalDate}
     */
    public static boolean isWeekend(LocalDate date) {
        int value = date.getDayOfWeek().getValue();
        return WeekEnum.SATURDAY.value == value || WeekEnum.SUNDAY.value == value;
    }

    /**
     * 是否是周末
     *
     * @param ymd 日期 {@link String}
     */
    public static boolean isWeekend(String ymd) {
        LocalDate date = LocalDate.parse(ymd);
        return FestivalsUtil.isWeekend(date);
    }

    /**
     * 是否是周末
     *
     * @param date 日期 {@link Date}
     */
    public static boolean isWeekend(Date date) {
        return FestivalsUtil.isWeekend(FestivalsUtil.toLocalDateTime(date).toLocalDate());
    }

    /**
     * 时间格式化
     *
     * @param date
     * @param ymd
     * @return
     */
    public static String formater(Date date, String ymd) {
        return DateFormatUtils.format(date, ymd);
    }

    /**
     * date转换LocaldateTime
     * @param date 日期 {@link Date}
     */
    private static LocalDateTime toLocalDateTime(Date date) {
        Instant instant = date.toInstant();
        ZoneId zoneId = ZoneId.systemDefault();
        return instant.atZone(zoneId).toLocalDateTime();
    }

}
