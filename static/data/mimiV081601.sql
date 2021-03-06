-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- 主机： 127.0.0.1
-- 生成日期： 2019-08-16 14:27:02
-- 服务器版本： 10.1.37-MariaDB
-- PHP 版本： 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `mimi`
--

-- --------------------------------------------------------

--
-- 表的结构 `mimi_details_min_iconlistall`
--

CREATE TABLE `mimi_details_min_iconlistall` (
  `d_icon_id` int(11) NOT NULL,
  `d_icon_name` varchar(64) CHARACTER SET utf8 NOT NULL,
  `d_icon_min_name` varchar(128) CHARACTER SET utf8 NOT NULL,
  `d_icon_min_title` varchar(128) CHARACTER SET utf8 NOT NULL,
  `d_icon_version` varchar(64) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `mimi_details_min_iconlistall`
--

INSERT INTO `mimi_details_min_iconlistall` (`d_icon_id`, `d_icon_name`, `d_icon_min_name`, `d_icon_min_title`, `d_icon_version`) VALUES
(1, '小米9', 'CPU', '骁龙855八核', '6GB+128GB'),
(2, '小米9', 'CPU主频', '最高2.84GHz', '6GB+128GB'),
(3, '小米9', '后置摄像头', '4800万+1200万+1600万像素', '6GB+128GB'),
(4, '小米9', '前置摄像头', '2000万像素', '6GB+128GB'),
(5, '小米9', '屏幕', '三星AMOLED 水滴全面屏', '6GB+128GB'),
(6, '小米9', '屏幕尺寸', '6.39英寸', '6GB+128GB'),
(7, '小米9', '屏幕分辨率', '2340×1080', '6GB+128GB'),
(8, '小米9', '运行内存', '6GB', '6GB+128GB'),
(9, '小米9', '存储容量', '128GB', '6GB+128GB'),
(10, '小米9', 'NFC', '支持', '6GB+128GB'),
(11, '小米9', '红外遥控', '支持', '6GB+128GB'),
(12, '小米9', '独立AI键', '支持', '6GB+128GB'),
(13, '小米9', '指纹识别', '第五代屏幕指纹', '6GB+128GB'),
(14, '小米9', '机身厚度', '7.61mm', '6GB+128GB'),
(15, '小米9', '电池容量', '3300mAh', '6GB+128GB'),
(16, '小米9', '电池充电', '无线闪充+有线闪充', '6GB+128GB'),
(17, '小米9', '网络类型', '4G全网通', '6GB+128GB'),
(18, '小米9', '网络模式', '双卡双待', '6GB+128GB'),
(19, '小米9', 'CPU', '骁龙855八核', '8GB+128GB'),
(20, '小米9', 'CPU主频', '最高2.84GHz', '8GB+128GB'),
(21, '小米9', '后置摄像头', '4800万+1200万+1600万像素', '8GB+128GB'),
(22, '小米9', '前置摄像头', '2000万像素', '8GB+128GB'),
(23, '小米9', '屏幕', '三星AMOLED 水滴全面屏', '8GB+128GB'),
(24, '小米9', '屏幕尺寸', '6.39英寸', '8GB+128GB'),
(25, '小米9', '屏幕分辨率', '2340×1080', '8GB+128GB'),
(26, '小米9', '运行内存', '8GB', '8GB+128GB'),
(27, '小米9', '存储容量', '128GB', '8GB+128GB'),
(28, '小米9', 'NFC', '支持', '8GB+128GB'),
(29, '小米9', '红外遥控', '支持', '8GB+128GB'),
(30, '小米9', '独立AI键', '支持', '8GB+128GB'),
(31, '小米9', '指纹识别', '第五代屏幕指纹', '8GB+128GB'),
(32, '小米9', '机身厚度', '7.61mm', '8GB+128GB'),
(33, '小米9', '电池容量', '3300mAh', '8GB+128GB'),
(34, '小米9', '电池充电', '无线闪充+有线闪充', '8GB+128GB'),
(35, '小米9', '网络类型', '4G全网通', '8GB+128GB'),
(36, '小米9', '网络模式', '双卡双待', '8GB+128GB'),
(37, '小米9', 'CPU', '骁龙855八核', '8GB+256GB'),
(38, '小米9', 'CPU主频', '最高2.84GHz', '8GB+256GB'),
(39, '小米9', '后置摄像头', '4800万+1200万+1600万像素', '8GB+256GB'),
(40, '小米9', '前置摄像头', '2000万像素', '8GB+256GB'),
(41, '小米9', '屏幕', '三星AMOLED 水滴全面屏', '8GB+256GB'),
(42, '小米9', '屏幕尺寸', '6.39英寸', '8GB+256GB'),
(43, '小米9', '屏幕分辨率', '2340×1080', '8GB+256GB'),
(44, '小米9', '运行内存', '8GB', '8GB+256GB'),
(45, '小米9', '存储容量', '256GB', '8GB+256GB'),
(46, '小米9', 'NFC', '支持', '8GB+256GB'),
(47, '小米9', '红外遥控', '支持', '8GB+256GB'),
(48, '小米9', '独立AI键', '支持', '8GB+256GB'),
(49, '小米9', '指纹识别', '第五代屏幕指纹', '8GB+256GB'),
(50, '小米9', '机身厚度', '7.61mm', '8GB+256GB'),
(51, '小米9', '电池容量', '3300mAh', '8GB+256GB'),
(52, '小米9', '电池充电', '无线闪充+有线闪充', '8GB+256GB'),
(53, '小米9', '网络类型', '4G全网通', '8GB+256GB'),
(54, '小米9', '网络模式', '双卡双待', '8GB+256GB');

-- --------------------------------------------------------

--
-- 表的结构 `mimi_details_recommend`
--

CREATE TABLE `mimi_details_recommend` (
  `d_recommend_id` int(11) NOT NULL,
  `p_name` varchar(64) CHARACTER SET utf8 NOT NULL,
  `d_recommend_src` varchar(128) CHARACTER SET utf8 NOT NULL,
  `d_recommend_name` varchar(128) CHARACTER SET utf8 NOT NULL,
  `d_recommend_price` int(11) NOT NULL,
  `p_info` varchar(128) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `mimi_details_recommend`
--

INSERT INTO `mimi_details_recommend` (`d_recommend_id`, `p_name`, `d_recommend_src`, `d_recommend_name`, `d_recommend_price`, `p_info`) VALUES
(1, '小米9', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/bd70ab28973cf8e77d99e12e189bca43.jpg', '小米9保护壳', 39, ''),
(2, '小米9', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/359ea83b7d915ec3c7c2234db78af64b.jpg', '小米9 贴膜', 19, ''),
(3, '小米9', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/97a4793a6a8192b999ecdc8fa1013e33.jpg', '27W高速快充', 59, ''),
(4, '小米9', 'https://i8.mifile.cn/b2c-mimall-media/751c071fb4b3a63af404a6980814b8a8.jpg', '分体蓝牙耳机', 199, ''),
(5, '小米9', 'https://cdn.cnbj0.fds.api.mi-img.com/b2c-mimall-media/484318ef4e069d5587b6526024fc6ebf.jpg', '蓝牙耳机Air', 379, '');

-- --------------------------------------------------------

--
-- 表的结构 `mimi_details_review`
--

CREATE TABLE `mimi_details_review` (
  `d_review_id` int(11) NOT NULL,
  `p_name` varchar(64) NOT NULL,
  `d_review_icon` varchar(128) NOT NULL,
  `d_review_name` varchar(128) NOT NULL,
  `d_review_time` varchar(128) NOT NULL,
  `d_review_zan` int(11) NOT NULL,
  `d_review_text` varchar(1024) NOT NULL,
  `d_review_imgList` varchar(1024) NOT NULL,
  `d_review_reply_icon` varchar(1024) NOT NULL,
  `d_review_reply_name` varchar(1024) NOT NULL,
  `d_review_reply_val` varchar(1024) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `mimi_details_review`
--

INSERT INTO `mimi_details_review` (`d_review_id`, `p_name`, `d_review_icon`, `d_review_name`, `d_review_time`, `d_review_zan`, `d_review_text`, `d_review_imgList`, `d_review_reply_icon`, `d_review_reply_name`, `d_review_reply_val`) VALUES
(1, '小米9', 'https://s1.mi-img.com/mfsv2/avatar/fdsc3/p01Byfmf3rk9/6NbsupoljsIpDD.jpg', 'シ华灯初上ミ旧人可安°', '2019-06-21', 65, '画质太清晰了，玩和平精英下面的书一目了然', 'https://i1.mifile.cn/a2/1561084401_2972019_s750_1000wh!240x241.jpg', 'http://www.zlpones.com/imgs/mi/icon/小米.png', '官方回复：', '越过山林，穿过薄雾，我愿意陪你等在湖海之畔，看月亮升起~感谢您对小米的支持 *★,°*:.☆(￣▽￣)/$:*.°★* '),
(2, '小米9', 'https://cdn.cnbj0.fds.api.mi-img.com/b2c-data-mishop/52cc4721e1eaed5af47af693906205c8.jpg', '22*63', '2019-08-01', 21, '买米9就是为了吃鸡，今天第一天上手，哇塞，很流畅，第一把就吃到鸡了，有了米9，原来吃鸡这么简单，之前的米6可以下岗了', 'https://i1.mifile.cn/a2/1564642694_6919954_s1080_2340wh!240x241.jpg~~~https://i1.mifile.cn/a2/1564642693_6538720_s1080_2340wh!240x241.jpg', 'http://www.zlpones.com/imgs/mi/icon/小米.png', '官方回复：', '以前喜欢一个女生她对我说，她喜欢会打游戏的男生，于是我发愤图强苦练游戏，过了两个月，我把那女孩忘得一-干二净了~感谢您对小米的支持。'),
(3, '小米9', 'https://cdn.cnbj0.fds.api.mi-img.com/b2c-data-mishop/c2967dfef7e98df036c463d50041edf7.png', '848****38', '2019-07-31', 11, '应该是第八个米了，从1开始用没用过其他品牌。越来越好！坚挺！', 'https://i1.mifile.cn/a2/1564531709_4675198_s2305_2305wh!240x241.jpg~~~https://i1.mifile.cn/a2/1564531708_6030652_s2160_2160wh!240x241.jpg~~~https://i1.mifile.cn/a2/1564531708_3992931_s1440_2160wh!240x241.jpg~~~https://i1.mifile.cn/a2/1564531707_3344352_s1279_1950wh!240x241.jpg', 'http://www.zlpones.com/imgs/mi/icon/小米.png', '官方回复：', '啊啊啊啊，好可爱啊，这是要骗大汉去你家看猫猫吗？好的，你成功了~感谢您对小米的支持。  '),
(4, '小米9', 'https://s1.mi-img.com/mfsv2/avatar/fdsc3/p01DQFtoQcTC/LaPvkDD4xShycp.jpg', '龙洛', '2019-07-31', 5, '1.外形很酷炫，透明背部越看越好看；<br>2.855+8+256估计再过几年也是不会过时的；<br>3.玩游戏发烫不明显，流畅度很高（开到最高特效了）<br>4.拍照是真的强', 'https://i1.mifile.cn/a2/1564538087_9926678_s2000_1500wh!240x241.jpg~~~https://i1.mifile.cn/a2/1564538086_8841139_s2328_1748wh!240x241.jpg', 'http://www.zlpones.com/imgs/mi/icon/小米.png', '官方回复：', '只有遇到真心喜爱的东西，才会越看越好看，越看越想看，米是我手心里的宝(づ｡◕ᴗᴗ◕｡)づ~感谢您对小米的支持。'),
(5, '小米9', 'https://cdn.cnbj0.fds.api.mi-img.com/b2c-data-mishop/f790b51a76afd7b41522048fa779d69d.jpg', '马媛媛', '2019-04-15', 128, '米9外形酷炫，相机无需滤镜和美颜拍出来的照片都很清晰，很惊讶哇', 'https://i1.mifile.cn/a2/1555310718_3983582_s1000_750wh!240x241.jpg~~~https://i1.mifile.cn/a2/1555310718_8172054_s1000_750wh!240x241.jpg~~~https://i1.mifile.cn/a2/1555310717_3594488_s1000_750wh!240x241.jpg~~~https://i1.mifile.cn/a2/1555310716_4535466_s1000_750wh!240x241.jpg~~~https://i1.mifile.cn/a2/1555310714_3516566_s1000_750wh!240x241.jpg~~~https://i1.mifile.cn/a2/1555310712_5802588_s1000_718wh!240x241.jpg', 'http://www.zlpones.com/imgs/mi/icon/小米.png~~~https://s1.mi-img.com/mfsv2/avatar/fdsc3/p01R2cVz03HI/4fQsiFskB9perv.jpg~~~https://s1.mi-img.com/mfsv2/avatar/fdsc3/p01A63u6StK9/XUhMrjUhk8eJS8.jpg~~~https://s1.mi-img.com/mfsv2/avatar/s010/p01ogFKafc5u/JgS8yU77gA3HvM.jpg', '官方回复：|De Zhi⚡：|孤独的马哥：|熊大：', '性能，我所欲也，颜值，亦我所欲也，二者均可得兼，小米手机是也。感谢您对小米的支持~|宿迁啊|贪心而又不失去个性的客服|俺大宿迁'),
(6, '小米9', 'https://s1.mi-img.com/mfsv2/avatar/fdsc3/p01kEOpzARue/0InibEBwus2UBs.jpg', '海风', '2019-03-26', 256, '从 2s到米9保留着青春的记忆，米9记录你的美！！', 'https://i1.mifile.cn/a2/1553601753_8921059_s1000_563wh!540x5400.jpg~~~https://i1.mifile.cn/a2/1553601752_4713207_s1000_563wh!540x5400.jpg~~~https://i1.mifile.cn/a2/1553601752_2409781_s1000_563wh!540x5400.jpg~~~https://i1.mifile.cn/a2/1553601751_8659604_s1000_563wh!540x5400.jpg~~~https://i1.mifile.cn/a2/1553601750_6486049_s1000_563wh!540x5400.jpg~~~https://i1.mifile.cn/a2/1553601749_6629474_s1000_563wh!540x5400.jpg', 'http://www.zlpones.com/imgs/mi/icon/小米.png~~~https://s1.mi-img.com/mfsv2/avatar/fdsc3/p01cbLI4iWkn/RscnGIve4NJOta.jpg', '官方回复：|美丽天使：', '青春无你，何以为青春！记录你的美~感谢您对小米的支持|跟我一样，我也很喜欢小米手机'),
(7, '小米9', 'https://s1.mi-img.com/mfsv2/avatar/fdsc3/p01UAXQ1Pl2b/LlOKNoeTTCSWTm.jpg', '考不过注会不改名', '2019-04-09', 1, '拍照说实话没有想象中的好，可能是我不太会用吧！不过黑科技确实很强大', 'https://i1.mifile.cn/a2/1554772989_5284306_s1000_750wh!540x5400.jpg~~~https://i1.mifile.cn/a2/1554772988_2190265_s1000_750wh!540x5400.jpg~~~https://i1.mifile.cn/a2/1554772986_4621655_s1000_750wh!540x5400.jpg~~~https://i1.mifile.cn/a2/1554772985_3396138_s1000_750wh!540x5400.jpg~~~https://i1.mifile.cn/a2/1554772983_9437035_s1000_750wh!540x5400.jpg', '', '', ''),
(8, '小米9', 'https://s1.mi-img.com/mfsv2/avatar/s008/p0134vZj189B/9Cbyeq6vPXpu7K.jpg', '疯狂的小米', '2019-04-09', 0, '米酒颜值很高，很喜欢炫彩蓝，拍照超级好看，大家看到我拍的月亮了吗？', '', '', '', ''),
(9, '小米9', 'https://s1.mi-img.com/mfsv2/avatar/s010/p01kASeBJLh3/hqPh4XDYM0cWem.jpg', '邢嘉嘉', '2019-07-29', 31, '从小米4 换小米note2又换到小米6现在又到米9', 'https://i1.mifile.cn/a2/1564348765_7409990_s1125_2000wh!540x5400.jpg?w=540&h=960', 'http://www.zlpones.com/imgs/mi/icon/小米.png', '官方回复', '从小米4 换小米note2又换到小米6现在又到米9，你没发现你的收集还差了最重要的一个吗？那就是—小米客服。抠脚蜀黍客服愿意做你的优乐美，你愿意吗？感谢您对小米的支持。');

-- --------------------------------------------------------

--
-- 表的结构 `mimi_details_services`
--

CREATE TABLE `mimi_details_services` (
  `d_services_id` int(11) NOT NULL,
  `p_name` varchar(64) CHARACTER SET utf8 NOT NULL,
  `d_service_type` varchar(64) CHARACTER SET utf8 NOT NULL,
  `d_service_content` varchar(256) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `mimi_details_services`
--

INSERT INTO `mimi_details_services` (`d_services_id`, `p_name`, `d_service_type`, `d_service_content`) VALUES
(1, '小米9', '小米自营', ''),
(2, '小米9', '小米发货', '由小米发货'),
(3, '小米9', '7天无理由退货', ''),
(4, '小米9', '7天无理由退货', '由小米发货的商品，单笔满150元免运费;\r\n由第三方商家发货的商品，免运费;\r\n特殊商品需要单独收取运费，具体以实际结算金额为准；优惠券等不能抵扣运费金额;');

-- --------------------------------------------------------

--
-- 表的结构 `mimi_details_style`
--

CREATE TABLE `mimi_details_style` (
  `d_style_id` int(11) NOT NULL,
  `p_name` varchar(64) CHARACTER SET utf8 NOT NULL,
  `d_style_src` varchar(128) CHARACTER SET utf8 NOT NULL,
  `d_style_imgs` varchar(1024) CHARACTER SET utf8 NOT NULL,
  `d_style_iconList_srcList` varchar(1024) CHARACTER SET utf8 NOT NULL,
  `d_style_iconList_nameList` varchar(256) CHARACTER SET utf8 NOT NULL,
  `d_style_iconList_valList` varchar(256) CHARACTER SET utf8 NOT NULL,
  `d_style_price` int(11) NOT NULL,
  `d_style_original_price` int(11) NOT NULL,
  `d_style_model` varchar(64) CHARACTER SET utf8 NOT NULL,
  `d_style_version` varchar(64) CHARACTER SET utf8 NOT NULL,
  `d_style_color` varchar(64) CHARACTER SET utf8 NOT NULL,
  `d_style_seckill` varchar(64) CHARACTER SET utf8 NOT NULL,
  `d_seckill_price` int(11) NOT NULL,
  `d_seckill_time` bigint(20) NOT NULL,
  `d_style_is_warranty` int(11) NOT NULL,
  `d_is_warranty_a_p` int(11) NOT NULL,
  `d_is_warranty_b_p` int(11) NOT NULL,
  `d_style_is_accident` int(11) NOT NULL,
  `d_is_accident_price` int(11) NOT NULL,
  `d_style_status` varchar(64) CHARACTER SET utf8 NOT NULL,
  `d_style_is_gift` varchar(128) CHARACTER SET utf8 NOT NULL,
  `d_style_high_title` varchar(128) CHARACTER SET utf8 NOT NULL,
  `d_style_sub_title` varchar(256) CHARACTER SET utf8 NOT NULL,
  `p_info` varchar(128) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `mimi_details_style`
--

INSERT INTO `mimi_details_style` (`d_style_id`, `p_name`, `d_style_src`, `d_style_imgs`, `d_style_iconList_srcList`, `d_style_iconList_nameList`, `d_style_iconList_valList`, `d_style_price`, `d_style_original_price`, `d_style_model`, `d_style_version`, `d_style_color`, `d_style_seckill`, `d_seckill_price`, `d_seckill_time`, `d_style_is_warranty`, `d_is_warranty_a_p`, `d_is_warranty_b_p`, `d_style_is_accident`, `d_is_accident_price`, `d_style_status`, `d_style_is_gift`, `d_style_high_title`, `d_style_sub_title`, `p_info`) VALUES
(1, '小米9', 'https://i8.mifile.cn/a1/pms_1550642167.03594225.jpg', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/66d9e4941faefdd393be723d5c342e46.jpg~~~https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/9191ffd44030e7d0bf8c5a91ffdbb2f5.jpg~~~https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/b72810544b8b8f4150d2b88a667d06bc.jpg~~~https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/3fa0db6388e2150f6f128958641e456d.jpg', 'https://cdn.cnbj0.fds.api.mi-img.com/b2c-mimall-media/f0c04e138bfed2b1ebb589de615236d1.png,https://i8.mifile.cn/b2c-mimall-media/7692726e7a1dd34a3b1b4ede8aca020d.png,https://i8.mifile.cn/b2c-mimall-media/86a3bd46cf4f7f19daa2c3250cf30604.png,https://i8.mifile.cn/b2c-mimall-media/a5ab24dcb527e49f970f13b11e000ab1.png,https://i8.mifile.cn/b2c-mimall-media/c8ec0829241324e401744da627482560.png,https://i8.mifile.cn/b2c-mimall-media/8941adac25333e785b9cc78ca11f4f27.png,https://i8.mifile.cn/b2c-mimall-media/52ad10a73685342e437e44ea3d29cbff.png,https://i8.mifile.cn/b2c-mimall-media/0b4ea0fb21dde2f29df3c20de73539b9.png,https://i8.mifile.cn/b2c-mimall-media/d1b67a407fb2a1ed42c2c0ce15af3318.png,https://i8.mifile.cn/b2c-mimall-media/bfd5ba9ae72c365dee42db14dfae4b0f.png', 'CPU,三摄像头,超大屏,屏幕分辨率,极速畅玩,存储容量,普通厚度,持久待机,运营商网络,网络模式', '骁龙855八核,4800万+1200万+1600万像素,6.39英寸,2340×1080,6GB,128GB,7.61mm,3300mAh,4G全网通,双卡双待', 2799, 2799, '全网通版', '6GB+128GB', '深空灰', '无秒杀', 0, 10000000, 1, 299, 159, 1, 99, '有现货', '赠米粉卡（最高领100元话费）', '「6GB+128GB版本直降200元，仅需2799元」', '全曲面轻薄设计，全息幻彩玻璃机身 / 骁龙855旗舰处理器 / 20W无线闪充，标配27W有线快充 / 索尼4800万超广角微距三摄 / 极速屏下指纹解锁 / 多功能NFC', '小米9 全网通版 6GB+128GB 深空灰'),
(2, '小米9', 'https://i8.mifile.cn/a1/pms_1550642185.33171962.jpg', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/448120635699d43273ea74437548b6eb.jpg~~~https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/55ea24d46d1f3d15dfd4a18cef40c816.jpg~~~https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/7a41c671f0a6c3faa5d982b61031e17f.jpg', 'https://cdn.cnbj0.fds.api.mi-img.com/b2c-mimall-media/f0c04e138bfed2b1ebb589de615236d1.png,https://i8.mifile.cn/b2c-mimall-media/7692726e7a1dd34a3b1b4ede8aca020d.png,https://i8.mifile.cn/b2c-mimall-media/86a3bd46cf4f7f19daa2c3250cf30604.png,https://i8.mifile.cn/b2c-mimall-media/a5ab24dcb527e49f970f13b11e000ab1.png,https://i8.mifile.cn/b2c-mimall-media/c8ec0829241324e401744da627482560.png,https://i8.mifile.cn/b2c-mimall-media/8941adac25333e785b9cc78ca11f4f27.png,https://i8.mifile.cn/b2c-mimall-media/52ad10a73685342e437e44ea3d29cbff.png,https://i8.mifile.cn/b2c-mimall-media/0b4ea0fb21dde2f29df3c20de73539b9.png,https://i8.mifile.cn/b2c-mimall-media/d1b67a407fb2a1ed42c2c0ce15af3318.png,https://i8.mifile.cn/b2c-mimall-media/bfd5ba9ae72c365dee42db14dfae4b0f.png', 'CPU,三摄像头,超大屏,屏幕分辨率,极速畅玩,存储容量,普通厚度,持久待机,运营商网络,网络模式', '骁龙855八核,4800万+1200万+1600万像素,6.39英寸,2340×1080,6GB,128GB,7.61mm,3300mAh,4G全网通,双卡双待', 2799, 3099, '全网通版', '6GB+128GB', '全息幻彩紫', '无秒杀', 0, 10000000, 1, 299, 159, 1, 99, '有现货', '赠米粉卡（最高领100元话费）', '「6GB+128GB版本直降200元，仅需2799元」', '全曲面轻薄设计，全息幻彩玻璃机身 / 骁龙855旗舰处理器 / 20W无线闪充，标配27W有线快充 / 索尼4800万超广角微距三摄 / 极速屏下指纹解锁 / 多功能NFC', '小米9 全网通版 6GB+128GB 全息幻彩紫'),
(3, '小米9', 'https://i8.mifile.cn/a1/pms_1550642182.7527088.jpg', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/6bfc7f28953b13ca6130a93500d05ef3.jpg~~~https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/b71db4e1e0718740490bf491c8809e78.jpg~~~https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/850678f51692e6c55a0b610333383a1e.jpg', 'https://cdn.cnbj0.fds.api.mi-img.com/b2c-mimall-media/f0c04e138bfed2b1ebb589de615236d1.png,https://i8.mifile.cn/b2c-mimall-media/7692726e7a1dd34a3b1b4ede8aca020d.png,https://i8.mifile.cn/b2c-mimall-media/86a3bd46cf4f7f19daa2c3250cf30604.png,https://i8.mifile.cn/b2c-mimall-media/a5ab24dcb527e49f970f13b11e000ab1.png,https://i8.mifile.cn/b2c-mimall-media/c8ec0829241324e401744da627482560.png,https://i8.mifile.cn/b2c-mimall-media/8941adac25333e785b9cc78ca11f4f27.png,https://i8.mifile.cn/b2c-mimall-media/52ad10a73685342e437e44ea3d29cbff.png,https://i8.mifile.cn/b2c-mimall-media/0b4ea0fb21dde2f29df3c20de73539b9.png,https://i8.mifile.cn/b2c-mimall-media/d1b67a407fb2a1ed42c2c0ce15af3318.png,https://i8.mifile.cn/b2c-mimall-media/bfd5ba9ae72c365dee42db14dfae4b0f.png', 'CPU,三摄像头,超大屏,屏幕分辨率,极速畅玩,存储容量,普通厚度,持久待机,运营商网络,网络模式', '骁龙855八核,4800万+1200万+1600万像素,6.39英寸,2340×1080,6GB,128GB,7.61mm,3300mAh,4G全网通,双卡双待', 2799, 2899, '全网通版', '6GB+128GB', '全息幻彩蓝', '无秒杀', 0, 10000000, 1, 299, 159, 1, 99, '有现货', '赠米粉卡（最高领100元话费）', '「6GB+128GB版本直降200元，仅需2799元」', '全曲面轻薄设计，全息幻彩玻璃机身 / 骁龙855旗舰处理器 / 20W无线闪充，标配27W有线快充 / 索尼4800万超广角微距三摄 / 极速屏下指纹解锁 / 多功能NFC', '小米9 全网通版 6GB+128GB 全息幻彩蓝'),
(4, '小米9', 'https://i8.mifile.cn/a1/pms_1550642167.03594225.jpg', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/66d9e4941faefdd393be723d5c342e46.jpg~~~https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/9191ffd44030e7d0bf8c5a91ffdbb2f5.jpg~~~https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/3fa0db6388e2150f6f128958641e456d.jpg', 'https://cdn.cnbj0.fds.api.mi-img.com/b2c-mimall-media/f0c04e138bfed2b1ebb589de615236d1.png,https://i8.mifile.cn/b2c-mimall-media/7692726e7a1dd34a3b1b4ede8aca020d.png,https://i8.mifile.cn/b2c-mimall-media/86a3bd46cf4f7f19daa2c3250cf30604.png,https://i8.mifile.cn/b2c-mimall-media/a5ab24dcb527e49f970f13b11e000ab1.png,https://i8.mifile.cn/b2c-mimall-media/c8ec0829241324e401744da627482560.png,https://i8.mifile.cn/b2c-mimall-media/8941adac25333e785b9cc78ca11f4f27.png,https://i8.mifile.cn/b2c-mimall-media/52ad10a73685342e437e44ea3d29cbff.png,https://i8.mifile.cn/b2c-mimall-media/0b4ea0fb21dde2f29df3c20de73539b9.png,https://i8.mifile.cn/b2c-mimall-media/d1b67a407fb2a1ed42c2c0ce15af3318.png,https://i8.mifile.cn/b2c-mimall-media/bfd5ba9ae72c365dee42db14dfae4b0f.png', 'CPU,三摄像头,超大屏,屏幕分辨率,极速畅玩,存储容量,普通厚度,持久待机,运营商网络,网络模式', '骁龙855八核,4800万+1200万+1600万像素,6.39英寸,2340×1080,8GB,128GB,7.61mm,3300mAh,4G全网通,双卡双待', 3299, 0, '全网通版', '8GB+128GB', '深空灰', '无秒杀', 0, 10000000, 1, 299, 159, 1, 99, '有现货', '赠米粉卡~~~无线车充或无线充电宝（赠品二选一）', '「8GB+128GB版赠价值149元无线充电宝或价值169元无线车充（二选一）」', '全曲面轻薄设计，全息幻彩玻璃机身 / 骁龙855旗舰处理器 / 20W无线闪充，标配27W有线快充 / 索尼4800万超广角微距三摄 / 极速屏下指纹解锁 / 多功能NFC', '小米9 全网通版 8GB+128GB 深空灰'),
(6, '小米9', 'https://i8.mifile.cn/a1/pms_1550642185.33171962.jpg', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/448120635699d43273ea74437548b6eb.jpg~~~https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/55ea24d46d1f3d15dfd4a18cef40c816.jpg~~~https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/7a41c671f0a6c3faa5d982b61031e17f.jpg', 'https://cdn.cnbj0.fds.api.mi-img.com/b2c-mimall-media/f0c04e138bfed2b1ebb589de615236d1.png,https://i8.mifile.cn/b2c-mimall-media/7692726e7a1dd34a3b1b4ede8aca020d.png,https://i8.mifile.cn/b2c-mimall-media/86a3bd46cf4f7f19daa2c3250cf30604.png,https://i8.mifile.cn/b2c-mimall-media/a5ab24dcb527e49f970f13b11e000ab1.png,https://i8.mifile.cn/b2c-mimall-media/c8ec0829241324e401744da627482560.png,https://i8.mifile.cn/b2c-mimall-media/8941adac25333e785b9cc78ca11f4f27.png,https://i8.mifile.cn/b2c-mimall-media/52ad10a73685342e437e44ea3d29cbff.png,https://i8.mifile.cn/b2c-mimall-media/0b4ea0fb21dde2f29df3c20de73539b9.png,https://i8.mifile.cn/b2c-mimall-media/d1b67a407fb2a1ed42c2c0ce15af3318.png,https://i8.mifile.cn/b2c-mimall-media/bfd5ba9ae72c365dee42db14dfae4b0f.png', 'CPU,三摄像头,超大屏,屏幕分辨率,极速畅玩,存储容量,普通厚度,持久待机,运营商网络,网络模式', '骁龙855八核,4800万+1200万+1600万像素,6.39英寸,2340×1080,8GB,128GB,7.61mm,3300mAh,4G全网通,双卡双待', 3299, 0, '全网通版', '8GB+128GB', '全息幻彩紫', '无秒杀', 0, 10000000, 1, 299, 159, 1, 99, '有现货', '赠米粉卡（最高领100元话费）~~~无线车充或无线充电宝（赠品二选一）', '「8GB+128GB版赠价值149元无线充电宝或价值169元无线车充（二选一）」', '全曲面轻薄设计，全息幻彩玻璃机身 / 骁龙855旗舰处理器 / 20W无线闪充，标配27W有线快充 / 索尼4800万超广角微距三摄 / 极速屏下指纹解锁 / 多功能NFC', '小米9 全网通版 8GB+128GB 全息幻彩紫'),
(7, '小米9', 'https://i8.mifile.cn/a1/pms_1550642182.7527088.jpg', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/6bfc7f28953b13ca6130a93500d05ef3.jpg~~~https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/b71db4e1e0718740490bf491c8809e78.jpg~~~https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/850678f51692e6c55a0b610333383a1e.jpg', 'https://cdn.cnbj0.fds.api.mi-img.com/b2c-mimall-media/f0c04e138bfed2b1ebb589de615236d1.png,https://i8.mifile.cn/b2c-mimall-media/7692726e7a1dd34a3b1b4ede8aca020d.png,https://i8.mifile.cn/b2c-mimall-media/86a3bd46cf4f7f19daa2c3250cf30604.png,https://i8.mifile.cn/b2c-mimall-media/a5ab24dcb527e49f970f13b11e000ab1.png,https://i8.mifile.cn/b2c-mimall-media/c8ec0829241324e401744da627482560.png,https://i8.mifile.cn/b2c-mimall-media/8941adac25333e785b9cc78ca11f4f27.png,https://i8.mifile.cn/b2c-mimall-media/52ad10a73685342e437e44ea3d29cbff.png,https://i8.mifile.cn/b2c-mimall-media/0b4ea0fb21dde2f29df3c20de73539b9.png,https://i8.mifile.cn/b2c-mimall-media/d1b67a407fb2a1ed42c2c0ce15af3318.png,https://i8.mifile.cn/b2c-mimall-media/bfd5ba9ae72c365dee42db14dfae4b0f.png', 'CPU,三摄像头,超大屏,屏幕分辨率,极速畅玩,存储容量,普通厚度,持久待机,运营商网络,网络模式', '骁龙855八核,4800万+1200万+1600万像素,6.39英寸,2340×1080,8GB,128GB,7.61mm,3300mAh,4G全网通,双卡双待', 3299, 0, '全网通版', '8GB+128GB', '全息幻彩蓝', '无秒杀', 0, 10000000, 1, 299, 159, 1, 99, '有现货', '赠米粉卡（最高领100元话费）~~~无线车充或无线充电宝（赠品二选一）', '「8GB+128GB版赠价值149元无线充电宝或价值169元无线车充（二选一）」', '全曲面轻薄设计，全息幻彩玻璃机身 / 骁龙855旗舰处理器 / 20W无线闪充，标配27W有线快充 / 索尼4800万超广角微距三摄 / 极速屏下指纹解锁 / 多功能NFC', '小米9 全网通版 8GB+128GB 全息幻彩蓝'),
(8, '小米9', 'https://i8.mifile.cn/a1/pms_1553001921.97126644.jpg', 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/7d1ddda193d48d059ddab965138b31e9.jpg~~~https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/ad87ad1c451431eeab5fab19f8a9bdb0.jpg~~~https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/c7695c104627574197faa2eba3827b85.jpg', 'https://cdn.cnbj0.fds.api.mi-img.com/b2c-mimall-media/f0c04e138bfed2b1ebb589de615236d1.png,https://i8.mifile.cn/b2c-mimall-media/7692726e7a1dd34a3b1b4ede8aca020d.png,https://i8.mifile.cn/b2c-mimall-media/86a3bd46cf4f7f19daa2c3250cf30604.png,https://i8.mifile.cn/b2c-mimall-media/a5ab24dcb527e49f970f13b11e000ab1.png,https://i8.mifile.cn/b2c-mimall-media/c8ec0829241324e401744da627482560.png,https://i8.mifile.cn/b2c-mimall-media/8941adac25333e785b9cc78ca11f4f27.png,https://i8.mifile.cn/b2c-mimall-media/52ad10a73685342e437e44ea3d29cbff.png,https://i8.mifile.cn/b2c-mimall-media/0b4ea0fb21dde2f29df3c20de73539b9.png,https://i8.mifile.cn/b2c-mimall-media/d1b67a407fb2a1ed42c2c0ce15af3318.png,https://i8.mifile.cn/b2c-mimall-media/bfd5ba9ae72c365dee42db14dfae4b0f.png', 'CPU,三摄像头,超大屏,屏幕分辨率,极速畅玩,存储容量,普通厚度,持久待机,运营商网络,网络模式', '骁龙855八核,4800万+1200万+1600万像素,6.39英寸,2340×1080,8GB,256GB,7.61mm,3300mAh,4G全网通,双卡双待', 3699, 0, '全网通版', '8GB+256GB', '透明版', '无秒杀', 0, 10000000, 1, 299, 159, 1, 99, '有现货', '赠米粉卡（最高领100元话费）~~~无线车充或无线充电宝（赠品二选一）', '「8GB+256GB版赠价值149元无线充电宝或价值169元无线车充（二选一）」', '全曲面轻薄设计，全息幻彩玻璃机身 / 骁龙855旗舰处理器 / 20W无线闪充，标配27W有线快充 / 索尼4800万超广角微距三摄 / 极速屏下指纹解锁 / 多功能NFC', '小米9 全网通版 8GB+256GB 透明版');

-- --------------------------------------------------------

--
-- 表的结构 `mimi_detail_foryou_recommend`
--

CREATE TABLE `mimi_detail_foryou_recommend` (
  `df_r_id` int(11) NOT NULL,
  `df_r_src` varchar(256) NOT NULL,
  `df_r_name` varchar(128) NOT NULL,
  `df_r_price` int(11) NOT NULL,
  `df_r_original_price` int(11) NOT NULL,
  `p_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `mimi_detail_foryou_recommend`
--

INSERT INTO `mimi_detail_foryou_recommend` (`df_r_id`, `df_r_src`, `df_r_name`, `df_r_price`, `df_r_original_price`, `p_name`) VALUES
(1, 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/26d19e55734e5310df09e382f7d16668.jpg?thumb=1&w=360&h=360', '米家电动剃须刀', 79, 0, '小米9'),
(2, 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/9807d64bb91ffd5bcd94d723b6024f09.jpg?thumb=1&w=360&h=360', '小米体重秤2', 59, 0, '小米9'),
(3, 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/4e315bf299f209996e7e91b77a75512c.jpg?thumb=1&w=360&h=360', '彩色相纸', 59, 0, '小米9'),
(4, 'https://cdn.cnbj0.fds.api.mi-img.com/b2c-mimall-media/657331f5a96a32fead61ed9564e549a2.jpg?thumb=1&w=360&h=360', '投影仪青春版', 2399, 2699, '小米9'),
(5, 'https://i8.mifile.cn/b2c-mimall-media/d75a2f3b510b1f003f9eef17e757fc7f!360x360.jpg', '移动电源2', 79, 0, '小米9'),
(6, 'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/a9dbe59cc37357c0b76026b7d9eead46.jpg?thumb=1&w=360&h=360', '黑鲨2 保护壳', 99, 0, '小米9');

-- --------------------------------------------------------

--
-- 表的结构 `mimi_detail_height_imglist`
--

CREATE TABLE `mimi_detail_height_imglist` (
  `d_h_id` int(11) NOT NULL,
  `d_h_name` varchar(128) CHARACTER SET utf8 NOT NULL,
  `d_h_src` varchar(128) CHARACTER SET utf8 NOT NULL,
  `is_carousel` varchar(64) CHARACTER SET utf8 NOT NULL,
  `img_type` varchar(128) CHARACTER SET utf8 NOT NULL,
  `style_type` varchar(128) CHARACTER SET utf8 NOT NULL,
  `carousel_count` int(11) NOT NULL,
  `p_info` varchar(128) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `mimi_detail_height_imglist`
--

INSERT INTO `mimi_detail_height_imglist` (`d_h_id`, `d_h_name`, `d_h_src`, `is_carousel`, `img_type`, `style_type`, `carousel_count`, `p_info`) VALUES
(1, '小米9', 'http://www.zlpones.com/imgs/mi/height_imgList/', '无', '.webp', 'style_a', 4, ''),
(2, '小米9', 'http://www.zlpones.com/imgs/mi/height_imgList/', '无', '.webp', 'style_a', 4, ''),
(3, '小米9', 'http://www.zlpones.com/imgs/mi/height_imgList/', '无', '.webp', 'style_carousel first_carouse', 4, ''),
(4, '小米9', 'http://www.zlpones.com/imgs/mi/height_imgList/', '无', '.webp', 'style_a', 4, ''),
(5, '小米9', 'http://www.zlpones.com/imgs/mi/height_imgList/', '无', '.webp', 'style_a', 4, ''),
(6, '小米9', 'http://www.zlpones.com/imgs/mi/height_imgList/', '无', '.webp', 'style_a', 4, ''),
(7, '小米9', 'http://www.zlpones.com/imgs/mi/height_imgList/', '无', '.webp', 'style_a', 4, ''),
(8, '小米9', 'http://www.zlpones.com/imgs/mi/height_imgList/', '无', '.webp', 'style_a', 4, ''),
(9, '小米9', 'http://www.zlpones.com/imgs/mi/height_imgList/', '无', '.webp', 'style_carousel', 4, ''),
(10, '小米9', 'http://www.zlpones.com/imgs/mi/height_imgList/', '无', '.webp', 'style_a', 4, ''),
(11, '小米9', 'http://www.zlpones.com/imgs/mi/height_imgList/', '无', '.webp', 'style_a', 4, ''),
(12, '小米9', 'http://www.zlpones.com/imgs/mi/height_imgList/', '无', '.webp', 'style_a', 4, ''),
(13, '小米9', 'http://www.zlpones.com/imgs/mi/height_imgList/', '无', '.webp', 'style_a', 4, ''),
(14, '小米9', 'http://www.zlpones.com/imgs/mi/height_imgList/', '无', '.webp', 'style_carousel', 4, ''),
(15, '小米9', 'http://www.zlpones.com/imgs/mi/height_imgList/', '无', '.webp', 'style_a', 4, ''),
(16, '小米9', 'http://www.zlpones.com/imgs/mi/height_imgList/', '无', '.webp', 'style_a', 4, ''),
(17, '小米9', 'http://www.zlpones.com/imgs/mi/height_imgList/', '无', '.webp', 'style_a', 4, ''),
(18, '小米9', 'http://www.zlpones.com/imgs/mi/height_imgList/', '无', '.webp', 'style_a', 4, ''),
(19, '小米9', 'http://www.zlpones.com/imgs/mi/height_imgList/', '无', '.webp', 'style_a', 4, ''),
(20, '小米9', 'http://www.zlpones.com/imgs/mi/height_imgList/', '无', '.webp', 'style_a', 4, ''),
(21, '小米9', 'http://www.zlpones.com/imgs/mi/height_imgList/', '无', '.webp', 'style_a', 4, ''),
(22, '小米9', 'http://www.zlpones.com/imgs/mi/height_imgList/', '无', '.webp', 'style_a', 4, ''),
(23, '小米9', 'http://www.zlpones.com/imgs/mi/height_imgList/', '无', '.webp', 'style_a', 4, ''),
(24, '小米9', 'http://www.zlpones.com/imgs/mi/height_imgList/', '无', '.webp', 'style_a', 4, ''),
(25, '小米9', 'http://www.zlpones.com/imgs/mi/height_imgList/', '无', '.webp', 'style_a', 4, ''),
(26, '小米9', 'http://www.zlpones.com/imgs/mi/height_imgList/', '无', '.webp', 'style_carousel', 4, ''),
(27, '小米9', 'http://www.zlpones.com/imgs/mi/height_imgList/', '无', '.webp', 'style_a', 4, ''),
(28, '小米9', 'http://www.zlpones.com/imgs/mi/height_imgList/', '无', '.webp', 'style_a', 4, ''),
(29, '小米9', 'http://www.zlpones.com/imgs/mi/height_imgList/', '无', '.webp', 'style_a', 4, ''),
(30, '小米9', 'http://www.zlpones.com/imgs/mi/height_imgList/', '无', '.webp', 'style_a', 4, ''),
(31, '小米9', 'http://www.zlpones.com/imgs/mi/height_imgList/', 'lb1', '.webp', 'style_a', 4, ''),
(32, '小米9', 'http://www.zlpones.com/imgs/mi/height_imgList/', 'lb1', '.webp', 'style_a', 4, ''),
(33, '小米9', 'http://www.zlpones.com/imgs/mi/height_imgList/', 'lb1', '.webp', 'style_a', 4, ''),
(34, '小米9', 'http://www.zlpones.com/imgs/mi/height_imgList/', 'lb1', '.webp', 'style_a', 4, ''),
(35, '小米9', 'http://www.zlpones.com/imgs/mi/height_imgList/', 'lb1', '.webp', 'style_a', 4, ''),
(36, '小米9', 'http://www.zlpones.com/imgs/mi/height_imgList/', 'lb1', '.webp', 'style_a', 4, ''),
(37, '小米9', 'http://www.zlpones.com/imgs/mi/height_imgList/', 'lb2', '.webp', 'style_a', 4, ''),
(38, '小米9', 'http://www.zlpones.com/imgs/mi/height_imgList/', 'lb2', '.webp', 'style_a', 4, ''),
(39, '小米9', 'http://www.zlpones.com/imgs/mi/height_imgList/', 'lb2', '.webp', 'style_a', 4, ''),
(40, '小米9', 'http://www.zlpones.com/imgs/mi/height_imgList/', 'lb2', '.webp', 'style_a', 4, ''),
(41, '小米9', 'http://www.zlpones.com/imgs/mi/height_imgList/', 'lb2', '.webp', 'style_a', 4, ''),
(42, '小米9', 'http://www.zlpones.com/imgs/mi/height_imgList/', 'lb3', '.webp', 'style_a', 4, ''),
(43, '小米9', 'http://www.zlpones.com/imgs/mi/height_imgList/', 'lb3', '.webp', 'style_a', 4, ''),
(44, '小米9', 'http://www.zlpones.com/imgs/mi/height_imgList/', 'lb3', '.webp', 'style_a', 4, ''),
(45, '小米9', 'http://www.zlpones.com/imgs/mi/height_imgList/', 'lb4', '.webp', 'style_a', 4, ''),
(46, '小米9', 'http://www.zlpones.com/imgs/mi/height_imgList/', 'lb4', '.webp', 'style_a', 4, ''),
(47, '小米9', 'http://www.zlpones.com/imgs/mi/height_imgList/', 'lb4', '.webp', 'style_a', 4, '');

-- --------------------------------------------------------

--
-- 表的结构 `mimi_detail_service`
--

CREATE TABLE `mimi_detail_service` (
  `d_s_id` int(11) NOT NULL,
  `d_s_name` varchar(128) NOT NULL,
  `d_s_text` varchar(256) NOT NULL,
  `p_name` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `mimi_detail_service`
--

INSERT INTO `mimi_detail_service` (`d_s_id`, `d_s_name`, `d_s_text`, `p_name`) VALUES
(1, '小米自营', '', '小米9'),
(2, '小米发货', '由小米发货', '小米9'),
(3, '7天无理由退货', '', '小米9'),
(4, '运费说明', '由小米发货的商品，单笔满150元免运费;\r\n由第三方商家发货的商品，免运费;\r\n特殊商品需要单独收取运费，具体以实际结算金额为准；优惠券等不能抵扣运费金额;', '小米9');

-- --------------------------------------------------------

--
-- 表的结构 `mimi_product_details`
--

CREATE TABLE `mimi_product_details` (
  `details_id` int(11) NOT NULL,
  `d_name` varchar(64) CHARACTER SET utf8 NOT NULL,
  `d_high_title` varchar(1024) CHARACTER SET utf8 NOT NULL,
  `d_detail_title` varchar(256) CHARACTER SET utf8 NOT NULL,
  `d_price` int(11) NOT NULL,
  `d_original_price` int(11) NOT NULL,
  `d_is_active` int(11) NOT NULL,
  `d_active_time` date NOT NULL,
  `d_active_price` int(11) NOT NULL,
  `d_is_promotion` varchar(64) CHARACTER SET utf8 NOT NULL,
  `d_promotion_type` varchar(64) CHARACTER SET utf8 NOT NULL,
  `d_promotion_content` varchar(128) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `mimi_product_details`
--

INSERT INTO `mimi_product_details` (`details_id`, `d_name`, `d_high_title`, `d_detail_title`, `d_price`, `d_original_price`, `d_is_active`, `d_active_time`, `d_active_price`, `d_is_promotion`, `d_promotion_type`, `d_promotion_content`) VALUES
(1, '小米9', '「6GB+128GB版本直降200元，仅需2799元」', '全曲面轻薄设计，全息幻彩玻璃机身 / 骁龙855旗舰处理器 / 20W无线闪充，标配27W有线快充 / 索尼4800万超广角微距三摄 / 极速屏下指纹解锁 / 多功能NFC', 2799, 2999, 0, '0000-00-00', 0, '1', '赠品', '赠米粉卡'),
(2, '小米9', '            obj.zengpin = [\r\n                {\r\n                    src:\'sssss.png\',\r\n                    title:\'sssss.png\',\r\n                    count:1\r\n                },\r\n                {\r\n                    src:\'sssss.png\',\r\n                    title:\'sssss.png\',\r\n                    count:1\r\n                },                \r\n            ]', '全曲面轻薄设计，全息幻彩玻璃机身 / 骁龙855旗舰处理器 / 20W无线闪充，标配27W有线快充 / 索尼4800万超广角微距三摄 / 极速屏下指纹解锁 / 多功能NFC', 2799, 2999, 0, '0000-00-00', 0, '1', '赠品', '赠米粉卡');

-- --------------------------------------------------------

--
-- 表的结构 `mimi_product_info`
--

CREATE TABLE `mimi_product_info` (
  `mimi_pi_id` int(11) NOT NULL,
  `pi_name` varchar(1024) NOT NULL,
  `pi_model` varchar(128) NOT NULL,
  `pi_version` varchar(128) NOT NULL,
  `pi_color` varchar(128) NOT NULL,
  `pi_info` varchar(1024) NOT NULL,
  `pi_set_meal` varchar(2048) NOT NULL,
  `pi_server` varchar(2048) NOT NULL,
  `pi_gift` varchar(2048) NOT NULL,
  `pi_choose` varchar(2048) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `mimi_product_info`
--

INSERT INTO `mimi_product_info` (`mimi_pi_id`, `pi_name`, `pi_model`, `pi_version`, `pi_color`, `pi_info`, `pi_set_meal`, `pi_server`, `pi_gift`, `pi_choose`) VALUES
(1, '小米9', '全网通版', '6GB+128GB', '深空灰', '小米9 全网通版 6GB+128GB 深空灰', '[\r\n            {\r\n                name:\'标配\',\r\n                price:2599,\r\n                original_price:2999,  \r\n                isSelect:true,                  \r\n                values:[\r\n                    {\r\n                        name:\'小米9 全网通版 6GB+128GB\',\r\n                        price:2599,\r\n                        original_price:2999,                     \r\n                        valList:[\r\n                            {\r\n                                src:\'https://i1.mifile.cn/a1/pms_1550642167.03594225.jpg\',\r\n                                color:\'深空灰\',\r\n                                count:1,\r\n                                checked:true                             \r\n                            }                    \r\n                        ]\r\n                    }         \r\n                ]\r\n            }\r\n        ]', '[\r\n                {\r\n                    name:\'意外保护\',\r\n                    isHas:true,\r\n                    isSelect:false,\r\n                    a_srcIndex:0,\r\n                    b_srcIndex:1,\r\n                    c_srcIndex:2,   \r\n                    values:[\r\n                        {\r\n                            name:\'意外保障服务\',\r\n                            text:\'手机意外碎屏/进水/碾压等损坏\',\r\n                            checked:false,\r\n                            count:1,                    \r\n                            price:299\r\n                        },{\r\n                            name:\'碎屏保障服务\',\r\n                            text:\'手机意外碎屏\',                        \r\n                            checked:false,\r\n                            count:1,                    \r\n                            price:159\r\n                        }\r\n                    ]             \r\n                },\r\n                {\r\n                    name:\'延长保修\',\r\n                    isHas:true,   \r\n                    isSelect:false,    \r\n                    a_srcIndex:3,\r\n                    b_srcIndex:1,\r\n                    c_srcIndex:2,                                                 \r\n                    values:[\r\n                        {\r\n                            name:\'延长保修服务\',\r\n                            text:\'厂保延一年，性能故障免费维修\',                        \r\n                            checked:false,     \r\n                            count:1,                                   \r\n                            price:99\r\n                        }\r\n                    ]    \r\n                }\r\n            ]', '[]', '[]'),
(2, '小米9', '全网通版', '6GB+128GB', '全息幻彩紫', '小米9 全网通版 6GB+128GB 全息幻彩紫', '[\r\n                {\r\n                    name:\'标配\',\r\n                    price:2599,\r\n                    original_price:2999,  \r\n                    isSelect:true,                  \r\n                    values:[\r\n                        {\r\n                            name:\'小米9 全网通版 6GB+128GB\',\r\n                            price:2599,\r\n                            original_price:2999,                    \r\n                            valList:[\r\n                                {\r\n                                    src:\'https://i8.mifile.cn/a1/pms_1550642185.33171962.jpg\',\r\n                                    color:\'全息幻彩紫\',\r\n                                    count:1,\r\n                                    checked:true                             \r\n                                }                    \r\n                            ]\r\n                        }         \r\n                    ]\r\n                }\r\n            ]', '[\r\n                {\r\n                    name:\'意外保护\',\r\n                    isHas:true,\r\n                    isSelect:false,\r\n                    a_srcIndex:0,\r\n                    b_srcIndex:1,\r\n                    c_srcIndex:2,   \r\n                    values:[\r\n                        {\r\n                            name:\'意外保障服务\',\r\n                            text:\'手机意外碎屏/进水/碾压等损坏\',\r\n                            checked:false,\r\n                            count:1,                    \r\n                            price:299\r\n                        },{\r\n                            name:\'碎屏保障服务\',\r\n                            text:\'手机意外碎屏\',                        \r\n                            checked:false,\r\n                            count:1,                    \r\n                            price:159\r\n                        }\r\n                    ]             \r\n                },\r\n                {\r\n                    name:\'延长保修\',\r\n                    isHas:true,   \r\n                    isSelect:false,    \r\n                    a_srcIndex:3,\r\n                    b_srcIndex:1,\r\n                    c_srcIndex:2,                                                 \r\n                    values:[\r\n                        {\r\n                            name:\'延长保修服务\',\r\n                            text:\'厂保延一年，性能故障免费维修\',                        \r\n                            checked:false,     \r\n                            count:1,                                   \r\n                            price:99\r\n                        }\r\n                    ]    \r\n                }\r\n            ]', '[]', '[]'),
(3, '小米9', '全网通版', '6GB+128GB', '全息幻彩蓝', '小米9 全网通版 6GB+128GB 全息幻彩蓝', '[\r\n                {\r\n                    name:\'标配\',\r\n                    price:2599,\r\n                    original_price:2999,  \r\n                    isSelect:true,                  \r\n                    values:[\r\n                        {\r\n                            name:\'小米9 全网通版 6GB+128GB\',\r\n                            price:2599,\r\n                            original_price:2999,                    \r\n                            valList:[\r\n                                {\r\n                                    src:\'https://i8.mifile.cn/a1/pms_1550642182.7527088.jpg\',\r\n                                    color:\'全息幻彩蓝\',\r\n                                    count:1,\r\n                                    checked:true                             \r\n                                }                    \r\n                            ]\r\n                        }         \r\n                    ]\r\n                }\r\n            ]', '[\r\n                {\r\n                    name:\'意外保护\',\r\n                    isHas:true,\r\n                    isSelect:false,\r\n                    a_srcIndex:0,\r\n                    b_srcIndex:1,\r\n                    c_srcIndex:2,   \r\n                    values:[\r\n                        {\r\n                            name:\'意外保障服务\',\r\n                            text:\'手机意外碎屏/进水/碾压等损坏\',\r\n                            checked:false,\r\n                            count:1,                    \r\n                            price:299\r\n                        },{\r\n                            name:\'碎屏保障服务\',\r\n                            text:\'手机意外碎屏\',                        \r\n                            checked:false,\r\n                            count:1,                    \r\n                            price:159\r\n                        }\r\n                    ]             \r\n                },\r\n                {\r\n                    name:\'延长保修\',\r\n                    isHas:true,   \r\n                    isSelect:false,    \r\n                    a_srcIndex:3,\r\n                    b_srcIndex:1,\r\n                    c_srcIndex:2,                                                 \r\n                    values:[\r\n                        {\r\n                            name:\'延长保修服务\',\r\n                            text:\'厂保延一年，性能故障免费维修\',                        \r\n                            checked:false,     \r\n                            count:1,                                   \r\n                            price:99\r\n                        }\r\n                    ]    \r\n                }\r\n            ]', '[]', '[]'),
(4, '小米9', '全网通版', '8GB+128GB', '深空灰', '小米9 全网通版 8GB+128GB 深空灰', '[\r\n                {\r\n                    name:\'标配\',\r\n                    price:2999,\r\n                    original_price:3299,    \r\n                    isSelect:true,                  \r\n                    values:[\r\n                        {\r\n                            name:\'小米9 全网通版 8GB+128GB\',\r\n                            price:2999,\r\n                            original_price:3299,                    \r\n                            valList:[\r\n                                {\r\n                                    src:\'https://i8.mifile.cn/a1/pms_1550642238.19945420.jpg\',\r\n                                    color:\'深空灰\',\r\n                                    count:1,\r\n                                    checked:true                             \r\n                                }                    \r\n                            ]\r\n                        }         \r\n                    ]\r\n                }\r\n            ]', '[\r\n                {\r\n                    name:\'意外保护\',\r\n                    isHas:true,\r\n                    isSelect:false,\r\n                    a_srcIndex:0,\r\n                    b_srcIndex:1,\r\n                    c_srcIndex:2,   \r\n                    values:[\r\n                        {\r\n                            name:\'意外保障服务\',\r\n                            text:\'手机意外碎屏/进水/碾压等损坏\',\r\n                            checked:false,\r\n                            count:1,                    \r\n                            price:299\r\n                        },{\r\n                            name:\'碎屏保障服务\',\r\n                            text:\'手机意外碎屏\',                        \r\n                            checked:false,\r\n                            count:1,                    \r\n                            price:159\r\n                        }\r\n                    ]             \r\n                },\r\n                {\r\n                    name:\'延长保修\',\r\n                    isHas:true,   \r\n                    isSelect:false,    \r\n                    a_srcIndex:3,\r\n                    b_srcIndex:1,\r\n                    c_srcIndex:2,                                                 \r\n                    values:[\r\n                        {\r\n                            name:\'延长保修服务\',\r\n                            text:\'厂保延一年，性能故障免费维修\',                        \r\n                            checked:false,     \r\n                            count:1,                                   \r\n                            price:99\r\n                        }\r\n                    ]    \r\n                }\r\n            ]', '[]', '[]'),
(5, '小米9', '全网通版', '8GB+128GB', '全息幻彩紫', '小米9 全网通版 8GB+128GB 全息幻彩紫', '[\r\n            {\r\n                name:\'标配\',\r\n                price:2999,\r\n                original_price:3299,  \r\n                isSelect:true,                  \r\n                values:[\r\n                    {\r\n                        name:\'小米9 全网通版 8GB+128GB\',\r\n                        price:2999,\r\n                        original_price:3299,                    \r\n                        valList:[\r\n                            {\r\n                                src:\'https://i8.mifile.cn/a1/pms_1550642242.36585125.jpg\',\r\n                                color:\'全息幻彩紫\',\r\n                                count:1,\r\n                                checked:true                             \r\n                            }                    \r\n                        ]\r\n                    }         \r\n                ]\r\n            }\r\n        ]', '[\r\n                {\r\n                    name:\'意外保护\',\r\n                    isHas:true,\r\n                    isSelect:false,\r\n                    a_srcIndex:0,\r\n                    b_srcIndex:1,\r\n                    c_srcIndex:2,   \r\n                    values:[\r\n                        {\r\n                            name:\'意外保障服务\',\r\n                            text:\'手机意外碎屏/进水/碾压等损坏\',\r\n                            checked:false,\r\n                            count:1,                    \r\n                            price:299\r\n                        },{\r\n                            name:\'碎屏保障服务\',\r\n                            text:\'手机意外碎屏\',                        \r\n                            checked:false,\r\n                            count:1,                    \r\n                            price:159\r\n                        }\r\n                    ]             \r\n                },\r\n                {\r\n                    name:\'延长保修\',\r\n                    isHas:true,   \r\n                    isSelect:false,    \r\n                    a_srcIndex:3,\r\n                    b_srcIndex:1,\r\n                    c_srcIndex:2,                                                 \r\n                    values:[\r\n                        {\r\n                            name:\'延长保修服务\',\r\n                            text:\'厂保延一年，性能故障免费维修\',                        \r\n                            checked:false,     \r\n                            count:1,                                   \r\n                            price:99\r\n                        }\r\n                    ]    \r\n                }\r\n            ]', '[]', '[]'),
(6, '小米9', '全网通版', '8GB+128GB', '全息幻彩蓝', '小米9 全网通版 8GB+128GB 全息幻彩蓝', '[\r\n                {\r\n                    name:\'标配\',\r\n                    price:2999,\r\n                    original_price:3299,    \r\n                    isSelect:true,                  \r\n                    values:[\r\n                        {\r\n                            name:\'小米9 全网通版 8GB+128GB\',\r\n                            price:2999,\r\n                            original_price:3299,                    \r\n                            valList:[\r\n                                {\r\n                                    src:\'https://i8.mifile.cn/a1/pms_1550642240.48638886.jpg\',\r\n                                    color:\'全息幻彩蓝\',\r\n                                    count:1,\r\n                                    checked:true                             \r\n                                }                    \r\n                            ]\r\n                        }         \r\n                    ]\r\n                }\r\n            ]', '[\r\n                {\r\n                    name:\'意外保护\',\r\n                    isHas:true,\r\n                    isSelect:false,\r\n                    a_srcIndex:0,\r\n                    b_srcIndex:1,\r\n                    c_srcIndex:2,   \r\n                    values:[\r\n                        {\r\n                            name:\'意外保障服务\',\r\n                            text:\'手机意外碎屏/进水/碾压等损坏\',\r\n                            checked:false,\r\n                            count:1,                    \r\n                            price:299\r\n                        },{\r\n                            name:\'碎屏保障服务\',\r\n                            text:\'手机意外碎屏\',                        \r\n                            checked:false,\r\n                            count:1,                    \r\n                            price:159\r\n                        }\r\n                    ]             \r\n                },\r\n                {\r\n                    name:\'延长保修\',\r\n                    isHas:true,   \r\n                    isSelect:false,    \r\n                    a_srcIndex:3,\r\n                    b_srcIndex:1,\r\n                    c_srcIndex:2,                                                 \r\n                    values:[\r\n                        {\r\n                            name:\'延长保修服务\',\r\n                            text:\'厂保延一年，性能故障免费维修\',                        \r\n                            checked:false,     \r\n                            count:1,                                   \r\n                            price:99\r\n                        }\r\n                    ]    \r\n                }\r\n            ]', '[]', '[]'),
(8, '小米9', '全网通版', '8GB+256GB', '透明版', '小米9 全网通版 8GB+256GB 透明版', '[\r\n            {\r\n                name:\'标配\',\r\n                price:2999,\r\n                original_price:3299,  \r\n                isSelect:true,                  \r\n                values:[\r\n                    {\r\n                        name:\'小米9 全网通版 8GB+256GB\',\r\n                        price:3699,\r\n                        original_price:0,                    \r\n                        valList:[\r\n                            {\r\n                                src:\'https://i8.mifile.cn/a1/pms_1553001921.97126644.jpg\',\r\n                                color:\'透明\',\r\n                                count:1,\r\n                                checked:true                             \r\n                            }                    \r\n                        ]\r\n                    }         \r\n                ]\r\n            }\r\n        ]', '[\r\n                {\r\n                    name:\'意外保护\',\r\n                    isHas:true,\r\n                    isSelect:false,\r\n                    a_srcIndex:0,\r\n                    b_srcIndex:1,\r\n                    c_srcIndex:2,   \r\n                    values:[\r\n                        {\r\n                            name:\'意外保障服务\',\r\n                            text:\'手机意外碎屏/进水/碾压等损坏\',\r\n                            checked:false,\r\n                            count:1,                    \r\n                            price:299\r\n                        },{\r\n                            name:\'碎屏保障服务\',\r\n                            text:\'手机意外碎屏\',                        \r\n                            checked:false,\r\n                            count:1,                    \r\n                            price:159\r\n                        }\r\n                    ]             \r\n                },\r\n                {\r\n                    name:\'延长保修\',\r\n                    isHas:true,   \r\n                    isSelect:false,    \r\n                    a_srcIndex:3,\r\n                    b_srcIndex:1,\r\n                    c_srcIndex:2,                                                 \r\n                    values:[\r\n                        {\r\n                            name:\'延长保修服务\',\r\n                            text:\'厂保延一年，性能故障免费维修\',                        \r\n                            checked:false,     \r\n                            count:1,                                   \r\n                            price:99\r\n                        }\r\n                    ]    \r\n                }\r\n            ]', '[\r\n            {\r\n                name:\'小米无线车充\',\r\n                price:0,\r\n                original_price:169,\r\n                isSelect:true,                  \r\n                valList:[\r\n                    {\r\n                        src:\'https://i1.mifile.cn/a1/pms_1550588698.58663947.jpg\',\r\n                        color:\'黑色\',\r\n                        count:1,\r\n                        checked:true     \r\n                    }                    \r\n                ]\r\n            },\r\n            {\r\n                name:\'小米无线充电宝 10000mAh\',\r\n                price:0,\r\n                original_price:149,\r\n                isSelect:true,                  \r\n                valList:[\r\n                    {\r\n                        src:\'https://i8.mifile.cn/a1/pms_1550584503.83515033.jpg\',\r\n                        color:\'黑色\',\r\n                        count:1,\r\n                        checked:true     \r\n                    }                    \r\n                ]\r\n            }                           \r\n        ]', '[]');

-- --------------------------------------------------------

--
-- 表的结构 `mimi_product_overview`
--

CREATE TABLE `mimi_product_overview` (
  `p_id` int(11) NOT NULL,
  `p_name` varchar(128) CHARACTER SET utf8 NOT NULL,
  `p_title` varchar(128) CHARACTER SET utf8 NOT NULL,
  `p_price` int(11) NOT NULL,
  `p_originalPrice` int(11) NOT NULL,
  `p_src` varchar(128) CHARACTER SET utf8 NOT NULL,
  `p_type` varchar(64) CHARACTER SET utf8 NOT NULL,
  `img_type` varchar(64) CHARACTER SET utf8 NOT NULL,
  `style_type` varchar(128) CHARACTER SET utf8 NOT NULL,
  `img_style` varchar(128) CHARACTER SET utf8 NOT NULL,
  `p_index` int(11) NOT NULL,
  `p_line` varchar(128) CHARACTER SET utf8 NOT NULL,
  `data_type` varchar(64) CHARACTER SET utf8 NOT NULL,
  `p_info` varchar(128) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `mimi_product_overview`
--

INSERT INTO `mimi_product_overview` (`p_id`, `p_name`, `p_title`, `p_price`, `p_originalPrice`, `p_src`, `p_type`, `img_type`, `style_type`, `img_style`, `p_index`, `p_line`, `data_type`, `p_info`) VALUES
(1, '新品发布', '', 0, 0, 'http://www.zlpones.com/imgs/mi/img/', '综合', '.webp', 'style_b', 'width:75px;height:79px;background:#bbb;', 1, 'aaa', 'multi-', ''),
(2, '小米众筹', '', 0, 0, 'http://www.zlpones.com/imgs/mi/img/', '综合', '.webp', 'style_b', 'width:75px;height:79px;background:#bbb;', 1, 'aaa', 'multi-', ''),
(3, '小米CC动图', '', 0, 0, 'http://www.zlpones.com/imgs/mi/img/', '综合', '.gif', 'style_b', 'width:75px;height:79px;background:#bbb;', 1, 'aaa', 'multi-', ''),
(4, '以旧换新', '', 0, 0, 'http://www.zlpones.com/imgs/mi/img/', '综合', '.webp', 'style_b', 'width:75px;height:79px;background:#bbb;', 1, 'aaa', 'multi-', ''),
(5, '超值特卖', '', 0, 0, 'http://www.zlpones.com/imgs/mi/img/', '综合', '.webp', 'style_b', 'width:75px;height:79px;background:#bbb;', 1, 'aaa', 'multi-', ''),
(6, '小米秒杀', '', 0, 0, 'http://www.zlpones.com/imgs/mi/img/', '综合', '.png', 'style_b', 'width:75px;height:79px;background:#bbb;', 2, 'aaa', 'multi-', ''),
(7, '笔记本热卖', '', 0, 0, 'http://www.zlpones.com/imgs/mi/img/', '综合', '.png', 'style_b', 'width:75px;height:79px;background:#bbb;', 2, 'aaa', 'multi-', ''),
(8, '电视热卖', '', 0, 0, 'http://www.zlpones.com/imgs/mi/img/', '综合', '.png', 'style_b', 'width:75px;height:79px;background:#bbb;', 2, 'aaa', 'multi-', ''),
(9, '空调热卖', '', 0, 0, 'http://www.zlpones.com/imgs/mi/img/', '综合', '.png', 'style_b', 'width:75px;height:79px;background:#eee;', 2, 'aaa', 'multi-', ''),
(10, '米粉卡', '', 0, 0, 'http://www.zlpones.com/imgs/mi/img/', '综合', '.png', 'style_b', 'width:75px;height:79px;background:#eee;', 2, 'aaa', 'multi-', ''),
(11, '小米MIX3', '', 0, 0, 'http://www.zlpones.com/imgs/mi/img/', '综合', '.webp', 'style_c', 'width:186.5px;height:264.58px;background:#eee;', 3, 'bbb', 'multi-', ''),
(12, '小米手环4', '', 0, 0, 'http://www.zlpones.com/imgs/mi/img/', '综合', '.jpg', 'style_c', 'width:186.5px;height:131px;background:#eee;', 3, 'bbb', 'multi-', ''),
(13, '小米电视特惠', '', 0, 0, 'http://www.zlpones.com/imgs/mi/img/', '综合', '.webp', 'style_c', 'width:186.5px;height:131px;background:#eee;', 3, 'bbb', 'multi-', ''),
(14, '小米暑假专场', '', 0, 0, 'http://www.zlpones.com/imgs/mi/img/', '综合', '.webp', 'style_d', 'width:375px;height:145.8px;background:#eee;', 4, 'bbb', 'multi-', ''),
(15, '每日精选', '', 0, 0, 'http://www.zlpones.com/imgs/mi/img/', '综合', '.webp', 'style_d', 'width:375px;height:229px;background:#eee;', 5, 'bbb', 'multi-', ''),
(16, 'Redmi Note 7', '4800万拍照 长续航', 999, 0, 'http://www.zlpones.com/imgs/mi/img/', '综合', '.webp', 'style_e', 'width:179px;height:145.8px;background:#eee;', 6, 'ccc', 'sole', ''),
(17, 'Redmi Note 7 Pro', '索尼4800万超清拍照 ', 1599, 0, 'http://www.zlpones.com/imgs/mi/img/', '综合', '.webp', 'style_e', 'width:179px;height:145.8px;background:#eee;', 6, 'ccc', 'sole', ''),
(18, '小米MIX 2S', '四曲面陶瓷机身，骁龙845', 1999, 2999, 'http://www.zlpones.com/imgs/mi/img/', '综合', '.webp', 'style_e', 'width:179px;height:145.8px;background:#eee;', 7, 'ccc', 'sole', ''),
(19, '小米MIX 3', 'DxO百分拍照手机', 2999, 3599, 'http://www.zlpones.com/imgs/mi/img/', '综合', '.webp', 'style_e', 'width:179px;height:145.8px;background:#eee;', 7, 'ccc', 'sole', ''),
(20, 'Redmi K20 Pro', '骁龙855， 弹出全面屏', 2499, 0, 'http://www.zlpones.com/imgs/mi/img/', '综合', '.jpg', 'style_e', 'width:179px;height:145.8px;background:#eee;', 8, 'ccc', 'sole', ''),
(21, '小米8 屏幕指纹版', '8GB+128GB特惠，享6期免息', 1999, 2999, 'http://www.zlpones.com/imgs/mi/img/', '综合', '.jpg', 'style_e', 'width:179px;height:145.8px;background:#eee;', 8, 'ccc', 'sole', ''),
(22, '小米9', '全息幻彩机身，骁龙855', 2999, 0, 'http://www.zlpones.com/imgs/mi/img/', '综合', '.webp', 'style_e', 'width:179px;height:145.8px;background:#eee;', 9, 'ccc', 'sole', '小米9 全网通版 6GB+128GB 全息幻彩紫'),
(23, '小米8 青春版', '索尼2400万自拍，超级夜景', 2999, 0, 'http://www.zlpones.com/imgs/mi/img/', '综合', '.webp', 'style_e', 'width:179px;height:145.8px;background:#eee;', 9, 'ccc', 'sole', ''),
(24, 'Redmi 7', '4000mAh超长续航', 2999, 0, 'http://www.zlpones.com/imgs/mi/img/', '综合', '.jpg', 'style_e', 'width:179px;height:145.8px;background:#eee;', 10, 'ccc', 'sole', ''),
(25, '黑鲨游戏手机 2', '骁龙855，立体触控', 2999, 0, 'http://www.zlpones.com/imgs/mi/img/', '综合', '.webp', 'style_e', 'width:179px;height:145.8px;background:#eee;', 10, 'ccc', 'sole', ''),
(26, '更多小米手机产品', '', 0, 0, '', '', '', 'style_f', '', 11, 'ddd', 'more', '');

-- --------------------------------------------------------

--
-- 表的结构 `mimi_shopping_info`
--

CREATE TABLE `mimi_shopping_info` (
  `mimi_si_id` int(11) NOT NULL,
  `si_info` varchar(256) NOT NULL,
  `si_set_meal` varchar(2048) NOT NULL,
  `si_server` varchar(2048) NOT NULL,
  `si_gift` varchar(2048) NOT NULL,
  `si_choose` varchar(2048) NOT NULL,
  `si_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `mimi_shopping_info`
--

INSERT INTO `mimi_shopping_info` (`mimi_si_id`, `si_info`, `si_set_meal`, `si_server`, `si_gift`, `si_choose`, `si_count`) VALUES
(55, '小米9 全网通版 6GB+128GB 全息幻彩紫', '[{\"name\":\"标配\",\"price\":2599,\"original_price\":2999,\"isSelect\":true,\"values\":[{\"name\":\"小米9全网通版6GB+128GB\",\"price\":2599,\"original_price\":2999,\"valList\":[{\"src\":\"https://i8.mifile.cn/a1/pms_1550642185.33171962.jpg\",\"color\":\"全息幻彩紫\",\"count\":1,\"checked\":true}]}]}]', '[{\"name\":\"意外保护\",\"isHas\":true,\"isSelect\":false,\"a_srcIndex\":0,\"b_srcIndex\":1,\"c_srcIndex\":2,\"values\":[{\"name\":\"意外保障服务\",\"text\":\"手机意外碎屏/进水/碾压等损坏\",\"checked\":false,\"count\":1,\"price\":299},{\"name\":\"碎屏保障服务\",\"text\":\"手机意外碎屏\",\"checked\":false,\"count\":1,\"price\":159}]},{\"name\":\"延长保修\",\"isHas\":true,\"isSelect\":false,\"a_srcIndex\":3,\"b_srcIndex\":1,\"c_srcIndex\":2,\"values\":[{\"name\":\"延长保修服务\",\"text\":\"厂保延一年，性能故障免费维修\",\"checked\":false,\"count\":1,\"price\":99}]}]', '[]', '[]', 2);

-- --------------------------------------------------------

--
-- 表的结构 `mi_product_inventory`
--

CREATE TABLE `mi_product_inventory` (
  `img_id` int(11) NOT NULL,
  `i_f_id` int(11) DEFAULT NULL,
  `i_name` varchar(64) DEFAULT NULL,
  `memory` varchar(32) DEFAULT NULL,
  `disk` varchar(32) DEFAULT NULL,
  `i_color` varchar(32) DEFAULT NULL,
  `i_count` int(11) DEFAULT NULL,
  `individuality` varchar(256) DEFAULT NULL,
  `img_type` varchar(64) DEFAULT NULL,
  `src` varchar(128) DEFAULT NULL,
  `detail` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `mi_product_inventory`
--

INSERT INTO `mi_product_inventory` (`img_id`, `i_f_id`, `i_name`, `memory`, `disk`, `i_color`, `i_count`, `individuality`, `img_type`, `src`, `detail`) VALUES
(1, 1, '小米8', '6GB', '64GB', '白色', 1, '全网通版', '1', 'img/mi_product/src/', '小米8 全网通版 6GB+64GB 白色'),
(2, 1, '小米8', '6GB', '64GB', '白色', 1, '全网通版', '2', 'img/mi_product/src/', '小米8 全网通版 6GB+64GB 白色'),
(3, 1, '小米8', '6GB', '64GB', '白色', 1, '全网通版', '3', 'img/mi_product/src/', '小米8 全网通版 6GB+64GB 白色'),
(4, 1, '小米8', '6GB', '64GB', '白色', 1, '全网通版', '4', 'img/mi_product/src/', '小米8 全网通版 6GB+64GB 白色'),
(5, 1, '小米8', '6GB', '64GB', '黑色', 1, '全网通版', '1', 'img/mi_product/src/', '小米8 全网通版 6GB+64GB 黑色'),
(6, 1, '小米8', '6GB', '64GB', '黑色', 1, '全网通版', '2', 'img/mi_product/src/', '小米8 全网通版 6GB+64GB 黑色'),
(7, 1, '小米8', '6GB', '64GB', '黑色', 1, '全网通版', '3', 'img/mi_product/src/', '小米8 全网通版 6GB+64GB 黑色'),
(8, 1, '小米8', '6GB', '64GB', '黑色', 1, '全网通版', '4', 'img/mi_product/src/', '小米8 全网通版 6GB+64GB 黑色'),
(9, 1, '小米8', '6GB', '64GB', '蓝色', 1, '全网通版', '1', 'img/mi_product/src/', '小米8 全网通版 6GB+64GB 蓝色'),
(10, 1, '小米8', '6GB', '64GB', '蓝色', 1, '全网通版', '2', 'img/mi_product/src/', '小米8 全网通版 6GB+64GB 蓝色'),
(11, 1, '小米8', '6GB', '64GB', '蓝色', 1, '全网通版', '3', 'img/mi_product/src/', '小米8 全网通版 6GB+64GB 蓝色'),
(12, 1, '小米8', '6GB', '64GB', '蓝色', 1, '全网通版', '4', 'img/mi_product/src/', '小米8 全网通版 6GB+64GB 蓝色'),
(13, 2, '小米8', '6GB', '64GB', '深空灰', 1, '青春版', '1', 'img/mi_product/src/', '小米8 青春版 6GB+64GB 深空灰'),
(14, 2, '小米8', '6GB', '64GB', '深空灰', 1, '青春版', '2', 'img/mi_product/src/', '小米8 青春版 6GB+64GB 深空灰'),
(15, 2, '小米8', '6GB', '64GB', '深空灰', 1, '青春版', '3', 'img/mi_product/src/', '小米8 青春版 6GB+64GB 深空灰'),
(16, 2, '小米8', '6GB', '64GB', '深空灰', 1, '青春版', '4', 'img/mi_product/src/', '小米8 青春版 6GB+64GB 深空灰'),
(17, 3, '小米8', '6GB', '64GB', '透明', 1, '屏幕指纹版', '1', 'img/mi_product/src/', '小米8 屏幕指纹版 6GB+64GB 透明'),
(18, 3, '小米8', '6GB', '64GB', '透明', 1, '屏幕指纹版', '2', 'img/mi_product/src/', '小米8 屏幕指纹版 6GB+64GB 透明'),
(19, 3, '小米8', '6GB', '64GB', '透明', 1, '屏幕指纹版', '3', 'img/mi_product/src/', '小米8 屏幕指纹版 6GB+64GB 透明'),
(20, 3, '小米8', '6GB', '64GB', '透明', 1, '屏幕指纹版', '4', 'img/mi_product/src/', '小米8 屏幕指纹版 6GB+64GB 透明'),
(21, 4, '小米9 SE', '8GB', '128GB', '全息幻彩蓝', 1, 'SE', '1', 'img/mi_product/src/', '小米9 SE 8GB+128GB 全息幻彩蓝'),
(22, 4, '小米9 SE', '8GB', '128GB', '全息幻彩蓝', 1, 'SE', '2', 'img/mi_product/src/', '小米9 SE 8GB+128GB 全息幻彩蓝'),
(23, 4, '小米9 SE', '8GB', '128GB', '全息幻彩蓝', 1, 'SE', '3', 'img/mi_product/src/', '小米9 SE 8GB+128GB 全息幻彩蓝'),
(24, 4, '小米9 SE', '8GB', '128GB', '全息幻彩蓝', 1, 'SE', '4', 'img/mi_product/src/', '小米9 SE 8GB+128GB 全息幻彩蓝'),
(25, 4, '小米9 SE', '8GB', '128GB', '全息幻彩紫', 1, 'SE', '1', 'img/mi_product/src/', '小米9 SE 8GB+128GB 全息幻彩紫'),
(39, 4, '小米9 SE', '8GB', '128GB', '全息幻彩紫', 1, 'SE', '2', 'img/mi_product/src/', '小米9 SE 8GB+128GB 全息幻彩紫'),
(40, 4, '小米9 SE', '8GB', '128GB', '全息幻彩紫', 1, 'SE', '3', 'img/mi_product/src/', '小米9 SE 8GB+128GB 全息幻彩紫'),
(41, 4, '小米9 SE', '8GB', '128GB', '全息幻彩紫', 1, 'SE', '4', 'img/mi_product/src/', '小米9 SE 8GB+128GB 全息幻彩紫'),
(42, 4, '小米9 SE', '8GB', '128GB', '深空灰', 1, 'SE', '1', 'img/mi_product/src/', '小米9 SE 8GB+128GB 深空灰'),
(43, 4, '小米9 SE', '8GB', '128GB', '深空灰', 1, 'SE', '2', 'img/mi_product/src/', '小米9 SE 8GB+128GB 深空灰'),
(44, 4, '小米9 SE', '8GB', '128GB', '深空灰', 1, 'SE', '3', 'img/mi_product/src/', '小米9 SE 8GB+128GB 深空灰'),
(45, 4, '小米9 SE', '8GB', '128GB', '深空灰', 1, 'SE', '4', 'img/mi_product/src/', '小米9 SE 8GB+128GB 深空灰');

-- --------------------------------------------------------

--
-- 表的结构 `mi_product_overview`
--

CREATE TABLE `mi_product_overview` (
  `product_id` int(11) NOT NULL,
  `p_f_id` int(11) NOT NULL,
  `p_name` varchar(32) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `y_price` int(11) DEFAULT NULL,
  `discounts` varchar(64) DEFAULT NULL,
  `is_GIFT` varchar(64) DEFAULT NULL,
  `is_amortize` varchar(64) DEFAULT NULL,
  `is_seckill` varchar(64) DEFAULT NULL,
  `status` varchar(32) DEFAULT NULL,
  `review_count` int(11) DEFAULT NULL,
  `sales_count` int(11) NOT NULL,
  `memory` varchar(32) DEFAULT NULL,
  `disk` varchar(32) DEFAULT NULL,
  `type` varchar(32) DEFAULT NULL,
  `color` varchar(32) DEFAULT NULL,
  `shelf_time` int(11) DEFAULT NULL,
  `individuality` varchar(64) DEFAULT NULL,
  `describe` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `mi_product_overview`
--

INSERT INTO `mi_product_overview` (`product_id`, `p_f_id`, `p_name`, `price`, `y_price`, `discounts`, `is_GIFT`, `is_amortize`, `is_seckill`, `status`, `review_count`, `sales_count`, `memory`, `disk`, `type`, `color`, `shelf_time`, `individuality`, `describe`) VALUES
(1, 1, '小米8', 2299, 2699, '折扣', '赠', '', '秒杀', '现货', 128, 10, '6GB', '64GB', '手机', '白色', 20180332, '全网通版', NULL),
(2, 2, '小米8', 1099, 1999, '折扣', '赠', '分期', '', '现货', 245, 20, '6GB', '64GB', '手机', '深空灰', 20180328, '青春版', NULL),
(3, 3, '小米8', 2699, 3399, '折扣', '赠', '分期', '', '现货', 120, 30, '6GB', '64GB', '手机', '透明', 20180805, '屏幕指纹版', NULL),
(4, 4, '小米9', 2499, 2499, '', '赠', '分期', '', '现货', 28, 5, '8GB', '128GB', '手机', '全息幻彩蓝', 20190421, 'SE', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `mi_product_pic`
--

CREATE TABLE `mi_product_pic` (
  `img_id` int(11) NOT NULL,
  `i_f_id` int(11) DEFAULT NULL,
  `i_name` varchar(64) DEFAULT NULL,
  `img_type` varchar(64) NOT NULL,
  `memory` varchar(32) DEFAULT NULL,
  `disk` varchar(32) DEFAULT NULL,
  `i_color` varchar(32) DEFAULT NULL,
  `individuality` varchar(256) DEFAULT NULL,
  `p_count` int(11) NOT NULL,
  `src` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `xz_index_carousel`
--

CREATE TABLE `xz_index_carousel` (
  `cid` int(11) NOT NULL,
  `img` varchar(128) DEFAULT NULL,
  `title` varchar(64) DEFAULT NULL,
  `href` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `xz_index_carousel`
--

INSERT INTO `xz_index_carousel` (`cid`, `img`, `title`, `href`) VALUES
(9, 'img/index/banner1.png', '轮播广告商品1', 'product_details.html?lid=28'),
(10, 'img/index/banner2.png', '轮播广告商品2', 'product_details.html?lid=19'),
(11, 'img/index/banner3.png', '轮播广告商品3', 'lookforward.html'),
(12, 'img/index/banner4.png', '轮播广告商品4', 'lookforward.html');

-- --------------------------------------------------------

--
-- 表的结构 `xz_index_product`
--

CREATE TABLE `xz_index_product` (
  `pid` int(11) NOT NULL,
  `title` varchar(64) DEFAULT NULL,
  `details` varchar(128) DEFAULT NULL,
  `pic` varchar(128) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `href` varchar(128) DEFAULT NULL,
  `seq_recommended` tinyint(4) DEFAULT NULL,
  `seq_new_arrival` tinyint(4) DEFAULT NULL,
  `seq_top_sale` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `xz_index_product`
--

INSERT INTO `xz_index_product` (`pid`, `title`, `details`, `pic`, `price`, `href`, `seq_recommended`, `seq_new_arrival`, `seq_top_sale`) VALUES
(8, 'Apple MacBook Air系列', '酷睿双核i5处理器|256GB SSD|8GB内存|英特尔HD显卡620含共享显卡内存', 'img/index/study_computer_img1.png', '6988.00', 'product_details.html?lid=1', 1, 1, 1),
(9, '小米Air 金属超轻薄', '酷睿双核i5处理器|512GB SSD|2GB内存|英特尔HD独立显卡', 'img/index/study_computer_img2.png', '3488.00', 'product_details.html?lid=5', 2, 2, 2),
(10, '联想E480C 轻薄系列', '酷睿双核i7处理器|256GB SSD|4GB内存|英特尔HD显卡680M', 'img/index/study_computer_img3.png', '5399.00', 'product_details.html?lid=9', 3, 3, 3),
(11, '华硕RX310 金属超极本', '酷睿双核i5处理器|512GB SSD|4GB内存|英特尔HD游戏级显卡', 'img/index/study_computer_img4.png', '4966.00', 'product_details.html?lid=13', 4, 4, 4),
(12, '联想小新700 电竞版游戏本', '酷睿双核i7处理器|1TGB SSD|8GB内存|英特尔HD显卡620含共享显卡内存', 'img/index/study_computer_img5.png', '6299.00', 'product_details.html?lid=17', 5, 5, 5),
(13, '戴尔灵越燃7000 轻薄窄边', '酷睿双核i5处理器|512GB SSD|2GB内存|英特尔HD显卡', 'img/index/study_computer_img3.png', '5199.00', 'product_details.html?lid=19', 6, 6, 6),
(14, '神州战神Z7M 高性价比游戏本', '酷睿双核i7处理器|1TGB SSD|8GB内存|英特尔HD游戏机独立显卡', 'img/index/study_computer_img4.png', '5799.00', 'product_details.html?lid=38', 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `xz_laptop`
--

CREATE TABLE `xz_laptop` (
  `lid` int(11) NOT NULL,
  `family_id` int(11) DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `subtitle` varchar(128) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `promise` varchar(64) DEFAULT NULL,
  `spec` varchar(64) DEFAULT NULL,
  `lname` varchar(32) DEFAULT NULL,
  `os` varchar(32) DEFAULT NULL,
  `memory` varchar(32) DEFAULT NULL,
  `resolution` varchar(32) DEFAULT NULL,
  `video_card` varchar(32) DEFAULT NULL,
  `cpu` varchar(32) DEFAULT NULL,
  `video_memory` varchar(32) DEFAULT NULL,
  `category` varchar(32) DEFAULT NULL,
  `disk` varchar(32) DEFAULT NULL,
  `details` varchar(1024) DEFAULT NULL,
  `shelf_time` bigint(20) DEFAULT NULL,
  `sold_count` int(11) DEFAULT NULL,
  `is_onsale` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `xz_laptop`
--

INSERT INTO `xz_laptop` (`lid`, `family_id`, `title`, `subtitle`, `price`, `promise`, `spec`, `lname`, `os`, `memory`, `resolution`, `video_card`, `cpu`, `video_memory`, `category`, `disk`, `details`, `shelf_time`, `sold_count`, `is_onsale`) VALUES
(1, 1, '小米8是小米公司2018年5月31日发布的8周年旗舰手机，亦是小米数字系列的第七代手机。搭载骁龙845处理器，拥有红外人脸识别、双频GPS等技术。具备AI双摄、光学变焦和光学防抖等功能。', '5月焕新季，领券买新机！神券满6000减600！一体成型金属机身，纤薄轻巧，长达12小时续航', '6988.00', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '双核i5/8GB内存/128GB闪存', 'AppleMacBook Air', 'MacOS', '8G', '1920*1080', '集成显卡', 'Intel i5低功耗版', '其它', '轻薄本', '128G固态', '<div class=\"content_tpl\"> <div class=\"formwork\">   <div class=\"formwork_img\"><br></div><div class=\"formwork_img\">    <img alt=\"\" class=\"\" src=\"img/product/detail/57b15612N81dc489d.jpg\">   </div>  </div>  <div class=\"formwork\">   <div class=\"formwork_img\">    <img alt=\"\" class=\"\" src=\"//img20.360buyimg.com/vc/jfs/t2683/60/4222930118/169462/233c7678/57b15616N1e285f09.jpg\">   </div>  </div>  <div class=\"formwork\">   <div class=\"formwork_text\">    技术规格请前往 www.apple.com/cn/macbook-air/specs.html 查看完整内容。</div></div></div>', 150123456789, 2968, 1),
(2, 1, '小米8是小米公司2018年5月31日发布的8周年旗舰手机，亦是小米数字系列的第七代手机。搭载骁龙845处理器，拥有红外人脸识别、双频GPS等技术。具备AI双摄、光学变焦和光学防抖等功能。', '5月焕新季，领券买新机！神券满8000减800！一体成型金属机身，纤薄轻巧，长达12小时续航', '8268.00', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '双核i5/8GB内存/256GB闪存', 'AppleMacBook Air', 'MacOS', '8G', '1920*1080', '集成显卡', 'Intel i5低功耗版', '其它', '轻薄本', '256G固态', '<div class=\"content_tpl\"> <div class=\"formwork\">   <div class=\"formwork_img\"><br></div><div class=\"formwork_img\">    <img alt=\"\" class=\"\" src=\"img/product/detail/57b15612N81dc489d.jpg\">   </div>  </div>  <div class=\"formwork\">   <div class=\"formwork_img\">    <img alt=\"\" class=\"\" src=\"//img20.360buyimg.com/vc/jfs/t2683/60/4222930118/169462/233c7678/57b15616N1e285f09.jpg\">   </div>  </div>  <div class=\"formwork\">   <div class=\"formwork_text\">    技术规格请前往 www.apple.com/cn/macbook-air/specs.html 查看完整内容。</div></div></div>', 150223456789, 1922, 0),
(3, 1, '小米8是小米公司2018年5月31日发布的8周年旗舰手机，亦是小米数字系列的第七代手机。搭载骁龙845处理器，拥有红外人脸识别、双频GPS等技术。具备AI双摄、光学变焦和光学防抖等功能。', 'i7处理器在此！依旧纤薄轻盈，续航持久，能胜任更多高强度工作，办公利器！', '7488.00', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '定制款：双核i7/8G内存/128G闪存', 'AppleMacBook Air', 'MacOS', '8G', '1920*1080', '集成显卡', 'Intel i7低功耗版', '其它', '轻薄本', '128G固态', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"//img20.360buyimg.com/vc/jfs/t3034/151/748569500/226790/d6cd86a2/57b15612N81dc489d.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"//img20.360buyimg.com/vc/jfs/t2683/60/4222930118/169462/233c7678/57b15616N1e285f09.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_text\">技术规格 请前往 www.apple.com/cn/macbook-air/specs.html 查看完整内容。</div></div></div>', 150323456789, 733, 0),
(4, 1, '小米8是小米公司2018年5月31日发布的8周年旗舰手机，亦是小米数字系列的第七代手机。搭载骁龙845处理器，拥有红外人脸识别、双频GPS等技术。具备AI双摄、光学变焦和光学防抖等功能。', 'i7处理器在此！依旧纤薄轻盈，续航持久，能胜任更多高强度工作，办公利器！', '7888.00', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '定制款：双核i7/8G内存/256G闪存', 'AppleMacBook Air', 'MacOS', '8G', '1920*1080', '集成显卡', 'Intel i7低功耗版', '其它', '轻薄本', '256G固态', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"//img20.360buyimg.com/vc/jfs/t3034/151/748569500/226790/d6cd86a2/57b15612N81dc489d.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"//img20.360buyimg.com/vc/jfs/t2683/60/4222930118/169462/233c7678/57b15616N1e285f09.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_text\">技术规格 请前往 www.apple.com/cn/macbook-air/specs.html 查看完整内容。</div></div></div>', 150323456789, 105, 0),
(5, 2, '小米8是小米公司2018年5月31日发布的8周年旗舰手机，亦是小米数字系列的第七代手机。搭载骁龙845处理器，拥有红外人脸识别、双频GPS等技术。具备AI双摄、光学变焦和光学防抖等功能。', '【i5 独立显卡】全高清窄边框 8G内存 256G固态硬盘 支持SSD硬盘扩容 薄至14.8mm 轻至1.28kg！AKG扬声器！', '4999.00', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '【13.3英寸】I5-6200U 8G 256G', '小米Air', 'Windows 10', '8G', '全高清屏(1920*1080)', '入门级游戏独立显卡', 'Intel i5低功耗版', '1G', '轻薄本', '256G固态', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/5886e317Nbc52a580.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f747eNfdc5f737.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f7483N695168a2.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f7486Nf809b915.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f748bN28dbcbb2.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f748fNd2861229.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f7493N5a3758af.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f7497N20aac53e.jpg\"></div></div><div c', 154123456789, 1527, 1),
(6, 2, '小米8是小米公司2018年5月31日发布的8周年旗舰手机，亦是小米数字系列的第七代手机。搭载骁龙845处理器，拥有红外人脸识别、双频GPS等技术。具备AI双摄、光学变焦和光学防抖等功能。', '【FHD窄边框】第七代处理器 128G SSD支持M.2接口SSD硬盘扩容 薄至12.9mm 轻至1.07kg！AKG扬声器！', '3599.00', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '【12.5银色】 M-7Y30 4G 128G', '小米Air', 'Windows 10', '4G', '全高清屏(1920*1080)', '集成显卡', 'Intel CoreM', '其它', '轻薄本', '128G固态', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/5886e317Nbc52a580.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f747eNfdc5f737.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f7483N695168a2.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f7486Nf809b915.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f748bN28dbcbb2.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f748fNd2861229.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f7493N5a3758af.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f7497N20aac53e.jpg\"></div></div><div c', 153123456789, 115, 0),
(7, 2, '小米8是小米公司2018年5月31日发布的8周年旗舰手机，亦是小米数字系列的第七代手机。搭载骁龙845处理器，拥有红外人脸识别、双频GPS等技术。具备AI双摄、光学变焦和光学防抖等功能。', '【FHD窄边框】第七代处理器 128G SSD支持M.2接口SSD硬盘扩容 薄至12.9mm 轻至1.07kg！AKG扬声器！', '3599.00', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '【12.5金色】 M-7Y30 4G 128G', '小米Air', 'Windows 10', '4G', '全高清屏(1920*1080)', '集成显卡', 'Intel CoreM', '其它', '轻薄本', '128G固态', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/5886e317Nbc52a580.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f747eNfdc5f737.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f7483N695168a2.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f7486Nf809b915.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f748bN28dbcbb2.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f748fNd2861229.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f7493N5a3758af.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f7497N20aac53e.jpg\"></div></div><div c', 156123456789, 812, 1),
(8, 2, '小米8是小米公司2018年5月31日发布的8周年旗舰手机，亦是小米数字系列的第七代手机。搭载骁龙845处理器，拥有红外人脸识别、双频GPS等技术。具备AI双摄、光学变焦和光学防抖等功能。', '【FHD窄边框】库存紧张 128G固态硬盘 支持M.2接口SSD硬盘扩容 薄至12.9mm 轻至1.07kg！', '3499.00', ' *退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '【12.5英寸】M-6Y30 4G 128G', '小米Air', 'Windows 10', '4G', '全高清屏(1920*1080)', '集成显卡', 'Intel CoreM', '其它', '轻薄本', '128G固态', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/5886e317Nbc52a580.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f747eNfdc5f737.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f7483N695168a2.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f7486Nf809b915.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f748bN28dbcbb2.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f748fNd2861229.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f7493N5a3758af.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f7497N20aac53e.jpg\"></div></div><div c', 157123456789, 1081, 0),
(9, 3, '小米8是小米公司2018年5月31日发布的8周年旗舰手机，亦是小米数字系列的第七代手机。搭载骁龙845处理器，拥有红外人脸识别、双频GPS等技术。具备AI双摄、光学变焦和光学防抖等功能。', '2017年经典款新！精致小黑！22.3mm轻薄体验，180度开合灵活耐用，高效稳健办公最长可达5小时！', '3499.00', ' *退货补运费 *30天无忧退货 *48小时快速退款', '【E480C-2017新】i3 4G 500G独显', 'ThinkPadE480c', 'Windows10', '4G', '标准屏(1366×768)', '入门级游戏独立显卡', 'Intel i3', '2G', '常规笔记本', '500G', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/58745160N7de01df6.jpg\"></div></div></div>', 150423456789, 1461, 1),
(10, 3, '小米8是小米公司2018年5月31日发布的8周年旗舰手机，亦是小米数字系列的第七代手机。搭载骁龙845处理器，拥有红外人脸识别、双频GPS等技术。具备AI双摄、光学变焦和光学防抖等功能。', '2017年经典款新！精致小黑！22.3mm轻薄体验，180度开合灵活耐用，高效稳健办公最长可达5小时！', '4499.00', ' *退货补运费 *30天无忧退货 *48小时快速退款', '【E480C-2017新】i5 4G 500G', 'ThinkPadE480c', 'Windows10', '4G', '标准屏(1366×768)', '入门级游戏独立显卡', 'Intel i5低功耗版', '2G', '常规笔记本', '500G', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/58745160N7de01df6.jpg\"></div></div></div>', 151423456789, 733, 0),
(11, 3, '小米8是小米公司2018年5月31日发布的8周年旗舰手机，亦是小米数字系列的第七代手机。搭载骁龙845处理器，拥有红外人脸识别、双频GPS等技术。具备AI双摄、光学变焦和光学防抖等功能。', '2017年经典款新！精致小黑！22.3mm轻薄体验，180度开合灵活耐用，高效稳健办公最长可达5小时！', '5399.00', ' *退货补运费 *30天无忧退货 *48小时快速退款', '【E480C-2017新】i5 4G 256GSSD', 'ThinkPadE480c', 'Windows10', '4G', '标准屏(1366×768)', '入门级游戏独立显卡', 'Intel i5低功耗版', '2G', '常规笔记本', '256G固态', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/58745160N7de01df6.jpg\"></div></div></div>', 152423456789, 913, 1),
(12, 3, '小米8是小米公司2018年5月31日发布的8周年旗舰手机，亦是小米数字系列的第七代手机。搭载骁龙845处理器，拥有红外人脸识别、双频GPS等技术。具备AI双摄、光学变焦和光学防抖等功能。', '2017年经典款新！精致小黑！22.3mm轻薄体验，180度开合灵活耐用，高效稳健办公最长可达5小时！', '5999.00', ' *退货补运费 *30天无忧退货 *48小时快速退款', '【E480C-2017新】i5 8G 256GSSD', 'ThinkPadE480c', 'Windows10', '8G', '标准屏(1366×768)', '入门级游戏独立显卡', 'Intel i5低功耗版', '2G', '常规笔记本', '256G固态', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/58745160N7de01df6.jpg\"></div></div></div>', 153423456789, 112, 0),
(13, 4, '小米8是小米公司2018年5月31日发布的8周年旗舰手机，亦是小米数字系列的第七代手机。搭载骁龙845处理器，拥有红外人脸识别、双频GPS等技术。具备AI双摄、光学变焦和光学防抖等功能。', '【铝镁合金 纯固态 轻至1.45kg 金属超极本 】双尺寸可选', '4299.00', ' *退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '13.3英寸I3-7100U/4G/128G固态', '华硕(ASUS)13.3英寸RX310UQ金属超极本 学生 商务', 'Windows 10', '8G', '全高清屏(1920×1080)', '高性能游戏独立显卡', 'Intel i5低功耗版', '2G', '轻薄本', '128G固态', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59190fe7N6a9fb112.jpg\"><img class=\"\" src=\"img/product/detail/58d0bfceNc0694135.jpg\"><img class=\"\" src=\"img/product/detail/59143b58N0f24f48d.jpg\"><img class=\"\" src=\"img/product/detail/58f9de03Nd67611dc.jpg\"><img class=\"\" src=\"img/product/detail/58d0bfcbNc96d061c.jpg\"><img class=\"\" src=\"img/product/detail/58d0bfd1Nea212a7a.jpg\"></div></div></div>', 151123456789, 1197, 1),
(14, 4, '小米8是小米公司2018年5月31日发布的8周年旗舰手机，亦是小米数字系列的第七代手机。搭载骁龙845处理器，拥有红外人脸识别、双频GPS等技术。具备AI双摄、光学变焦和光学防抖等功能。', '【铝镁合金 纯固态 轻至1.45kg 金属超极本 】双尺寸可选', '4999.00', ' *退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '13.3英寸I5/4G/128G固态', '华硕(ASUS)13.3英寸RX310UQ金属超极本 学生 商务', 'Windows 10', '8G', '全高清屏(1920×1080)', '高性能游戏独立显卡', 'Intel i5低功耗版', '2G', '轻薄本', '128G固态', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59190fe7N6a9fb112.jpg\"><img class=\"\" src=\"img/product/detail/58d0bfceNc0694135.jpg\"><img class=\"\" src=\"img/product/detail/59143b58N0f24f48d.jpg\"><img class=\"\" src=\"img/product/detail/58f9de03Nd67611dc.jpg\"><img class=\"\" src=\"img/product/detail/58d0bfcbNc96d061c.jpg\"><img class=\"\" src=\"img/product/detail/58d0bfd1Nea212a7a.jpg\"></div></div></div>', 152123456789, 137, 0),
(15, 4, '小米mix2s,屏幕尺寸为5.99英寸，分辨率FHD，配备骁龙845处理器，内存方面有6+64/6+128/8+256GB三个版本，3299元起售。', '【铝镁合金 纯固态 轻至1.45kg 金属超极本 】双尺寸可选', '5499.00', ' *退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '13.3英寸I5/4G/256G/2G独显', '华硕(ASUS)13.3英寸RX310UQ金属超极本 学生 商务', 'Windows 10', '4G', '全高清屏(1920×1080)', '高性能游戏独立显卡', 'Intel i5低功耗版', '2G', '轻薄本', '128G固态', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59190fe7N6a9fb112.jpg\"><img class=\"\" src=\"img/product/detail/58d0bfceNc0694135.jpg\"><img class=\"\" src=\"img/product/detail/59143b58N0f24f48d.jpg\"><img class=\"\" src=\"img/product/detail/58f9de03Nd67611dc.jpg\"><img class=\"\" src=\"img/product/detail/58d0bfcbNc96d061c.jpg\"><img class=\"\" src=\"img/product/detail/58d0bfd1Nea212a7a.jpg\"></div></div></div>', 153123456789, 21, 0),
(16, 4, '小米8是小米公司2018年5月31日发布的8周年旗舰手机，亦是小米数字系列的第七代手机。搭载骁龙845处理器，拥有红外人脸识别、双频GPS等技术。具备AI双摄、光学变焦和光学防抖等功能。', '【铝镁合金 纯固态 轻至1.45kg 金属超极本 】双尺寸可选', '5699.00', ' *退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '13.3英寸I5/8G/256G/2G独显', '华硕(ASUS)13.3英寸RX310UQ金属超极本 学生 商务', 'Windows 10', '8G', '全高清屏(1920×1080)', '高性能游戏独立显卡', 'Intel i5低功耗版', '2G', '轻薄本', '128G固态', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59190fe7N6a9fb112.jpg\"><img class=\"\" src=\"img/product/detail/58d0bfceNc0694135.jpg\"><img class=\"\" src=\"img/product/detail/59143b58N0f24f48d.jpg\"><img class=\"\" src=\"img/product/detail/58f9de03Nd67611dc.jpg\"><img class=\"\" src=\"img/product/detail/58d0bfcbNc96d061c.jpg\"><img class=\"\" src=\"img/product/detail/58d0bfd1Nea212a7a.jpg\"></div></div></div>', 152423456789, 981, 0),
(17, 5, '小米8是小米公司2018年5月31日发布的8周年旗舰手机，亦是小米数字系列的第七代手机。搭载骁龙845处理器，拥有红外人脸识别、双频GPS等技术。具备AI双摄、光学变焦和光学防抖等功能。', '【小新家族2017闪耀换新！晒单得E卡！12期免息！】小新700电竞版！经典之选', '5199.00', ' *退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '小新700【i5 双硬盘 GTX950M】', '联想小新700', 'Windows 10', '8G', '分辨率：全高清屏(1920×1080)', 'GTX950M', 'Intel i5标准电压版', '4G', '游戏本', '128G+500G', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/58ca2b14Nd5c09fcd.jpg\"><img class=\"\" src=\"img/product/detail/58ca2b28Na5a22f83.jpg\"><img class=\"\" src=\"img/product/detail/58ca3012Nc99ab61f.jpg\"><img class=\"\" src=\"img/product/detail/58ca2b51Nbf258c3b.jpg\"><img class=\"\" src=\"img/product/detail/58ca2b67N436e60de.jpg\"></div></div></div>', 149123456789, 192, 1),
(18, 5, '小米8是小米公司2018年5月31日发布的8周年旗舰手机，亦是小米数字系列的第七代手机。搭载骁龙845处理器，拥有红外人脸识别、双频GPS等技术。具备AI双摄、光学变焦和光学防抖等功能。', '【小新家族2017闪耀换新！晒单得E卡！12期免息！】小新700电竞版！经典之选', '5499.00', ' *退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '小新700【i7 8G 500G GTX950M】', '联想小新700', 'Windows 10', '8G', '分辨率：全高清屏(1920×1080)', 'GTX950M', 'Intel i7标准电压版', '4G', '游戏本', '128G+500G', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/58ca2b14Nd5c09fcd.jpg\"><img class=\"\" src=\"img/product/detail/58ca2b28Na5a22f83.jpg\"><img class=\"\" src=\"img/product/detail/58ca3012Nc99ab61f.jpg\"><img class=\"\" src=\"img/product/detail/58ca2b51Nbf258c3b.jpg\"><img class=\"\" src=\"img/product/detail/58ca2b67N436e60de.jpg\"></div></div></div>', 151523456789, 260, 0),
(19, 6, '小米8是小米公司2018年5月31日发布的8周年旗舰手机，亦是小米数字系列的第七代手机。搭载骁龙845处理器，拥有红外人脸识别、双频GPS等技术。具备AI双摄、光学变焦和光学防抖等功能。', '【轻薄微边框、燃7000】七代i5双核CPU、128GSSD+500G双硬盘、IPS全高清显示屏，动力强劲性能澎湃！', '5299.00', ' *退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '【流光银】i5-7200u 4G 128 500G', '戴尔燃7000', 'Windows 10', '4G', '全高清屏(1920×1080)', '入门级游戏独立显卡', 'Intel i5低功耗版', '2G', '轻薄本', '128G+500G', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/58d87221Na033954c.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/58e5e4b5N862f8aa1.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/57bfa672N20953b71.jpg\"></div></div></div>', 151923456789, 911, 0),
(20, 6, '小米8是小米公司2018年5月31日发布的8周年旗舰手机，亦是小米数字系列的第七代手机。搭载骁龙845处理器，拥有红外人脸识别、双频GPS等技术。具备AI双摄、光学变焦和光学防抖等功能。', '【轻薄微边框、燃7000】七代i7双核CPU、128GSSD+500G双硬盘、IPS全高清显示屏，动力强劲性能澎湃！', '6599.00', ' *退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '【溢彩金】i7-7500u 8G 128 1T', '戴尔燃7000', 'Windows 10', '8G', '全高清屏(1920×1080)', '入门级游戏独立显卡', 'Intel i7低功耗版', '2G', '轻薄本', '128G+500G', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/58d87221Na033954c.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/58e5e4b5N862f8aa1.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/57bfa672N20953b71.jpg\"></div></div></div>', 150823456789, 1930, 1),
(21, 6, '小米8是小米公司2018年5月31日发布的8周年旗舰手机，亦是小米数字系列的第七代手机。搭载骁龙845处理器，拥有红外人脸识别、双频GPS等技术。具备AI双摄、光学变焦和光学防抖等功能。', '【轻薄微边框、燃7000元気粉】七代i5双核CPU、128GSSD+500G双硬盘、IPS全高清显示屏，动力强劲性能澎湃！', '5299.00', ' *退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '【元気粉】i5-7200u 4G 128 500G', '戴尔燃7000', 'Windows 10', '4G', '全高清屏(1920×1080)', '入门级游戏独立显卡', 'Intel i5低功耗版', '2G', '轻薄本', '128G+500G', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/58d87221Na033954c.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/58e5e4b5N862f8aa1.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/57bfa672N20953b71.jpg\"></div></div></div>', 151023456789, 987, 1),
(22, 7, '小米8是小米公司2018年5月31日发布的8周年旗舰手机，亦是小米数字系列的第七代手机。搭载骁龙845处理器，拥有红外人脸识别、双频GPS等技术。具备AI双摄、光学变焦和光学防抖等功能。', '【白条6期免息 游匣“10”力出击】七代四核CPU ,GTX1050 4G独显,FHD全高清屏,热血出击！', '6999.00', ' *退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '宗师版 i7-7700HQ 8G GTX1050 4G', '戴尔灵越游匣15PR-5745B', 'Windows 10', '8G', '全高清屏(1920×1080)', 'GTX960M', 'Intel i7标准电压版', '4G', '游戏本', '128G+1T', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003d3fNd4e6c74e.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003d49Nd9aa8623.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003d53N79717f17.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003db4N5441df2e.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003afdN7d9208b8.jpg\"></div></div></div>', 148123456789, 1901, 1),
(23, 7, '小米8是小米公司2018年5月31日发布的8周年旗舰手机，亦是小米数字系列的第七代手机。搭载骁龙845处理器，拥有红外人脸识别、双频GPS等技术。具备AI双摄、光学变焦和光学防抖等功能。', '游匣枪弹版精装上市 3D立体喷涂画面 机身更酷炫 七代四核CPU ,GTX1050 4G独显,FHD全高清屏,热血出击！', '6699.00', ' *退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '枪弹版 i5-7300HQ 8G GTX1050 4G', '戴尔灵越游匣15PR-5645SE', 'Windows 10', '8G', '全高清屏(1920×1080)', 'GTX960M', 'Intel i5标准电压版', '4G', '游戏本', '128G+1T', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003d3fNd4e6c74e.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003d49Nd9aa8623.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003d53N79717f17.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003db4N5441df2e.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003afdN7d9208b8.jpg\"></div></div></div>', 153123456789, 1231, 0),
(24, 7, '小米8是小米公司2018年5月31日发布的8周年旗舰手机，亦是小米数字系列的第七代手机。搭载骁龙845处理器，拥有红外人脸识别、双频GPS等技术。具备AI双摄、光学变焦和光学防抖等功能。', '游匣枪弹版精装上市 3D立体喷涂画面 机身更酷炫 七代四核CPU ,GTX1050 4G独显,FHD全高清屏,热血出击！', '7999.00', ' *退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '枪弹版 i7-7700HQ 8G GTX1050 4G', '戴尔灵越游匣15PR-5645SE', 'Windows 10', '8G', '全高清屏(1920×1080)', 'GTX960M', 'Intel i7标准电压版', '4G', '游戏本', '128G+1T', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003d3fNd4e6c74e.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003d49Nd9aa8623.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003d53N79717f17.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003db4N5441df2e.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003afdN7d9208b8.jpg\"></div></div></div>', 1539923456789, 221, 0),
(25, 7, '小米8是小米公司2018年5月31日发布的8周年旗舰手机，亦是小米数字系列的第七代手机。搭载骁龙845处理器，拥有红外人脸识别、双频GPS等技术。具备AI双摄、光学变焦和光学防抖等功能。', '【强力散热保性能】 960M 4G独显 预装128SSD 双硬盘游戏更劲爽 我们比大多数产品 散热好一些', '6099.00', ' *退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '精锐版 i7-6700HQ 4G GTX960 4G', '戴尔游匣', 'Windows 10', '4G', '全高清屏(1920×1080)', 'GTX960M', 'Intel i7标准电压版', '4G', '游戏本', '128G+1T', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003d3fNd4e6c74e.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003d49Nd9aa8623.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003d53N79717f17.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003db4N5441df2e.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003afdN7d9208b8.jpg\"></div></div></div>', 1519123456789, 711, 1),
(26, 7, '小米8是小米公司2018年5月31日发布的8周年旗舰手机，亦是小米数字系列的第七代手机。搭载骁龙845处理器，拥有红外人脸识别、双频GPS等技术。具备AI双摄、光学变焦和光学防抖等功能。', '【选游戏本还得看散热】960M 4G独显 预装128SSD 双硬盘游戏更劲爽 ！', '5299.00', ' *退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '精锐版 i5-6300HQ 4G GTX960 4G', '戴尔游匣', 'Windows 10', '4G', '全高清屏(1920×1080)', 'GTX960M', 'Intel i5标准电压版', '4G', '游戏本', '128G+1T', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003d3fNd4e6c74e.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003d49Nd9aa8623.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003d53N79717f17.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003db4N5441df2e.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003afdN7d9208b8.jpg\"></div></div></div>', 1529123456789, 319, 0),
(27, 7, '小米8是小米公司2018年5月31日发布的8周年旗舰手机，亦是小米数字系列的第七代手机。搭载骁龙845处理器，拥有红外人脸识别、双频GPS等技术。具备AI双摄、光学变焦和光学防抖等功能。', '【白条6期免息 游匣“10”力出击】七代四核CPU ,GTX1050 4G独显,FHD全高清屏,热血出击！', '5999.00', ' *退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '宗师版 i5-7300HQ 8G GTX1050 4G', '戴尔灵越游匣15PR-5645B', 'Windows 10', '8G', '全高清屏(1920×1080)', 'GTX1050', 'Intel i7标准电压版', '4G', '游戏本', '128G+1T', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003d3fNd4e6c74e.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003d49Nd9aa8623.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003d53N79717f17.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003db4N5441df2e.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003afdN7d9208b8.jpg\"></div></div></div>', 1511123456789, 2110, 0),
(28, 8, '小米手机6是小米公司在2017年4月19日正式发布的旗舰机，成为国内首款配备高通骁龙835处理器的手机。', '点击进入5月大促，超值满千减百品牌周', '3998.00', '*30天无忧退货 *48小时快速退款', '【E470C-2017新】i5 4G 500G', 'ThinkPadE470 c', 'Linux', '4G', '标准屏(1366×768)', '入门级游戏独立显卡', 'Intel i5低功耗版', '2G', '常规本', '500G', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/58119b8aNb84f1e22.jpg\"></div></div></div>', 150123456789, 117, 1),
(29, 8, '小米8是小米公司2018年5月31日发布的8周年旗舰手机，亦是小米数字系列的第七代手机。搭载骁龙845处理器，拥有红外人脸识别、双频GPS等技术。具备AI双摄、光学变焦和光学防抖等功能。', '点击进入5月大促，超值满千减百品牌周', '4699.00', '*30天无忧退货 *48小时快速退款', '【E470C-2017新】i5 8G 500G', 'ThinkPadE470 c', 'Linux', '8G', '标准屏(1366×768)', '入门级游戏独立显卡', 'Intel i5低功耗版', '2G', '常规本', '500G', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/58119b8aNb84f1e22.jpg\"></div></div></div>', 151123456789, 1862, 0),
(30, 8, '小米8是小米公司2018年5月31日发布的8周年旗舰手机，亦是小米数字系列的第七代手机。搭载骁龙845处理器，拥有红外人脸识别、双频GPS等技术。具备AI双摄、光学变焦和光学防抖等功能。', '点击进入5月大促，超值满千减百品牌周', '5499.00', '*30天无忧退货 *48小时快速退款', '【E470C-2017新】i5 8G 1TB', 'ThinkPadE470 c', 'Linux', '8G', '标准屏(1366×768)', '入门级游戏独立显卡', 'Intel i5低功耗版', '2G', '常规本', '1T', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/58119b8aNb84f1e22.jpg\"></div></div></div>', 152123456789, 812, 1),
(31, 8, '小米手机6是小米公司在2017年4月19日正式发布的旗舰机，成为国内首款配备高通骁龙835处理器的手机。', '点击进入5月大促，超值满千减百品牌周', '5399.00', '*30天无忧退货 *48小时快速退款', '【E470C-2017新】i5 4G 256GSSD', 'ThinkPadE470 c', 'Linux', '4G', '标准屏(1366×768)', '入门级游戏独立显卡', 'Intel i5低功耗版', '2G', '常规本', '256G固态', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/58119b8aNb84f1e22.jpg\"></div></div></div>', 153123456789, 162, 0),
(32, 8, '小米8是小米公司2018年5月31日发布的8周年旗舰手机，亦是小米数字系列的第七代手机。搭载骁龙845处理器，拥有红外人脸识别、双频GPS等技术。具备AI双摄、光学变焦和光学防抖等功能。', '点击进入5月大促，超值满千减百品牌周', '5499.00', '*30天无忧退货 *48小时快速退款', '【E470C-2017新】i5 8G 256GSSD', 'ThinkPadE470 c', 'Linux', '8G', '标准屏(1366×768)', '入门级游戏独立显卡', 'Intel i5低功耗版', '2G', '常规本', '256G固态', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/58119b8aNb84f1e22.jpg\"></div></div></div>', 154123456789, 1180, 0),
(33, 9, '小米8是小米公司2018年5月31日发布的8周年旗舰手机，亦是小米数字系列的第七代手机。搭载骁龙845处理器，拥有红外人脸识别、双频GPS等技术。具备AI双摄、光学变焦和光学防抖等功能。', '顽石血统 标压电竞版 强劲动力带你畅快遨游', '4999.00', ' *退货补运费 *30天无忧退货 *72小时发货', '【高速】顽石游戏本i74G1T128SSD', '华硕FH5900V', 'Windows 10', '4G', '全高清屏(1920*1080)', '入门级游戏独立显卡', 'Intel i7标准电压版', '2G', '游戏本', '128G+1T', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/583d2fb0N44aa29cf.jpg\"><img class=\"\" src=\"img/product/detail/583d2fd5N33db758b.jpg\"><img class=\"\" src=\"img/product/detail/583d359aN47f3276b.jpg\"><img class=\"\" src=\"img/product/detail/583d3036Nef20d28f.jpg\"><img class=\"\" src=\"img/product/detail/583d304aN4722f8d5.jpg\"></div></div></div>', 1450123456789, 1231, 0),
(34, 9, '小米8是小米公司2018年5月31日发布的8周年旗舰手机，亦是小米数字系列的第七代手机。搭载骁龙845处理器，拥有红外人脸识别、双频GPS等技术。具备AI双摄、光学变焦和光学防抖等功能。', '第七代i7处理器，8G超大内存与1T硬盘，快无止境、大无止境', '4699.00', ' *退货补运费 *30天无忧退货 *72小时发货', '顽石经典【高配i7 8G 1T 深蓝】', '华硕FL5900UQ', 'Windows 10', '8G', '全高清屏(1920*1080)', '入门级游戏独立显卡', 'Intel i7低功耗版', '2G', '游戏本', '1T', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/583d2fb0N44aa29cf.jpg\"><img class=\"\" src=\"img/product/detail/583d2fd5N33db758b.jpg\"><img class=\"\" src=\"img/product/detail/583d359aN47f3276b.jpg\"><img class=\"\" src=\"img/product/detail/583d3036Nef20d28f.jpg\"><img class=\"\" src=\"img/product/detail/583d304aN4722f8d5.jpg\"></div></div></div>', 1550123456789, 1231, 1),
(35, 9, '小米8是小米公司2018年5月31日发布的8周年旗舰手机，亦是小米数字系列的第七代手机。搭载骁龙845处理器，拥有红外人脸识别、双频GPS等技术。具备AI双摄、光学变焦和光学防抖等功能。', '混合硬盘，1T搭载128G固态，读取速度更快，智能散热不烫手！！', '4999.00', ' *退货补运费 *30天无忧退货 *72小时发货', '顽石双盘【i7 4G 1t加128SSD】', '华硕FL5900UQ', 'Windows 10', '4G', '全高清屏(1920*1080)', '入门级游戏独立显卡', 'Intel i7低功耗版', '2G', '游戏本', '128G+1T', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/583d2fb0N44aa29cf.jpg\"><img class=\"\" src=\"img/product/detail/583d2fd5N33db758b.jpg\"><img class=\"\" src=\"img/product/detail/583d359aN47f3276b.jpg\"><img class=\"\" src=\"img/product/detail/583d3036Nef20d28f.jpg\"><img class=\"\" src=\"img/product/detail/583d304aN4722f8d5.jpg\"></div></div></div>', 1531023456789, 221, 0),
(36, 9, '小米mix2s,屏幕尺寸为5.99英寸，分辨率FHD，配备骁龙845处理器，内存方面有6+64/6+128/8+256GB三个版本，3299元起售。', '【同样配置看主板，搭配华硕主板让您放心，屏幕无坏点保证】办公，游戏无压力！！！', '4799.00', ' *退货补运费 *30天无忧退货 *72小时发货', '顽石高速【i7-4G 512SSD 炫红】', '华硕FL5900U', 'Windows 10', '4G', '全高清屏(1920*1080)', 'GT940M', 'Intel i7低功耗版', '2G', '游戏本', '512G固态', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/583d2fb0N44aa29cf.jpg\"><img class=\"\" src=\"img/product/detail/583d2fd5N33db758b.jpg\"><img class=\"\" src=\"img/product/detail/583d359aN47f3276b.jpg\"><img class=\"\" src=\"img/product/detail/583d3036Nef20d28f.jpg\"><img class=\"\" src=\"img/product/detail/583d304aN4722f8d5.jpg\"></div></div></div>', 1510123456789, 103, 1),
(37, 9, '小米mix2s,屏幕尺寸为5.99英寸，分辨率FHD，配备骁龙845处理器，内存方面有6+64/6+128/8+256GB三个版本，3299元起售。', '疾速版，就是要你快！512G固态硬盘，第六代i7处理器搭载2G独显！', '4799.00', ' *退货补运费 *30天无忧退货 *72小时发货', '顽石高速【i74G512SSD NV940MX】', '华硕FL5900UQ', 'Windows 10', '4G', '全高清屏(1920*1080)', '入门级游戏独立显卡', 'Intel i7低功耗版', '2G', '游戏本', '512G固态', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/583d2fb0N44aa29cf.jpg\"><img class=\"\" src=\"img/product/detail/583d2fd5N33db758b.jpg\"><img class=\"\" src=\"img/product/detail/583d359aN47f3276b.jpg\"><img class=\"\" src=\"img/product/detail/583d3036Nef20d28f.jpg\"><img class=\"\" src=\"img/product/detail/583d304aN4722f8d5.jpg\"></div></div></div>', 1450123456789, 341, 0),
(38, 10, '小米8是小米公司2018年5月31日发布的8周年旗舰手机，亦是小米数字系列的第七代手机。搭载骁龙845处理器，拥有红外人脸识别、双频GPS等技术。具备AI双摄、光学变焦和光学防抖等功能。', '超强性价比！！', '6199.00', ' *退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', 'Z7M GT【i7 128G+1T GTX1050Ti】', '神舟战神Z7M-KP7GT', 'Windows 10', '8G', '全高清屏(1920×1080)', 'GTX1050Ti', 'Intel i7标准电压版', '4G', '游戏本', '128G+1T', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/58c67b22Ned66fcb8.jpg\"> <img class=\"\" src=\"img/product/detail/58c67b23Nfffc2f8b.jpg\"> <img class=\"\" src=\"img/product/detail/58c67b22N04b18388.jpg\"> <img class=\"\" src=\"img/product/detail/58c67b24N6d5ce71c.jpg\"> <img class=\"\" src=\"img/product/detail/58c67b24Nac3dc074.jpg\"> <img class=\"\" src=\"img/product/detail/58c67b22N8aa1905c.jpg\"> <img class=\"\" src=\"img/product/detail/58c67b24N9aa8a252.jpg\"></div></div></div>', 151123456789, 441, 0),
(39, 10, '小米8是小米公司2018年5月31日发布的8周年旗舰手机，亦是小米数字系列的第七代手机。搭载骁龙845处理器，拥有红外人脸识别、双频GPS等技术。具备AI双摄、光学变焦和光学防抖等功能。', '六代i7 SSD GTX965M还预装WIN10，一步到位，你赢了！', '5499.00', ' *退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '战神Z7M【四核i7 GTX965M】', '神舟战神Z7M', 'Windows 10', '8G', '全高清屏(1920×1080)', 'GTX965M', 'Intel i7标准电压版', '4G', '游戏本', '128G+1T', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/58c67b22Ned66fcb8.jpg\"> <img class=\"\" src=\"img/product/detail/58c67b23Nfffc2f8b.jpg\"> <img class=\"\" src=\"img/product/detail/58c67b22N04b18388.jpg\"> <img class=\"\" src=\"img/product/detail/58c67b24N6d5ce71c.jpg\"> <img class=\"\" src=\"img/product/detail/58c67b24Nac3dc074.jpg\"> <img class=\"\" src=\"img/product/detail/58c67b22N8aa1905c.jpg\"> <img class=\"\" src=\"img/product/detail/58c67b24N9aa8a252.jpg\"></div></div></div>', 152123456789, 1289, 1),
(40, 10, '小米8是小米公司2018年5月31日发布的8周年旗舰手机，亦是小米数字系列的第七代手机。搭载骁龙845处理器，拥有红外人脸识别、双频GPS等技术。具备AI双摄、光学变焦和光学防抖等功能。', '超强性价比！！', '4499.00', ' *退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '战神Z7M【四核i5 GTX965M】', '神舟战神Z7M-SL5D1', 'Windows 10', '8G', '全高清屏(1920×1080)', 'GTX965M', 'Intel i7标准电压版', '2G', '游戏本', '1T', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/58c67b22Ned66fcb8.jpg\"> <img class=\"\" src=\"img/product/detail/58c67b23Nfffc2f8b.jpg\"> <img class=\"\" src=\"img/product/detail/58c67b22N04b18388.jpg\"> <img class=\"\" src=\"img/product/detail/58c67b24N6d5ce71c.jpg\"> <img class=\"\" src=\"img/product/detail/58c67b24Nac3dc074.jpg\"> <img class=\"\" src=\"img/product/detail/58c67b22N8aa1905c.jpg\"> <img class=\"\" src=\"img/product/detail/58c67b24N9aa8a252.jpg\"></div></div></div>', 153123456789, 231, 0),
(41, 10, '小米8是小米公司2018年5月31日发布的8周年旗舰手机，亦是小米数字系列的第七代手机。搭载骁龙845处理器，拥有红外人脸识别、双频GPS等技术。具备AI双摄、光学变焦和光学防抖等功能。', '超强性价比！！', '5199.00', ' *退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', 'Z6 GT【i5 128G+1T GTX1050】', '神舟战神Z6-KP5GT', 'Windows 10', '8G', '全高清屏(1920×1080)', 'GTX1050', 'Intel i5标准电压版', '4G', '游戏本', '128G+1T', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/58c67b22Ned66fcb8.jpg\"> <img class=\"\" src=\"img/product/detail/58c67b23Nfffc2f8b.jpg\"> <img class=\"\" src=\"img/product/detail/58c67b22N04b18388.jpg\"> <img class=\"\" src=\"img/product/detail/58c67b24N6d5ce71c.jpg\"> <img class=\"\" src=\"img/product/detail/58c67b24Nac3dc074.jpg\"> <img class=\"\" src=\"img/product/detail/58c67b22N8aa1905c.jpg\"> <img class=\"\" src=\"img/product/detail/58c67b24N9aa8a252.jpg\"></div></div></div>', 154123456789, 469, 1),
(42, 10, '小米8是小米公司2018年5月31日发布的8周年旗舰手机，亦是小米数字系列的第七代手机。搭载骁龙845处理器，拥有红外人脸识别、双频GPS等技术。具备AI双摄、光学变焦和光学防抖等功能。', '17.3英寸大屏游戏本，纯固态硬盘，秒速开启超神之路！', '5499.00', ' *退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '战神G6【17.3英寸 GTX960M】', '神舟战神G6', 'Windows 10', '8G', '全高清屏(1920×1080)', 'GTX960M', 'Intel i7标准电压版', '4G', '游戏本', '256固态', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/58c67b22Ned66fcb8.jpg\"> <img class=\"\" src=\"img/product/detail/58c67b23Nfffc2f8b.jpg\"> <img class=\"\" src=\"img/product/detail/58c67b22N04b18388.jpg\"> <img class=\"\" src=\"img/product/detail/58c67b24N6d5ce71c.jpg\"> <img class=\"\" src=\"img/product/detail/58c67b24Nac3dc074.jpg\"> <img class=\"\" src=\"img/product/detail/58c67b22N8aa1905c.jpg\"> <img class=\"\" src=\"img/product/detail/58c67b24N9aa8a252.jpg\"></div></div></div>', 155123456789, 1223, 0),
(43, 10, '小米8是小米公司2018年5月31日发布的8周年旗舰手机，亦是小米数字系列的第七代手机。搭载骁龙845处理器，拥有红外人脸识别、双频GPS等技术。具备AI双摄、光学变焦和光学防抖等功能。', '预约享5499抢！【128G SSD+1T HDD】双硬盘，春风“十”里，期待是你！', '5699.00', ' *退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', 'Z6 GT【i7 128G+1T GTX1050】', '神舟战神Z6-KP7GT', 'Windows 10', '8G', '全高清屏(1920×1080)', 'GTX1050', 'Intel i7标准电压版', '2G', '游戏本', '128G+1T', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/58c67b22Ned66fcb8.jpg\"> <img class=\"\" src=\"img/product/detail/58c67b23Nfffc2f8b.jpg\"> <img class=\"\" src=\"img/product/detail/58c67b22N04b18388.jpg\"> <img class=\"\" src=\"img/product/detail/58c67b24N6d5ce71c.jpg\"> <img class=\"\" src=\"img/product/detail/58c67b24Nac3dc074.jpg\"> <img class=\"\" src=\"img/product/detail/58c67b22N8aa1905c.jpg\"> <img class=\"\" src=\"img/product/detail/58c67b24N9aa8a252.jpg\"></div></div></div>', 156123456789, 1844, 1);

-- --------------------------------------------------------

--
-- 表的结构 `xz_laptop_family`
--

CREATE TABLE `xz_laptop_family` (
  `fid` int(11) NOT NULL,
  `fname` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `xz_laptop_family`
--

INSERT INTO `xz_laptop_family` (`fid`, `fname`) VALUES
(1, 'AppleMacBookAir'),
(2, '小米Air'),
(3, 'ThinkPadE480C'),
(4, '华硕RX310UQ'),
(5, '联想小新700'),
(6, '戴尔燃7000'),
(7, '戴尔灵越15PR-5745B'),
(8, 'ThinkPadE470 C'),
(9, '华硕FH5900V'),
(10, '神舟战神Z7M-KP7GT');

-- --------------------------------------------------------

--
-- 表的结构 `xz_laptop_pic`
--

CREATE TABLE `xz_laptop_pic` (
  `pid` int(11) NOT NULL,
  `laptop_id` int(11) DEFAULT NULL,
  `sm` varchar(128) DEFAULT NULL,
  `md` varchar(128) DEFAULT NULL,
  `lg` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `xz_laptop_pic`
--

INSERT INTO `xz_laptop_pic` (`pid`, `laptop_id`, `sm`, `md`, `lg`) VALUES
(1, 1, 'img/product/sm/57b12a31N8f4f75a3.jpg', 'img/product/md/57b12a31N8f4f75a3.jpg', 'img/product/lg/57b12a31N8f4f75a3.jpg'),
(2, 1, 'img/product/sm/57ad359dNd4a6f130.jpg', 'img/product/md/57ad359dNd4a6f130.jpg', 'img/product/lg/57ad359dNd4a6f130.jpg'),
(3, 1, 'img/product/sm/57ad8846N64ac3c79.jpg', 'img/product/md/57ad8846N64ac3c79.jpg', 'img/product/lg/57ad8846N64ac3c79.jpg'),
(4, 2, 'img/product/sm/57b12a31N8f4f75a3.jpg', 'img/product/md/57b12a31N8f4f75a3.jpg', 'img/product/lg/57b12a31N8f4f75a3.jpg'),
(5, 2, 'img/product/sm/57ad359dNd4a6f130.jpg', 'img/product/md/57ad359dNd4a6f130.jpg', 'img/product/lg/57ad359dNd4a6f130.jpg'),
(6, 2, 'img/product/sm/57ad8846N64ac3c79.jpg', 'img/product/md/57ad8846N64ac3c79.jpg', 'img/product/lg/57ad8846N64ac3c79.jpg'),
(7, 3, 'img/product/sm/57b12a31N8f4f75a3.jpg', 'img/product/md/57b12a31N8f4f75a3.jpg', 'img/product/lg/57b12a31N8f4f75a3.jpg'),
(8, 3, 'img/product/sm/57ad359dNd4a6f130.jpg', 'img/product/md/57ad359dNd4a6f130.jpg', 'img/product/lg/57ad359dNd4a6f130.jpg'),
(9, 3, 'img/product/sm/57ad8846N64ac3c79.jpg', 'img/product/md/57ad8846N64ac3c79.jpg', 'img/product/lg/57ad8846N64ac3c79.jpg'),
(10, 4, 'img/product/sm/57b12a31N8f4f75a3.jpg', 'img/product/md/57b12a31N8f4f75a3.jpg', 'img/product/lg/57b12a31N8f4f75a3.jpg'),
(11, 4, 'img/product/sm/57ad359dNd4a6f130.jpg', 'img/product/md/57ad359dNd4a6f130.jpg', 'img/product/lg/57ad359dNd4a6f130.jpg'),
(12, 4, 'img/product/sm/57ad8846N64ac3c79.jpg', 'img/product/md/57ad8846N64ac3c79.jpg', 'img/product/lg/57ad8846N64ac3c79.jpg'),
(13, 5, 'img/product/sm/57e3b072N661cd00d.jpg', 'img/product/md/57e3b072N661cd00d.jpg', 'img/product/lg/57e3b072N661cd00d.jpg'),
(14, 5, 'img/product/sm/57e1ff09Nf610fea3.jpg', 'img/product/md/57e1ff09Nf610fea3.jpg', 'img/product/lg/57e1ff09Nf610fea3.jpg'),
(15, 5, 'img/product/sm/57e1ff17N286390a9.jpg', 'img/product/md/57e1ff17N286390a9.jpg', 'img/product/lg/57e1ff17N286390a9.jpg'),
(16, 5, 'img/product/sm/57e1ff2fN8a36d0fe.jpg', 'img/product/md/57e1ff2fN8a36d0fe.jpg', 'img/product/lg/57e1ff2fN8a36d0fe.jpg'),
(17, 5, 'img/product/sm/57e52dffNa4d8ce2c.jpg', 'img/product/md/57e52dffNa4d8ce2c.jpg', 'img/product/lg/57e52dffNa4d8ce2c.jpg'),
(18, 5, 'img/product/sm/57e52e03N4ec367dd.jpg', 'img/product/md/57e52e03N4ec367dd.jpg', 'img/product/lg/57e52e03N4ec367dd.jpg'),
(19, 5, 'img/product/sm/57e52e06N116974f7.jpg', 'img/product/md/57e52e06N116974f7.jpg', 'img/product/lg/57e52e06N116974f7.jpg'),
(20, 6, 'img/product/sm/57e3b072N661cd00d.jpg', 'img/product/md/57e3b072N661cd00d.jpg', 'img/product/lg/57e3b072N661cd00d.jpg'),
(21, 6, 'img/product/sm/57e1ff09Nf610fea3.jpg', 'img/product/md/57e1ff09Nf610fea3.jpg', 'img/product/lg/57e1ff09Nf610fea3.jpg'),
(22, 6, 'img/product/sm/57e1ff17N286390a9.jpg', 'img/product/md/57e1ff17N286390a9.jpg', 'img/product/lg/57e1ff17N286390a9.jpg'),
(23, 6, 'img/product/sm/57e1ff2fN8a36d0fe.jpg', 'img/product/md/57e1ff2fN8a36d0fe.jpg', 'img/product/lg/57e1ff2fN8a36d0fe.jpg'),
(24, 6, 'img/product/sm/57e52dffNa4d8ce2c.jpg', 'img/product/md/57e52dffNa4d8ce2c.jpg', 'img/product/lg/57e52dffNa4d8ce2c.jpg'),
(25, 6, 'img/product/sm/57e52e03N4ec367dd.jpg', 'img/product/md/57e52e03N4ec367dd.jpg', 'img/product/lg/57e52e03N4ec367dd.jpg'),
(26, 6, 'img/product/sm/57e52e06N116974f7.jpg', 'img/product/md/57e52e06N116974f7.jpg', 'img/product/lg/57e52e06N116974f7.jpg'),
(27, 7, 'img/product/sm/57e3b072N661cd00d.jpg', 'img/product/md/57e3b072N661cd00d.jpg', 'img/product/lg/57e3b072N661cd00d.jpg'),
(28, 7, 'img/product/sm/57e1ff09Nf610fea3.jpg', 'img/product/md/57e1ff09Nf610fea3.jpg', 'img/product/lg/57e1ff09Nf610fea3.jpg'),
(29, 7, 'img/product/sm/57e1ff17N286390a9.jpg', 'img/product/md/57e1ff17N286390a9.jpg', 'img/product/lg/57e1ff17N286390a9.jpg'),
(30, 7, 'img/product/sm/57e1ff2fN8a36d0fe.jpg', 'img/product/md/57e1ff2fN8a36d0fe.jpg', 'img/product/lg/57e1ff2fN8a36d0fe.jpg'),
(31, 7, 'img/product/sm/57e52dffNa4d8ce2c.jpg', 'img/product/md/57e52dffNa4d8ce2c.jpg', 'img/product/lg/57e52dffNa4d8ce2c.jpg'),
(32, 7, 'img/product/sm/57e52e03N4ec367dd.jpg', 'img/product/md/57e52e03N4ec367dd.jpg', 'img/product/lg/57e52e03N4ec367dd.jpg'),
(33, 7, 'img/product/sm/57e52e06N116974f7.jpg', 'img/product/md/57e52e06N116974f7.jpg', 'img/product/lg/57e52e06N116974f7.jpg'),
(34, 8, 'img/product/sm/57e3b072N661cd00d.jpg', 'img/product/md/57e3b072N661cd00d.jpg', 'img/product/lg/57e3b072N661cd00d.jpg'),
(35, 8, 'img/product/sm/57e1ff09Nf610fea3.jpg', 'img/product/md/57e1ff09Nf610fea3.jpg', 'img/product/lg/57e1ff09Nf610fea3.jpg'),
(36, 8, 'img/product/sm/57e1ff17N286390a9.jpg', 'img/product/md/57e1ff17N286390a9.jpg', 'img/product/lg/57e1ff17N286390a9.jpg'),
(37, 8, 'img/product/sm/57e1ff2fN8a36d0fe.jpg', 'img/product/md/57e1ff2fN8a36d0fe.jpg', 'img/product/lg/57e1ff2fN8a36d0fe.jpg'),
(38, 8, 'img/product/sm/57e52dffNa4d8ce2c.jpg', 'img/product/md/57e52dffNa4d8ce2c.jpg', 'img/product/lg/57e52dffNa4d8ce2c.jpg'),
(39, 8, 'img/product/sm/57e52e03N4ec367dd.jpg', 'img/product/md/57e52e03N4ec367dd.jpg', 'img/product/lg/57e52e03N4ec367dd.jpg'),
(40, 8, 'img/product/sm/57e52e06N116974f7.jpg', 'img/product/md/57e52e06N116974f7.jpg', 'img/product/lg/57e52e06N116974f7.jpg'),
(41, 9, 'img/product/sm/584b5678Nbc9f1e70.jpg', 'img/product/md/584b5678Nbc9f1e70.jpg', 'img/product/lg/584b5678Nbc9f1e70.jpg'),
(42, 9, 'img/product/sm/584b567dNd9c58341.jpg', 'img/product/md/584b567dNd9c58341.jpg', 'img/product/lg/584b567dNd9c58341.jpg'),
(43, 9, 'img/product/sm/5819a0ebNefd901bc.jpg', 'img/product/md/5819a0ebNefd901bc.jpg', 'img/product/lg/5819a0ebNefd901bc.jpg'),
(44, 9, 'img/product/sm/5819a106Necf0abb8.jpg', 'img/product/md/5819a106Necf0abb8.jpg', 'img/product/lg/5819a106Necf0abb8.jpg'),
(45, 9, 'img/product/sm/5819a10bN2ea5c8e0.jpg', 'img/product/md/5819a10bN2ea5c8e0.jpg', 'img/product/lg/5819a10bN2ea5c8e0.jpg'),
(46, 9, 'img/product/sm/5819a10fNd0f96a03.jpg', 'img/product/md/5819a10fNd0f96a03.jpg', 'img/product/lg/5819a10fNd0f96a03.jpg'),
(47, 9, 'img/product/sm/5819a114Ne0cd75db.jpg', 'img/product/md/5819a114Ne0cd75db.jpg', 'img/product/lg/5819a114Ne0cd75db.jpg'),
(48, 9, 'img/product/sm/5819a133N03021b26.jpg', 'img/product/md/5819a133N03021b26.jpg', 'img/product/lg/5819a133N03021b26.jpg'),
(49, 10, 'img/product/sm/584b5678Nbc9f1e70.jpg', 'img/product/md/584b5678Nbc9f1e70.jpg', 'img/product/lg/584b5678Nbc9f1e70.jpg'),
(50, 10, 'img/product/sm/584b567dNd9c58341.jpg', 'img/product/md/584b567dNd9c58341.jpg', 'img/product/lg/584b567dNd9c58341.jpg'),
(51, 10, 'img/product/sm/5819a0ebNefd901bc.jpg', 'img/product/md/5819a0ebNefd901bc.jpg', 'img/product/lg/5819a0ebNefd901bc.jpg'),
(52, 10, 'img/product/sm/5819a106Necf0abb8.jpg', 'img/product/md/5819a106Necf0abb8.jpg', 'img/product/lg/5819a106Necf0abb8.jpg'),
(53, 10, 'img/product/sm/5819a10bN2ea5c8e0.jpg', 'img/product/md/5819a10bN2ea5c8e0.jpg', 'img/product/lg/5819a10bN2ea5c8e0.jpg'),
(54, 10, 'img/product/sm/5819a10fNd0f96a03.jpg', 'img/product/md/5819a10fNd0f96a03.jpg', 'img/product/lg/5819a10fNd0f96a03.jpg'),
(55, 10, 'img/product/sm/5819a114Ne0cd75db.jpg', 'img/product/md/5819a114Ne0cd75db.jpg', 'img/product/lg/5819a114Ne0cd75db.jpg'),
(56, 10, 'img/product/sm/5819a133N03021b26.jpg', 'img/product/md/5819a133N03021b26.jpg', 'img/product/lg/5819a133N03021b26.jpg'),
(57, 11, 'img/product/sm/584b5678Nbc9f1e70.jpg', 'img/product/md/584b5678Nbc9f1e70.jpg', 'img/product/lg/584b5678Nbc9f1e70.jpg'),
(58, 11, 'img/product/sm/584b567dNd9c58341.jpg', 'img/product/md/584b567dNd9c58341.jpg', 'img/product/lg/584b567dNd9c58341.jpg'),
(59, 11, 'img/product/sm/5819a0ebNefd901bc.jpg', 'img/product/md/5819a0ebNefd901bc.jpg', 'img/product/lg/5819a0ebNefd901bc.jpg'),
(60, 11, 'img/product/sm/5819a106Necf0abb8.jpg', 'img/product/md/5819a106Necf0abb8.jpg', 'img/product/lg/5819a106Necf0abb8.jpg'),
(61, 11, 'img/product/sm/5819a10bN2ea5c8e0.jpg', 'img/product/md/5819a10bN2ea5c8e0.jpg', 'img/product/lg/5819a10bN2ea5c8e0.jpg'),
(62, 11, 'img/product/sm/5819a10fNd0f96a03.jpg', 'img/product/md/5819a10fNd0f96a03.jpg', 'img/product/lg/5819a10fNd0f96a03.jpg'),
(63, 11, 'img/product/sm/5819a114Ne0cd75db.jpg', 'img/product/md/5819a114Ne0cd75db.jpg', 'img/product/lg/5819a114Ne0cd75db.jpg'),
(64, 11, 'img/product/sm/5819a133N03021b26.jpg', 'img/product/md/5819a133N03021b26.jpg', 'img/product/lg/5819a133N03021b26.jpg'),
(65, 12, 'img/product/sm/584b5678Nbc9f1e70.jpg', 'img/product/md/584b5678Nbc9f1e70.jpg', 'img/product/lg/584b5678Nbc9f1e70.jpg'),
(66, 12, 'img/product/sm/584b567dNd9c58341.jpg', 'img/product/md/584b567dNd9c58341.jpg', 'img/product/lg/584b567dNd9c58341.jpg'),
(67, 12, 'img/product/sm/5819a0ebNefd901bc.jpg', 'img/product/md/5819a0ebNefd901bc.jpg', 'img/product/lg/5819a0ebNefd901bc.jpg'),
(68, 12, 'img/product/sm/5819a106Necf0abb8.jpg', 'img/product/md/5819a106Necf0abb8.jpg', 'img/product/lg/5819a106Necf0abb8.jpg'),
(69, 12, 'img/product/sm/5819a10bN2ea5c8e0.jpg', 'img/product/md/5819a10bN2ea5c8e0.jpg', 'img/product/lg/5819a10bN2ea5c8e0.jpg'),
(70, 12, 'img/product/sm/5819a10fNd0f96a03.jpg', 'img/product/md/5819a10fNd0f96a03.jpg', 'img/product/lg/5819a10fNd0f96a03.jpg'),
(71, 12, 'img/product/sm/5819a114Ne0cd75db.jpg', 'img/product/md/5819a114Ne0cd75db.jpg', 'img/product/lg/5819a114Ne0cd75db.jpg'),
(72, 12, 'img/product/sm/5819a133N03021b26.jpg', 'img/product/md/5819a133N03021b26.jpg', 'img/product/lg/5819a133N03021b26.jpg'),
(73, 13, 'img/product/sm/590a98f9N8039f132.jpg', 'img/product/md/590a98f9N8039f132.jpg', 'img/product/lg/590a98f9N8039f132.jpg'),
(74, 13, 'img/product/sm/58f46de7N0dafbae3.jpg', 'img/product/md/58f46de7N0dafbae3.jpg', 'img/product/lg/58f46de7N0dafbae3.jpg'),
(75, 13, 'img/product/sm/58e5c226N4836a223.jpg', 'img/product/md/58e5c226N4836a223.jpg', 'img/product/lg/58e5c226N4836a223.jpg'),
(76, 13, 'img/product/sm/58dc76d5N8a0947a3.jpg', 'img/product/md/58dc76d5N8a0947a3.jpg', 'img/product/lg/58dc76d5N8a0947a3.jpg'),
(77, 13, 'img/product/sm/58fd9c54Nec723d68.jpg', 'img/product/md/58fd9c54Nec723d68.jpg', 'img/product/lg/58fd9c54Nec723d68.jpg'),
(78, 13, 'img/product/sm/58bfc2afNd44b4135.jpg', 'img/product/md/58bfc2afNd44b4135.jpg', 'img/product/lg/58bfc2afNd44b4135.jpg'),
(79, 14, 'img/product/sm/590a98f9N8039f132.jpg', 'img/product/md/590a98f9N8039f132.jpg', 'img/product/lg/590a98f9N8039f132.jpg'),
(80, 14, 'img/product/sm/58f46de7N0dafbae3.jpg', 'img/product/md/58f46de7N0dafbae3.jpg', 'img/product/lg/58f46de7N0dafbae3.jpg'),
(81, 14, 'img/product/sm/58e5c226N4836a223.jpg', 'img/product/md/58e5c226N4836a223.jpg', 'img/product/lg/58e5c226N4836a223.jpg'),
(82, 14, 'img/product/sm/58dc76d5N8a0947a3.jpg', 'img/product/md/58dc76d5N8a0947a3.jpg', 'img/product/lg/58dc76d5N8a0947a3.jpg'),
(83, 14, 'img/product/sm/58fd9c54Nec723d68.jpg', 'img/product/md/58fd9c54Nec723d68.jpg', 'img/product/lg/58fd9c54Nec723d68.jpg'),
(84, 14, 'img/product/sm/58bfc2afNd44b4135.jpg', 'img/product/md/58bfc2afNd44b4135.jpg', 'img/product/lg/58bfc2afNd44b4135.jpg'),
(85, 15, 'img/product/sm/590a98f9N8039f132.jpg', 'img/product/md/590a98f9N8039f132.jpg', 'img/product/lg/590a98f9N8039f132.jpg'),
(86, 15, 'img/product/sm/58f46de7N0dafbae3.jpg', 'img/product/md/58f46de7N0dafbae3.jpg', 'img/product/lg/58f46de7N0dafbae3.jpg'),
(87, 15, 'img/product/sm/58e5c226N4836a223.jpg', 'img/product/md/58e5c226N4836a223.jpg', 'img/product/lg/58e5c226N4836a223.jpg'),
(88, 15, 'img/product/sm/58dc76d5N8a0947a3.jpg', 'img/product/md/58dc76d5N8a0947a3.jpg', 'img/product/lg/58dc76d5N8a0947a3.jpg'),
(89, 15, 'img/product/sm/58fd9c54Nec723d68.jpg', 'img/product/md/58fd9c54Nec723d68.jpg', 'img/product/lg/58fd9c54Nec723d68.jpg'),
(90, 15, 'img/product/sm/58bfc2afNd44b4135.jpg', 'img/product/md/58bfc2afNd44b4135.jpg', 'img/product/lg/58bfc2afNd44b4135.jpg'),
(91, 16, 'img/product/sm/590a98f9N8039f132.jpg', 'img/product/md/590a98f9N8039f132.jpg', 'img/product/lg/590a98f9N8039f132.jpg'),
(92, 16, 'img/product/sm/58f46de7N0dafbae3.jpg', 'img/product/md/58f46de7N0dafbae3.jpg', 'img/product/lg/58f46de7N0dafbae3.jpg'),
(93, 16, 'img/product/sm/58e5c226N4836a223.jpg', 'img/product/md/58e5c226N4836a223.jpg', 'img/product/lg/58e5c226N4836a223.jpg'),
(94, 16, 'img/product/sm/58dc76d5N8a0947a3.jpg', 'img/product/md/58dc76d5N8a0947a3.jpg', 'img/product/lg/58dc76d5N8a0947a3.jpg'),
(95, 16, 'img/product/sm/58fd9c54Nec723d68.jpg', 'img/product/md/58fd9c54Nec723d68.jpg', 'img/product/lg/58fd9c54Nec723d68.jpg'),
(96, 16, 'img/product/sm/58bfc2afNd44b4135.jpg', 'img/product/md/58bfc2afNd44b4135.jpg', 'img/product/lg/58bfc2afNd44b4135.jpg'),
(97, 17, 'img/product/sm/587f476aNcfbf7869.jpg', 'img/product/md/587f476aNcfbf7869.jpg', 'img/product/lg/587f476aNcfbf7869.jpg'),
(98, 17, 'img/product/sm/57871083Nefe2d3d6.jpg', 'img/product/md/57871083Nefe2d3d6.jpg', 'img/product/lg/57871083Nefe2d3d6.jpg'),
(99, 17, 'img/product/sm/57871086N86c8f0ab.jpg', 'img/product/md/57871086N86c8f0ab.jpg', 'img/product/lg/57871086N86c8f0ab.jpg'),
(100, 17, 'img/product/sm/5787107bN73d05ad5.jpg', 'img/product/md/5787107bN73d05ad5.jpg', 'img/product/lg/5787107bN73d05ad5.jpg'),
(101, 17, 'img/product/sm/5787109cNaf26e3b0.jpg', 'img/product/md/5787109cNaf26e3b0.jpg', 'img/product/lg/5787109cNaf26e3b0.jpg'),
(102, 17, 'img/product/sm/578710a0N07795fe5.jpg', 'img/product/md/578710a0N07795fe5.jpg', 'img/product/lg/578710a0N07795fe5.jpg'),
(103, 17, 'img/product/sm/578710a3Nc498e3ea.jpg', 'img/product/md/578710a3Nc498e3ea.jpg', 'img/product/lg/578710a3Nc498e3ea.jpg'),
(104, 18, 'img/product/sm/587f476aNcfbf7869.jpg', 'img/product/md/587f476aNcfbf7869.jpg', 'img/product/lg/587f476aNcfbf7869.jpg'),
(105, 18, 'img/product/sm/57871083Nefe2d3d6.jpg', 'img/product/md/57871083Nefe2d3d6.jpg', 'img/product/lg/57871083Nefe2d3d6.jpg'),
(106, 18, 'img/product/sm/57871086N86c8f0ab.jpg', 'img/product/md/57871086N86c8f0ab.jpg', 'img/product/lg/57871086N86c8f0ab.jpg'),
(107, 18, 'img/product/sm/5787107bN73d05ad5.jpg', 'img/product/md/5787107bN73d05ad5.jpg', 'img/product/lg/5787107bN73d05ad5.jpg'),
(108, 18, 'img/product/sm/5787109cNaf26e3b0.jpg', 'img/product/md/5787109cNaf26e3b0.jpg', 'img/product/lg/5787109cNaf26e3b0.jpg'),
(109, 18, 'img/product/sm/578710a0N07795fe5.jpg', 'img/product/md/578710a0N07795fe5.jpg', 'img/product/lg/578710a0N07795fe5.jpg'),
(110, 18, 'img/product/sm/578710a3Nc498e3ea.jpg', 'img/product/md/578710a3Nc498e3ea.jpg', 'img/product/lg/578710a3Nc498e3ea.jpg'),
(111, 19, 'img/product/sm/57bbc38eN9def8042.jpg', 'img/product/md/57bbc38eN9def8042.jpg', 'img/product/lg/57bbc38eN9def8042.jpg'),
(112, 19, 'img/product/sm/57ba6a27Nbb8d2dcf.jpg', 'img/product/md/57ba6a27Nbb8d2dcf.jpg', 'img/product/lg/57ba6a27Nbb8d2dcf.jpg'),
(113, 19, 'img/product/sm/57ba6a38N4f4670bd.jpg', 'img/product/md/57ba6a38N4f4670bd.jpg', 'img/product/lg/57ba6a38N4f4670bd.jpg'),
(114, 19, 'img/product/sm/57ba6a3dN54779e6a.jpg', 'img/product/md/57ba6a3dN54779e6a.jpg', 'img/product/lg/57ba6a3dN54779e6a.jpg'),
(115, 19, 'img/product/sm/57ba6a47N19af9c97.jpg', 'img/product/md/57ba6a47N19af9c97.jpg', 'img/product/lg/57ba6a47N19af9c97.jpg'),
(116, 19, 'img/product/sm/57ba6a4cNb83e292a.jpg', 'img/product/md/57ba6a4cNb83e292a.jpg', 'img/product/lg/57ba6a4cNb83e292a.jpg'),
(117, 19, 'img/product/sm/57ba6a56N1e3e3d63.jpg', 'img/product/md/57ba6a56N1e3e3d63.jpg', 'img/product/lg/57ba6a56N1e3e3d63.jpg'),
(118, 20, 'img/product/sm/57bbc38eN9def8042.jpg', 'img/product/md/57bbc38eN9def8042.jpg', 'img/product/lg/57bbc38eN9def8042.jpg'),
(119, 20, 'img/product/sm/57ba6a27Nbb8d2dcf.jpg', 'img/product/md/57ba6a27Nbb8d2dcf.jpg', 'img/product/lg/57ba6a27Nbb8d2dcf.jpg'),
(120, 20, 'img/product/sm/57ba6a38N4f4670bd.jpg', 'img/product/md/57ba6a38N4f4670bd.jpg', 'img/product/lg/57ba6a38N4f4670bd.jpg'),
(121, 20, 'img/product/sm/57ba6a3dN54779e6a.jpg', 'img/product/md/57ba6a3dN54779e6a.jpg', 'img/product/lg/57ba6a3dN54779e6a.jpg'),
(122, 20, 'img/product/sm/57ba6a47N19af9c97.jpg', 'img/product/md/57ba6a47N19af9c97.jpg', 'img/product/lg/57ba6a47N19af9c97.jpg'),
(123, 20, 'img/product/sm/57ba6a4cNb83e292a.jpg', 'img/product/md/57ba6a4cNb83e292a.jpg', 'img/product/lg/57ba6a4cNb83e292a.jpg'),
(124, 20, 'img/product/sm/57ba6a56N1e3e3d63.jpg', 'img/product/md/57ba6a56N1e3e3d63.jpg', 'img/product/lg/57ba6a56N1e3e3d63.jpg'),
(125, 21, 'img/product/sm/57bbc38eN9def8042.jpg', 'img/product/md/57bbc38eN9def8042.jpg', 'img/product/lg/57bbc38eN9def8042.jpg'),
(126, 21, 'img/product/sm/57ba6a27Nbb8d2dcf.jpg', 'img/product/md/57ba6a27Nbb8d2dcf.jpg', 'img/product/lg/57ba6a27Nbb8d2dcf.jpg'),
(127, 21, 'img/product/sm/57ba6a38N4f4670bd.jpg', 'img/product/md/57ba6a38N4f4670bd.jpg', 'img/product/lg/57ba6a38N4f4670bd.jpg'),
(128, 21, 'img/product/sm/57ba6a3dN54779e6a.jpg', 'img/product/md/57ba6a3dN54779e6a.jpg', 'img/product/lg/57ba6a3dN54779e6a.jpg'),
(129, 21, 'img/product/sm/57ba6a47N19af9c97.jpg', 'img/product/md/57ba6a47N19af9c97.jpg', 'img/product/lg/57ba6a47N19af9c97.jpg'),
(130, 21, 'img/product/sm/57ba6a4cNb83e292a.jpg', 'img/product/md/57ba6a4cNb83e292a.jpg', 'img/product/lg/57ba6a4cNb83e292a.jpg'),
(131, 21, 'img/product/sm/57ba6a56N1e3e3d63.jpg', 'img/product/md/57ba6a56N1e3e3d63.jpg', 'img/product/lg/57ba6a56N1e3e3d63.jpg'),
(132, 22, 'img/product/sm/5913f8ffN49fa143c.jpg', 'img/product/md/5913f8ffN49fa143c.jpg', 'img/product/lg/5913f8ffN49fa143c.jpg'),
(133, 22, 'img/product/sm/5913f903Nbffaa4fd.jpg', 'img/product/md/5913f903Nbffaa4fd.jpg', 'img/product/lg/5913f903Nbffaa4fd.jpg'),
(134, 22, 'img/product/sm/5913f907Ncbc65469.jpg', 'img/product/md/5913f907Ncbc65469.jpg', 'img/product/lg/5913f907Ncbc65469.jpg'),
(135, 22, 'img/product/sm/5913f90bN1b563f42.jpg', 'img/product/md/5913f90bN1b563f42.jpg', 'img/product/lg/5913f90bN1b563f42.jpg'),
(136, 22, 'img/product/sm/5913f90fN99370675.jpg', 'img/product/md/5913f90fN99370675.jpg', 'img/product/lg/5913f90fN99370675.jpg'),
(137, 22, 'img/product/sm/5913f93bNe4d2b3e5.jpg', 'img/product/md/5913f93bNe4d2b3e5.jpg', 'img/product/lg/5913f93bNe4d2b3e5.jpg'),
(138, 22, 'img/product/sm/5913f93fNfd79b4fc.jpg', 'img/product/md/5913f93fNfd79b4fc.jpg', 'img/product/lg/5913f93fNfd79b4fc.jpg'),
(139, 23, 'img/product/sm/5913f8ffN49fa143c.jpg', 'img/product/md/5913f8ffN49fa143c.jpg', 'img/product/lg/5913f8ffN49fa143c.jpg'),
(140, 23, 'img/product/sm/5913f903Nbffaa4fd.jpg', 'img/product/md/5913f903Nbffaa4fd.jpg', 'img/product/lg/5913f903Nbffaa4fd.jpg'),
(141, 23, 'img/product/sm/5913f907Ncbc65469.jpg', 'img/product/md/5913f907Ncbc65469.jpg', 'img/product/lg/5913f907Ncbc65469.jpg'),
(142, 23, 'img/product/sm/5913f90bN1b563f42.jpg', 'img/product/md/5913f90bN1b563f42.jpg', 'img/product/lg/5913f90bN1b563f42.jpg'),
(143, 23, 'img/product/sm/5913f90fN99370675.jpg', 'img/product/md/5913f90fN99370675.jpg', 'img/product/lg/5913f90fN99370675.jpg'),
(144, 23, 'img/product/sm/5913f93bNe4d2b3e5.jpg', 'img/product/md/5913f93bNe4d2b3e5.jpg', 'img/product/lg/5913f93bNe4d2b3e5.jpg'),
(145, 23, 'img/product/sm/5913f93fNfd79b4fc.jpg', 'img/product/md/5913f93fNfd79b4fc.jpg', 'img/product/lg/5913f93fNfd79b4fc.jpg'),
(146, 24, 'img/product/sm/5913f8ffN49fa143c.jpg', 'img/product/md/5913f8ffN49fa143c.jpg', 'img/product/lg/5913f8ffN49fa143c.jpg'),
(147, 24, 'img/product/sm/5913f903Nbffaa4fd.jpg', 'img/product/md/5913f903Nbffaa4fd.jpg', 'img/product/lg/5913f903Nbffaa4fd.jpg'),
(148, 24, 'img/product/sm/5913f907Ncbc65469.jpg', 'img/product/md/5913f907Ncbc65469.jpg', 'img/product/lg/5913f907Ncbc65469.jpg'),
(149, 24, 'img/product/sm/5913f90bN1b563f42.jpg', 'img/product/md/5913f90bN1b563f42.jpg', 'img/product/lg/5913f90bN1b563f42.jpg'),
(150, 24, 'img/product/sm/5913f90fN99370675.jpg', 'img/product/md/5913f90fN99370675.jpg', 'img/product/lg/5913f90fN99370675.jpg'),
(151, 24, 'img/product/sm/5913f93bNe4d2b3e5.jpg', 'img/product/md/5913f93bNe4d2b3e5.jpg', 'img/product/lg/5913f93bNe4d2b3e5.jpg'),
(152, 24, 'img/product/sm/5913f93fNfd79b4fc.jpg', 'img/product/md/5913f93fNfd79b4fc.jpg', 'img/product/lg/5913f93fNfd79b4fc.jpg'),
(153, 25, 'img/product/sm/5913f8ffN49fa143c.jpg', 'img/product/md/5913f8ffN49fa143c.jpg', 'img/product/lg/5913f8ffN49fa143c.jpg'),
(154, 25, 'img/product/sm/5913f903Nbffaa4fd.jpg', 'img/product/md/5913f903Nbffaa4fd.jpg', 'img/product/lg/5913f903Nbffaa4fd.jpg'),
(155, 25, 'img/product/sm/5913f907Ncbc65469.jpg', 'img/product/md/5913f907Ncbc65469.jpg', 'img/product/lg/5913f907Ncbc65469.jpg'),
(156, 25, 'img/product/sm/5913f90bN1b563f42.jpg', 'img/product/md/5913f90bN1b563f42.jpg', 'img/product/lg/5913f90bN1b563f42.jpg'),
(157, 25, 'img/product/sm/5913f90fN99370675.jpg', 'img/product/md/5913f90fN99370675.jpg', 'img/product/lg/5913f90fN99370675.jpg'),
(158, 25, 'img/product/sm/5913f93bNe4d2b3e5.jpg', 'img/product/md/5913f93bNe4d2b3e5.jpg', 'img/product/lg/5913f93bNe4d2b3e5.jpg'),
(159, 25, 'img/product/sm/5913f93fNfd79b4fc.jpg', 'img/product/md/5913f93fNfd79b4fc.jpg', 'img/product/lg/5913f93fNfd79b4fc.jpg'),
(160, 26, 'img/product/sm/5913f8ffN49fa143c.jpg', 'img/product/md/5913f8ffN49fa143c.jpg', 'img/product/lg/5913f8ffN49fa143c.jpg'),
(161, 26, 'img/product/sm/5913f903Nbffaa4fd.jpg', 'img/product/md/5913f903Nbffaa4fd.jpg', 'img/product/lg/5913f903Nbffaa4fd.jpg'),
(162, 26, 'img/product/sm/5913f907Ncbc65469.jpg', 'img/product/md/5913f907Ncbc65469.jpg', 'img/product/lg/5913f907Ncbc65469.jpg'),
(163, 26, 'img/product/sm/5913f90bN1b563f42.jpg', 'img/product/md/5913f90bN1b563f42.jpg', 'img/product/lg/5913f90bN1b563f42.jpg'),
(164, 26, 'img/product/sm/5913f90fN99370675.jpg', 'img/product/md/5913f90fN99370675.jpg', 'img/product/lg/5913f90fN99370675.jpg'),
(165, 26, 'img/product/sm/5913f93bNe4d2b3e5.jpg', 'img/product/md/5913f93bNe4d2b3e5.jpg', 'img/product/lg/5913f93bNe4d2b3e5.jpg'),
(166, 26, 'img/product/sm/5913f93fNfd79b4fc.jpg', 'img/product/md/5913f93fNfd79b4fc.jpg', 'img/product/lg/5913f93fNfd79b4fc.jpg'),
(167, 27, 'img/product/sm/5913f8ffN49fa143c.jpg', 'img/product/md/5913f8ffN49fa143c.jpg', 'img/product/lg/5913f8ffN49fa143c.jpg'),
(168, 27, 'img/product/sm/5913f903Nbffaa4fd.jpg', 'img/product/md/5913f903Nbffaa4fd.jpg', 'img/product/lg/5913f903Nbffaa4fd.jpg'),
(169, 27, 'img/product/sm/5913f907Ncbc65469.jpg', 'img/product/md/5913f907Ncbc65469.jpg', 'img/product/lg/5913f907Ncbc65469.jpg'),
(170, 27, 'img/product/sm/5913f90bN1b563f42.jpg', 'img/product/md/5913f90bN1b563f42.jpg', 'img/product/lg/5913f90bN1b563f42.jpg'),
(171, 27, 'img/product/sm/5913f90fN99370675.jpg', 'img/product/md/5913f90fN99370675.jpg', 'img/product/lg/5913f90fN99370675.jpg'),
(172, 27, 'img/product/sm/5913f93bNe4d2b3e5.jpg', 'img/product/md/5913f93bNe4d2b3e5.jpg', 'img/product/lg/5913f93bNe4d2b3e5.jpg'),
(173, 27, 'img/product/sm/5913f93fNfd79b4fc.jpg', 'img/product/md/5913f93fNfd79b4fc.jpg', 'img/product/lg/5913f93fNfd79b4fc.jpg'),
(174, 28, 'img/product/sm/584b5678Nbc9f1e70.jpg', 'img/product/md/584b5678Nbc9f1e70.jpg', 'img/product/lg/584b5678Nbc9f1e70.jpg'),
(175, 28, 'img/product/sm/584b567dNd9c58341.jpg', 'img/product/md/584b567dNd9c58341.jpg', 'img/product/lg/584b567dNd9c58341.jpg'),
(176, 28, 'img/product/sm/5819a0ebNefd901bc.jpg', 'img/product/md/5819a0ebNefd901bc.jpg', 'img/product/lg/5819a0ebNefd901bc.jpg'),
(177, 28, 'img/product/sm/5819a106Necf0abb8.jpg', 'img/product/md/5819a106Necf0abb8.jpg', 'img/product/lg/5819a106Necf0abb8.jpg'),
(178, 28, 'img/product/sm/5819a10bN2ea5c8e0.jpg', 'img/product/md/5819a10bN2ea5c8e0.jpg', 'img/product/lg/5819a10bN2ea5c8e0.jpg'),
(179, 28, 'img/product/sm/5819a10fNd0f96a03.jpg', 'img/product/md/5819a10fNd0f96a03.jpg', 'img/product/lg/5819a10fNd0f96a03.jpg'),
(180, 28, 'img/product/sm/5819a114Ne0cd75db.jpg', 'img/product/md/5819a114Ne0cd75db.jpg', 'img/product/lg/5819a114Ne0cd75db.jpg'),
(181, 28, 'img/product/sm/5819a133N03021b26.jpg', 'img/product/md/5819a133N03021b26.jpg', 'img/product/lg/5819a133N03021b26.jpg'),
(182, 29, 'img/product/sm/584b5678Nbc9f1e70.jpg', 'img/product/md/584b5678Nbc9f1e70.jpg', 'img/product/lg/584b5678Nbc9f1e70.jpg'),
(183, 29, 'img/product/sm/584b567dNd9c58341.jpg', 'img/product/md/584b567dNd9c58341.jpg', 'img/product/lg/584b567dNd9c58341.jpg'),
(184, 29, 'img/product/sm/5819a0ebNefd901bc.jpg', 'img/product/md/5819a0ebNefd901bc.jpg', 'img/product/lg/5819a0ebNefd901bc.jpg'),
(185, 29, 'img/product/sm/5819a106Necf0abb8.jpg', 'img/product/md/5819a106Necf0abb8.jpg', 'img/product/lg/5819a106Necf0abb8.jpg'),
(186, 29, 'img/product/sm/5819a10bN2ea5c8e0.jpg', 'img/product/md/5819a10bN2ea5c8e0.jpg', 'img/product/lg/5819a10bN2ea5c8e0.jpg'),
(187, 29, 'img/product/sm/5819a10fNd0f96a03.jpg', 'img/product/md/5819a10fNd0f96a03.jpg', 'img/product/lg/5819a10fNd0f96a03.jpg'),
(188, 29, 'img/product/sm/5819a114Ne0cd75db.jpg', 'img/product/md/5819a114Ne0cd75db.jpg', 'img/product/lg/5819a114Ne0cd75db.jpg'),
(189, 29, 'img/product/sm/5819a133N03021b26.jpg', 'img/product/md/5819a133N03021b26.jpg', 'img/product/lg/5819a133N03021b26.jpg'),
(190, 30, 'img/product/sm/584b5678Nbc9f1e70.jpg', 'img/product/md/584b5678Nbc9f1e70.jpg', 'img/product/lg/584b5678Nbc9f1e70.jpg'),
(191, 30, 'img/product/sm/584b567dNd9c58341.jpg', 'img/product/md/584b567dNd9c58341.jpg', 'img/product/lg/584b567dNd9c58341.jpg'),
(192, 30, 'img/product/sm/5819a0ebNefd901bc.jpg', 'img/product/md/5819a0ebNefd901bc.jpg', 'img/product/lg/5819a0ebNefd901bc.jpg'),
(193, 30, 'img/product/sm/5819a106Necf0abb8.jpg', 'img/product/md/5819a106Necf0abb8.jpg', 'img/product/lg/5819a106Necf0abb8.jpg'),
(194, 30, 'img/product/sm/5819a10bN2ea5c8e0.jpg', 'img/product/md/5819a10bN2ea5c8e0.jpg', 'img/product/lg/5819a10bN2ea5c8e0.jpg'),
(195, 30, 'img/product/sm/5819a10fNd0f96a03.jpg', 'img/product/md/5819a10fNd0f96a03.jpg', 'img/product/lg/5819a10fNd0f96a03.jpg'),
(196, 30, 'img/product/sm/5819a114Ne0cd75db.jpg', 'img/product/md/5819a114Ne0cd75db.jpg', 'img/product/lg/5819a114Ne0cd75db.jpg'),
(197, 30, 'img/product/sm/5819a133N03021b26.jpg', 'img/product/md/5819a133N03021b26.jpg', 'img/product/lg/5819a133N03021b26.jpg'),
(198, 31, 'img/product/sm/584b5678Nbc9f1e70.jpg', 'img/product/md/584b5678Nbc9f1e70.jpg', 'img/product/lg/584b5678Nbc9f1e70.jpg'),
(199, 31, 'img/product/sm/584b567dNd9c58341.jpg', 'img/product/md/584b567dNd9c58341.jpg', 'img/product/lg/584b567dNd9c58341.jpg'),
(200, 31, 'img/product/sm/5819a0ebNefd901bc.jpg', 'img/product/md/5819a0ebNefd901bc.jpg', 'img/product/lg/5819a0ebNefd901bc.jpg'),
(201, 31, 'img/product/sm/5819a106Necf0abb8.jpg', 'img/product/md/5819a106Necf0abb8.jpg', 'img/product/lg/5819a106Necf0abb8.jpg'),
(202, 31, 'img/product/sm/5819a10bN2ea5c8e0.jpg', 'img/product/md/5819a10bN2ea5c8e0.jpg', 'img/product/lg/5819a10bN2ea5c8e0.jpg'),
(203, 31, 'img/product/sm/5819a10fNd0f96a03.jpg', 'img/product/md/5819a10fNd0f96a03.jpg', 'img/product/lg/5819a10fNd0f96a03.jpg'),
(204, 31, 'img/product/sm/5819a114Ne0cd75db.jpg', 'img/product/md/5819a114Ne0cd75db.jpg', 'img/product/lg/5819a114Ne0cd75db.jpg'),
(205, 31, 'img/product/sm/5819a133N03021b26.jpg', 'img/product/md/5819a133N03021b26.jpg', 'img/product/lg/5819a133N03021b26.jpg'),
(206, 32, 'img/product/sm/584b5678Nbc9f1e70.jpg', 'img/product/md/584b5678Nbc9f1e70.jpg', 'img/product/lg/584b5678Nbc9f1e70.jpg'),
(207, 32, 'img/product/sm/584b567dNd9c58341.jpg', 'img/product/md/584b567dNd9c58341.jpg', 'img/product/lg/584b567dNd9c58341.jpg'),
(208, 32, 'img/product/sm/5819a0ebNefd901bc.jpg', 'img/product/md/5819a0ebNefd901bc.jpg', 'img/product/lg/5819a0ebNefd901bc.jpg'),
(209, 32, 'img/product/sm/5819a106Necf0abb8.jpg', 'img/product/md/5819a106Necf0abb8.jpg', 'img/product/lg/5819a106Necf0abb8.jpg'),
(210, 32, 'img/product/sm/5819a10bN2ea5c8e0.jpg', 'img/product/md/5819a10bN2ea5c8e0.jpg', 'img/product/lg/5819a10bN2ea5c8e0.jpg'),
(211, 32, 'img/product/sm/5819a10fNd0f96a03.jpg', 'img/product/md/5819a10fNd0f96a03.jpg', 'img/product/lg/5819a10fNd0f96a03.jpg'),
(212, 32, 'img/product/sm/5819a114Ne0cd75db.jpg', 'img/product/md/5819a114Ne0cd75db.jpg', 'img/product/lg/5819a114Ne0cd75db.jpg'),
(213, 32, 'img/product/sm/5819a133N03021b26.jpg', 'img/product/md/5819a133N03021b26.jpg', 'img/product/lg/5819a133N03021b26.jpg'),
(214, 33, 'img/product/sm/58985861N615a3581.jpg', 'img/product/md/58985861N615a3581.jpg', 'img/product/lg/58985861N615a3581.jpg'),
(215, 33, 'img/product/sm/58985867Nf8909d49.jpg', 'img/product/md/58985867Nf8909d49.jpg', 'img/product/lg/58985867Nf8909d49.jpg'),
(216, 33, 'img/product/sm/5898586cNe235284b.jpg', 'img/product/md/5898586cNe235284b.jpg', 'img/product/lg/5898586cNe235284b.jpg'),
(217, 33, 'img/product/sm/58985881N0a78dea2.jpg', 'img/product/md/58985881N0a78dea2.jpg', 'img/product/lg/58985881N0a78dea2.jpg'),
(218, 33, 'img/product/sm/58985883Nd4aec745.jpg', 'img/product/md/58985883Nd4aec745.jpg', 'img/product/lg/58985883Nd4aec745.jpg'),
(219, 33, 'img/product/sm/5836b979N85c3852b.jpg', 'img/product/md/5836b979N85c3852b.jpg', 'img/product/lg/5836b979N85c3852b.jpg'),
(220, 33, 'img/product/sm/5836b981Nd60fd02a.jpg', 'img/product/md/5836b981Nd60fd02a.jpg', 'img/product/lg/5836b981Nd60fd02a.jpg'),
(221, 34, 'img/product/sm/58985861N615a3581.jpg', 'img/product/md/58985861N615a3581.jpg', 'img/product/lg/58985861N615a3581.jpg'),
(222, 34, 'img/product/sm/58985867Nf8909d49.jpg', 'img/product/md/58985867Nf8909d49.jpg', 'img/product/lg/58985867Nf8909d49.jpg'),
(223, 34, 'img/product/sm/5898586cNe235284b.jpg', 'img/product/md/5898586cNe235284b.jpg', 'img/product/lg/5898586cNe235284b.jpg'),
(224, 34, 'img/product/sm/58985881N0a78dea2.jpg', 'img/product/md/58985881N0a78dea2.jpg', 'img/product/lg/58985881N0a78dea2.jpg'),
(225, 34, 'img/product/sm/58985883Nd4aec745.jpg', 'img/product/md/58985883Nd4aec745.jpg', 'img/product/lg/58985883Nd4aec745.jpg'),
(226, 34, 'img/product/sm/5836b979N85c3852b.jpg', 'img/product/md/5836b979N85c3852b.jpg', 'img/product/lg/5836b979N85c3852b.jpg'),
(227, 34, 'img/product/sm/5836b981Nd60fd02a.jpg', 'img/product/md/5836b981Nd60fd02a.jpg', 'img/product/lg/5836b981Nd60fd02a.jpg'),
(228, 35, 'img/product/sm/58985861N615a3581.jpg', 'img/product/md/58985861N615a3581.jpg', 'img/product/lg/58985861N615a3581.jpg'),
(229, 35, 'img/product/sm/58985867Nf8909d49.jpg', 'img/product/md/58985867Nf8909d49.jpg', 'img/product/lg/58985867Nf8909d49.jpg'),
(230, 35, 'img/product/sm/5898586cNe235284b.jpg', 'img/product/md/5898586cNe235284b.jpg', 'img/product/lg/5898586cNe235284b.jpg'),
(231, 35, 'img/product/sm/58985881N0a78dea2.jpg', 'img/product/md/58985881N0a78dea2.jpg', 'img/product/lg/58985881N0a78dea2.jpg'),
(232, 35, 'img/product/sm/58985883Nd4aec745.jpg', 'img/product/md/58985883Nd4aec745.jpg', 'img/product/lg/58985883Nd4aec745.jpg'),
(233, 35, 'img/product/sm/5836b979N85c3852b.jpg', 'img/product/md/5836b979N85c3852b.jpg', 'img/product/lg/5836b979N85c3852b.jpg'),
(234, 35, 'img/product/sm/5836b981Nd60fd02a.jpg', 'img/product/md/5836b981Nd60fd02a.jpg', 'img/product/lg/5836b981Nd60fd02a.jpg'),
(235, 36, 'img/product/sm/58985861N615a3581.jpg', 'img/product/md/58985861N615a3581.jpg', 'img/product/lg/58985861N615a3581.jpg'),
(236, 36, 'img/product/sm/58985867Nf8909d49.jpg', 'img/product/md/58985867Nf8909d49.jpg', 'img/product/lg/58985867Nf8909d49.jpg'),
(237, 36, 'img/product/sm/5898586cNe235284b.jpg', 'img/product/md/5898586cNe235284b.jpg', 'img/product/lg/5898586cNe235284b.jpg'),
(238, 36, 'img/product/sm/58985881N0a78dea2.jpg', 'img/product/md/58985881N0a78dea2.jpg', 'img/product/lg/58985881N0a78dea2.jpg'),
(239, 36, 'img/product/sm/58985883Nd4aec745.jpg', 'img/product/md/58985883Nd4aec745.jpg', 'img/product/lg/58985883Nd4aec745.jpg'),
(240, 36, 'img/product/sm/5836b979N85c3852b.jpg', 'img/product/md/5836b979N85c3852b.jpg', 'img/product/lg/5836b979N85c3852b.jpg'),
(241, 36, 'img/product/sm/5836b981Nd60fd02a.jpg', 'img/product/md/5836b981Nd60fd02a.jpg', 'img/product/lg/5836b981Nd60fd02a.jpg'),
(242, 37, 'img/product/sm/58985861N615a3581.jpg', 'img/product/md/58985861N615a3581.jpg', 'img/product/lg/58985861N615a3581.jpg'),
(243, 37, 'img/product/sm/58985867Nf8909d49.jpg', 'img/product/md/58985867Nf8909d49.jpg', 'img/product/lg/58985867Nf8909d49.jpg'),
(244, 37, 'img/product/sm/5898586cNe235284b.jpg', 'img/product/md/5898586cNe235284b.jpg', 'img/product/lg/5898586cNe235284b.jpg'),
(245, 37, 'img/product/sm/58985881N0a78dea2.jpg', 'img/product/md/58985881N0a78dea2.jpg', 'img/product/lg/58985881N0a78dea2.jpg'),
(246, 37, 'img/product/sm/58985883Nd4aec745.jpg', 'img/product/md/58985883Nd4aec745.jpg', 'img/product/lg/58985883Nd4aec745.jpg'),
(247, 37, 'img/product/sm/5836b979N85c3852b.jpg', 'img/product/md/5836b979N85c3852b.jpg', 'img/product/lg/5836b979N85c3852b.jpg'),
(248, 37, 'img/product/sm/5836b981Nd60fd02a.jpg', 'img/product/md/5836b981Nd60fd02a.jpg', 'img/product/lg/5836b981Nd60fd02a.jpg'),
(249, 38, 'img/product/sm/58a2c667Ne2b5cb73.jpg', 'img/product/md/58a2c667Ne2b5cb73.jpg', 'img/product/lg/58a2c667Ne2b5cb73.jpg'),
(250, 38, 'img/product/sm/58a2c668N800be261.jpg', 'img/product/md/58a2c668N800be261.jpg', 'img/product/lg/58a2c668N800be261.jpg'),
(251, 38, 'img/product/sm/58a2c668N0159a26f.jpg', 'img/product/md/58a2c668N0159a26f.jpg', 'img/product/lg/58a2c668N0159a26f.jpg'),
(252, 38, 'img/product/sm/58a2c669Nf884ac31.jpg', 'img/product/md/58a2c669Nf884ac31.jpg', 'img/product/lg/58a2c669Nf884ac31.jpg'),
(253, 38, 'img/product/sm/58a2c668N7293a0d1.jpg', 'img/product/md/58a2c668N7293a0d1.jpg', 'img/product/lg/58a2c668N7293a0d1.jpg'),
(254, 38, 'img/product/sm/58a2c669N4f92f8cb.jpg', 'img/product/md/58a2c669N4f92f8cb.jpg', 'img/product/lg/58a2c669N4f92f8cb.jpg'),
(255, 38, 'img/product/sm/58a2c668N0be41fb0.jpg', 'img/product/md/58a2c668N0be41fb0.jpg', 'img/product/lg/58a2c668N0be41fb0.jpg'),
(256, 38, 'img/product/sm/58a2c66aNcd10ee32.jpg', 'img/product/md/58a2c66aNcd10ee32.jpg', 'img/product/lg/58a2c66aNcd10ee32.jpg'),
(257, 39, 'img/product/sm/58a2c667Ne2b5cb73.jpg', 'img/product/md/58a2c667Ne2b5cb73.jpg', 'img/product/lg/58a2c667Ne2b5cb73.jpg'),
(258, 39, 'img/product/sm/58a2c668N800be261.jpg', 'img/product/md/58a2c668N800be261.jpg', 'img/product/lg/58a2c668N800be261.jpg'),
(259, 39, 'img/product/sm/58a2c668N0159a26f.jpg', 'img/product/md/58a2c668N0159a26f.jpg', 'img/product/lg/58a2c668N0159a26f.jpg'),
(260, 39, 'img/product/sm/58a2c669Nf884ac31.jpg', 'img/product/md/58a2c669Nf884ac31.jpg', 'img/product/lg/58a2c669Nf884ac31.jpg'),
(261, 39, 'img/product/sm/58a2c668N7293a0d1.jpg', 'img/product/md/58a2c668N7293a0d1.jpg', 'img/product/lg/58a2c668N7293a0d1.jpg'),
(262, 39, 'img/product/sm/58a2c669N4f92f8cb.jpg', 'img/product/md/58a2c669N4f92f8cb.jpg', 'img/product/lg/58a2c669N4f92f8cb.jpg'),
(263, 39, 'img/product/sm/58a2c668N0be41fb0.jpg', 'img/product/md/58a2c668N0be41fb0.jpg', 'img/product/lg/58a2c668N0be41fb0.jpg'),
(264, 39, 'img/product/sm/58a2c66aNcd10ee32.jpg', 'img/product/md/58a2c66aNcd10ee32.jpg', 'img/product/lg/58a2c66aNcd10ee32.jpg'),
(265, 40, 'img/product/sm/58a2c667Ne2b5cb73.jpg', 'img/product/md/58a2c667Ne2b5cb73.jpg', 'img/product/lg/58a2c667Ne2b5cb73.jpg'),
(266, 40, 'img/product/sm/58a2c668N800be261.jpg', 'img/product/md/58a2c668N800be261.jpg', 'img/product/lg/58a2c668N800be261.jpg'),
(267, 40, 'img/product/sm/58a2c668N0159a26f.jpg', 'img/product/md/58a2c668N0159a26f.jpg', 'img/product/lg/58a2c668N0159a26f.jpg'),
(268, 40, 'img/product/sm/58a2c669Nf884ac31.jpg', 'img/product/md/58a2c669Nf884ac31.jpg', 'img/product/lg/58a2c669Nf884ac31.jpg'),
(269, 40, 'img/product/sm/58a2c668N7293a0d1.jpg', 'img/product/md/58a2c668N7293a0d1.jpg', 'img/product/lg/58a2c668N7293a0d1.jpg'),
(270, 40, 'img/product/sm/58a2c669N4f92f8cb.jpg', 'img/product/md/58a2c669N4f92f8cb.jpg', 'img/product/lg/58a2c669N4f92f8cb.jpg'),
(271, 40, 'img/product/sm/58a2c668N0be41fb0.jpg', 'img/product/md/58a2c668N0be41fb0.jpg', 'img/product/lg/58a2c668N0be41fb0.jpg'),
(272, 40, 'img/product/sm/58a2c66aNcd10ee32.jpg', 'img/product/md/58a2c66aNcd10ee32.jpg', 'img/product/lg/58a2c66aNcd10ee32.jpg'),
(273, 41, 'img/product/sm/58a2c667Ne2b5cb73.jpg', 'img/product/md/58a2c667Ne2b5cb73.jpg', 'img/product/lg/58a2c667Ne2b5cb73.jpg'),
(274, 41, 'img/product/sm/58a2c668N800be261.jpg', 'img/product/md/58a2c668N800be261.jpg', 'img/product/lg/58a2c668N800be261.jpg'),
(275, 41, 'img/product/sm/58a2c668N0159a26f.jpg', 'img/product/md/58a2c668N0159a26f.jpg', 'img/product/lg/58a2c668N0159a26f.jpg'),
(276, 41, 'img/product/sm/58a2c669Nf884ac31.jpg', 'img/product/md/58a2c669Nf884ac31.jpg', 'img/product/lg/58a2c669Nf884ac31.jpg'),
(277, 41, 'img/product/sm/58a2c668N7293a0d1.jpg', 'img/product/md/58a2c668N7293a0d1.jpg', 'img/product/lg/58a2c668N7293a0d1.jpg'),
(278, 41, 'img/product/sm/58a2c669N4f92f8cb.jpg', 'img/product/md/58a2c669N4f92f8cb.jpg', 'img/product/lg/58a2c669N4f92f8cb.jpg'),
(279, 41, 'img/product/sm/58a2c668N0be41fb0.jpg', 'img/product/md/58a2c668N0be41fb0.jpg', 'img/product/lg/58a2c668N0be41fb0.jpg'),
(280, 41, 'img/product/sm/58a2c66aNcd10ee32.jpg', 'img/product/md/58a2c66aNcd10ee32.jpg', 'img/product/lg/58a2c66aNcd10ee32.jpg'),
(281, 42, 'img/product/sm/58a2c667Ne2b5cb73.jpg', 'img/product/md/58a2c667Ne2b5cb73.jpg', 'img/product/lg/58a2c667Ne2b5cb73.jpg'),
(282, 42, 'img/product/sm/58a2c668N800be261.jpg', 'img/product/md/58a2c668N800be261.jpg', 'img/product/lg/58a2c668N800be261.jpg'),
(283, 42, 'img/product/sm/58a2c668N0159a26f.jpg', 'img/product/md/58a2c668N0159a26f.jpg', 'img/product/lg/58a2c668N0159a26f.jpg'),
(284, 42, 'img/product/sm/58a2c669Nf884ac31.jpg', 'img/product/md/58a2c669Nf884ac31.jpg', 'img/product/lg/58a2c669Nf884ac31.jpg'),
(285, 42, 'img/product/sm/58a2c668N7293a0d1.jpg', 'img/product/md/58a2c668N7293a0d1.jpg', 'img/product/lg/58a2c668N7293a0d1.jpg'),
(286, 42, 'img/product/sm/58a2c669N4f92f8cb.jpg', 'img/product/md/58a2c669N4f92f8cb.jpg', 'img/product/lg/58a2c669N4f92f8cb.jpg'),
(287, 42, 'img/product/sm/58a2c668N0be41fb0.jpg', 'img/product/md/58a2c668N0be41fb0.jpg', 'img/product/lg/58a2c668N0be41fb0.jpg'),
(288, 42, 'img/product/sm/58a2c66aNcd10ee32.jpg', 'img/product/md/58a2c66aNcd10ee32.jpg', 'img/product/lg/58a2c66aNcd10ee32.jpg'),
(289, 43, 'img/product/sm/58a2c667Ne2b5cb73.jpg', 'img/product/md/58a2c667Ne2b5cb73.jpg', 'img/product/lg/58a2c667Ne2b5cb73.jpg'),
(290, 43, 'img/product/sm/58a2c668N800be261.jpg', 'img/product/md/58a2c668N800be261.jpg', 'img/product/lg/58a2c668N800be261.jpg'),
(291, 43, 'img/product/sm/58a2c668N0159a26f.jpg', 'img/product/md/58a2c668N0159a26f.jpg', 'img/product/lg/58a2c668N0159a26f.jpg'),
(292, 43, 'img/product/sm/58a2c669Nf884ac31.jpg', 'img/product/md/58a2c669Nf884ac31.jpg', 'img/product/lg/58a2c669Nf884ac31.jpg'),
(293, 43, 'img/product/sm/58a2c668N7293a0d1.jpg', 'img/product/md/58a2c668N7293a0d1.jpg', 'img/product/lg/58a2c668N7293a0d1.jpg'),
(294, 43, 'img/product/sm/58a2c669N4f92f8cb.jpg', 'img/product/md/58a2c669N4f92f8cb.jpg', 'img/product/lg/58a2c669N4f92f8cb.jpg'),
(295, 43, 'img/product/sm/58a2c668N0be41fb0.jpg', 'img/product/md/58a2c668N0be41fb0.jpg', 'img/product/lg/58a2c668N0be41fb0.jpg'),
(296, 43, 'img/product/sm/58a2c66aNcd10ee32.jpg', 'img/product/md/58a2c66aNcd10ee32.jpg', 'img/product/lg/58a2c66aNcd10ee32.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `xz_order`
--

CREATE TABLE `xz_order` (
  `aid` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `address_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `order_time` bigint(20) DEFAULT NULL,
  `pay_time` bigint(20) DEFAULT NULL,
  `deliver_time` bigint(20) DEFAULT NULL,
  `received_time` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `xz_order_detail`
--

CREATE TABLE `xz_order_detail` (
  `did` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `xz_receiver_address`
--

CREATE TABLE `xz_receiver_address` (
  `aid` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `receiver` varchar(16) DEFAULT NULL,
  `province` varchar(16) DEFAULT NULL,
  `city` varchar(16) DEFAULT NULL,
  `county` varchar(16) DEFAULT NULL,
  `address` varchar(128) DEFAULT NULL,
  `cellphone` varchar(16) DEFAULT NULL,
  `fixedphone` varchar(16) DEFAULT NULL,
  `postcode` char(6) DEFAULT NULL,
  `tag` varchar(16) DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `xz_shoppingcart_item`
--

CREATE TABLE `xz_shoppingcart_item` (
  `iid` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `is_checked` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `xz_shoppingcart_item`
--

INSERT INTO `xz_shoppingcart_item` (`iid`, `user_id`, `product_id`, `count`, `is_checked`) VALUES
(1, 10, 17, 1, 0),
(2, 11, 11, 1, 0),
(3, 12, 1, 1, 1),
(4, 13, 3, 9, 0),
(5, 14, 1, 1, 0),
(13, 20, 1, 1, 1),
(14, 22, 17, 11, 1),
(15, 20, 28, 1, 0),
(16, 25, 2, 1, 1),
(19, 28, 1, 99997, 0),
(20, 29, 31, 1, 1),
(26, 32, 13, 1, 0),
(27, 32, 5, 1, 0),
(28, 32, 19, 1, 0),
(29, 33, 1, 1, 0),
(32, 35, 20, 1, 0),
(34, 39, 19, 1, 1),
(38, 45, 22, 1, 0),
(39, 46, 1, 1, 0),
(40, 48, 28, 1, 1),
(42, 50, 28, 1, 1),
(43, 52, 28, 1, 1),
(44, 51, 5, 1, 1),
(45, 54, 1, 1, 1),
(46, 56, 28, 1, 1),
(47, 59, 5, 1, 0),
(48, 59, 9, 1, 0),
(49, 59, 19, 1, 0),
(50, 31, 1, 1, 1),
(51, 59, 1, 2, 0),
(52, 60, 28, 1, 1),
(53, 46, 21, 1, 0),
(55, 61, 5, 1, 1),
(56, 61, 6, 1, 0),
(57, 70, 1, 1, 1),
(58, 71, 1, 1, 1),
(60, 36, 17, 1, 1),
(61, 35, 17, 7, 0),
(62, 35, 5, 13, 0),
(63, 72, 9, 1, 1),
(64, 82, 1, 1, 1),
(65, 83, 17, 1, 1),
(66, 35, 28, 4, 0),
(67, 65, 40, 2, 0),
(162, 1, 3, 3, 0),
(172, 5, 2, 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `xz_user`
--

CREATE TABLE `xz_user` (
  `uid` int(11) NOT NULL,
  `uname` varchar(32) DEFAULT NULL,
  `upwd` varchar(32) DEFAULT NULL,
  `email` varchar(64) DEFAULT NULL,
  `phone` varchar(16) DEFAULT NULL,
  `avatar` varchar(128) DEFAULT NULL,
  `user_name` varchar(32) DEFAULT NULL,
  `gender` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `xz_user`
--

INSERT INTO `xz_user` (`uid`, `uname`, `upwd`, `email`, `phone`, `avatar`, `user_name`, `gender`) VALUES
(1, 'zlp01', '123456', 'ding@qq.com', '13511011000', 'img/avatar/default.png', '丁春秋', 0),
(2, 'wh1030', '123456', 'dang@qq.com', '13501234568', 'img/avatar/default.png', '当当喵', 1),
(3, 'gaoaxing', '123456', 'dou@qq.com', '13501234569', 'img/avatar/default.png', '窦志强', 1),
(4, 'changqian', '123456', 'ya@qq.com', '13501234560', 'img/avatar/default.png', '秦小雅', 0),
(5, '1111', '111111', '441977193@qq.com', '18357100796', NULL, NULL, NULL),
(6, 'ABCD', '123456', '123@qq.com', '13538894495', NULL, NULL, NULL),
(7, 'mohk', '123456', '11@qq.com', '13512312312', NULL, NULL, NULL),
(8, '121123', 'w13945128995', '491000888@qq.com', '13213389258', NULL, NULL, NULL),
(9, '555555', '5555555', '55555555@163.com', '13400000000', NULL, NULL, NULL),
(10, 'xuyong', '123456', '123456789@qq.com', '15525623622', NULL, NULL, NULL),
(11, 'admin', 'cxy930123', 'mail@xingyu1993.cn', '13580510164', NULL, NULL, NULL),
(12, 'siyongbo', '900427', '616188545@qq.com', '18447103998', NULL, NULL, NULL),
(13, 'qwerty', '123456', '1091256014@qq.com', '15617152367', NULL, NULL, NULL),
(14, 'dingziqiang', '456456', '996534706@qq.com', '15567502520', NULL, NULL, NULL),
(15, 'hdb2264068', 'huang123', '471062503@qq.com', '18898405759', NULL, NULL, NULL),
(16, 'wenhua', '654321', 'liwenhua@tedu.cn', '15012345678', NULL, NULL, NULL),
(17, '<img>', 'cxy930123', 'mail@xingyu1993.cn.1', '11111111111', NULL, NULL, NULL),
(18, '</body>', 'cxy930123', 'mail@xingyu1993.cn.2', '22222222222', NULL, NULL, NULL),
(19, '<img src=@>', 'cxy930123', 'mail@xingyu1993.cn.3', '33333333333', NULL, NULL, NULL),
(20, '气航航', 'wyh961130', '1419591926@qq.com', '15927204115', NULL, NULL, NULL),
(21, 'Jessy', 'ac210921', '123456@qq.com', '13523456789', NULL, NULL, NULL),
(22, 'yuanxf', '123456', 'yuanxf@tedu.cn', '13537763301', NULL, NULL, NULL),
(23, '查安军', '025520', '27514172112@qq.com', '18158899905', NULL, NULL, NULL),
(24, '123456', '123456', '123456@1.com', '13815668132', NULL, NULL, NULL),
(25, '1234', '111111', '734713428@qq.com', '18061920422', NULL, NULL, NULL),
(26, 'qwe12345', '123123', '1191769510@qq.com', '15234010643', NULL, NULL, NULL),
(27, '海贼王', '5124457', 'hxxcrocky@qq.com', '18826450879', NULL, NULL, NULL),
(28, 'hanrufuyun00', 'hanrufuyun11', '458205630@qq.com', '13853114827', NULL, NULL, NULL),
(29, 'li999999', 'li999999', 'limingdir@163.com', '18557512341', NULL, NULL, NULL),
(30, '111111111111', '123456', '1057631733@qq.com', '15275106677', NULL, NULL, NULL),
(31, 'tom', '123456', 'tom@tedu.cn', '13801234568', NULL, NULL, NULL),
(32, 'zhouzhi', '123456', '2206344145@qq.com', '17600587478', NULL, NULL, NULL),
(33, 'juleck', '123456', 'wuhaofushan@sina.com', '12345678901', NULL, NULL, NULL),
(34, 'yangtao', '123456', '250737026@qq.com', '18256953222', NULL, NULL, NULL),
(35, 'tarena', '123456', '783664829@qq.com', '17711625897', NULL, NULL, NULL),
(36, 'xiaobai', 'xx527603', '1196465493@qq.com', '13980312111', NULL, 'lulu', 0),
(37, '璐璐lu', '546521ll', '1273447080@qq.com', '15892761793', NULL, NULL, NULL),
(38, '胖王二二', 'woaidoubi1.', '1179524522@qq.com', '13269195181', NULL, '', 0),
(39, 'Yeye ', '123456', '1610608370@qq.com', '15062394551', NULL, NULL, NULL),
(40, 'lsj', '123456', '11324564879@qq.com', '13156467891', NULL, NULL, NULL),
(41, 'lsj', '123456', '11324564879@qq.com', '13156467891', NULL, NULL, NULL),
(42, 'lsj', '123456', '11324564879@qq.com', '13156467891', NULL, NULL, NULL),
(43, 'lsj', '123456', '11324564879@qq.com', '13156467891', NULL, NULL, NULL),
(44, 'lsj', '123456', '11324564879@qq.com', '13156467891', NULL, NULL, NULL),
(45, 'hjh', '958030', 'hjh@126.com', '17812344567', NULL, NULL, NULL),
(46, 'ewq', '123456', '1234567890@qq.com', '12345678909', NULL, NULL, NULL),
(47, 'pipi', '123456', '78@qq.com', '12367889993', NULL, NULL, NULL),
(48, 'Lovica', '309418727', '1684707021@qq.com', '18435130456', NULL, NULL, NULL),
(49, 'htt0908', '19920908', '418720482@qq.com', '15244691033', NULL, NULL, NULL),
(50, 'SUXUEMEI', '123456', 'SUXUEMEI@qq.com', '15817338974', NULL, NULL, NULL),
(51, 'zhong', '123456', '123456789@126.com', '13120211111', NULL, NULL, NULL),
(52, '金豆豆', '123456789', '1170363143@qq.com', '15738619097', NULL, NULL, NULL),
(53, 'wangjunfei', '123456', '396225880@qq.com', '13205935797', NULL, NULL, NULL),
(54, 'gijhglkhglkh', '123456', 'sjksfj@fjdh.com', '15698765423', NULL, NULL, NULL),
(55, 'zuiyd1314', 'zuiyh1994', '528396697@qq.com', '15927843908', NULL, NULL, NULL),
(56, 'xiaoming123', '123456', '54646@qq.com', '13553688534', NULL, NULL, NULL),
(57, 'yuanzhi', '123456', '270096123@qq.com', '15962573639', NULL, NULL, NULL),
(58, 'fengkuang11', 'fengkuang113', '1135779768@qq.com', '18559132247', NULL, NULL, NULL),
(59, 'fengkuang', '123456', '113577976@qq.com', '18559132248', NULL, NULL, NULL),
(60, 'yxzaaa', '123456', '2280517552@qq.com', '13716225357', NULL, NULL, NULL),
(61, 'linlei0001', '58874439', '876056078@qq.com', '13390922939', NULL, NULL, NULL),
(62, 'superman', '1314520', '904202099@qq.com', '12345678910', NULL, NULL, NULL),
(63, 'tom222', '123456', '1@163.com', '13456789012', NULL, NULL, NULL),
(64, 'tom1234', '123456', '2@163.com', '13423456789', NULL, NULL, NULL),
(65, 'Liyu123', 'asd8520', '812544715@qq.com', '18911743412', NULL, '左天', 1),
(66, 'Liyu123', 'asd8520', '812544715@qq.com', '18911743412', NULL, NULL, NULL),
(67, '李白李白', '123456', '125365@163.com', '13986273022', NULL, NULL, NULL),
(68, 'dingdong', '123456', '15194898156@qq.com', '15112316516', NULL, NULL, NULL),
(69, 'wenjinhua', '236239', '461677613@qq.com', '13516574786', NULL, NULL, NULL),
(70, 'thebigleg', '1a4b2c8d5e7f', '1352951609@qq.com', '13572508752', NULL, NULL, NULL),
(71, 'zhangsan', 'add123456', 'add@qq.com', '12234324223', NULL, NULL, NULL),
(72, '高渐离', '123456', '935263676@qq.com', '18352501250', NULL, NULL, NULL),
(73, 'lifan', '123456', '18092034652@163.com', '18092933456', NULL, NULL, NULL),
(74, 'zhangsan99', '123456zs', '876987366@qq.com', '13934721892', NULL, NULL, NULL),
(75, 'tingDING', '123456', '12345678@qq.com', '13548525468', NULL, NULL, NULL),
(76, 'dongdong', '123456', 'wenhua@taqobao.com', '13946585968', NULL, NULL, NULL),
(77, 'weiyiwei', '123456', '598475405@qq.com', '15923741956', NULL, '韦祎伟', 1),
(78, '落英缤纷赋酒诗', 'sAberTime050', '857464657@qq.com', '17727420979', NULL, NULL, NULL),
(79, 'xiaoming1234', '123456', '4564564564@qq.com', '15269188535', NULL, NULL, NULL),
(80, 'loonchao', '123456', '850248873@qq.com', '13548729051', NULL, NULL, NULL),
(81, 'hushuang', '123456', '850248813@qq.com', '15802507525', NULL, NULL, NULL),
(82, 'test713', '2017713', '12458148@qq.com', '13596542654', NULL, NULL, NULL),
(83, 'fhr9588', '000009588', '111111111@qq.com', '12345666666', NULL, NULL, NULL),
(84, 'baibaidexue', '13809024377', '408130701@qq.com', '18301973827', NULL, NULL, NULL),
(85, 'tom10', '123456', '123@163.com', '12323456', NULL, NULL, NULL),
(86, '12121', '121212', '516898@qq.com', '15163222922', NULL, NULL, NULL),
(87, 'qwer', 'qwer123', '519808982@qq.com', '15163222923', NULL, NULL, NULL),
(88, '芳芳。。', '111111', '627265@qq.com', '17704622223', NULL, NULL, NULL),
(89, 'smm123456', '963852741', '974255093@qq.com', '15098807312', NULL, NULL, NULL),
(90, 'Wenhua.Li', 'libenka', 'wenhua.li@tedu.cn', '13912345678', NULL, NULL, NULL);

--
-- 转储表的索引
--

--
-- 表的索引 `mimi_details_min_iconlistall`
--
ALTER TABLE `mimi_details_min_iconlistall`
  ADD PRIMARY KEY (`d_icon_id`);

--
-- 表的索引 `mimi_details_recommend`
--
ALTER TABLE `mimi_details_recommend`
  ADD PRIMARY KEY (`d_recommend_id`);

--
-- 表的索引 `mimi_details_review`
--
ALTER TABLE `mimi_details_review`
  ADD PRIMARY KEY (`d_review_id`);

--
-- 表的索引 `mimi_details_services`
--
ALTER TABLE `mimi_details_services`
  ADD PRIMARY KEY (`d_services_id`);

--
-- 表的索引 `mimi_details_style`
--
ALTER TABLE `mimi_details_style`
  ADD PRIMARY KEY (`d_style_id`);

--
-- 表的索引 `mimi_detail_foryou_recommend`
--
ALTER TABLE `mimi_detail_foryou_recommend`
  ADD PRIMARY KEY (`df_r_id`);

--
-- 表的索引 `mimi_detail_height_imglist`
--
ALTER TABLE `mimi_detail_height_imglist`
  ADD PRIMARY KEY (`d_h_id`);

--
-- 表的索引 `mimi_detail_service`
--
ALTER TABLE `mimi_detail_service`
  ADD PRIMARY KEY (`d_s_id`);

--
-- 表的索引 `mimi_product_details`
--
ALTER TABLE `mimi_product_details`
  ADD PRIMARY KEY (`details_id`);

--
-- 表的索引 `mimi_product_info`
--
ALTER TABLE `mimi_product_info`
  ADD PRIMARY KEY (`mimi_pi_id`);

--
-- 表的索引 `mimi_product_overview`
--
ALTER TABLE `mimi_product_overview`
  ADD PRIMARY KEY (`p_id`);

--
-- 表的索引 `mimi_shopping_info`
--
ALTER TABLE `mimi_shopping_info`
  ADD PRIMARY KEY (`mimi_si_id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `mimi_details_min_iconlistall`
--
ALTER TABLE `mimi_details_min_iconlistall`
  MODIFY `d_icon_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- 使用表AUTO_INCREMENT `mimi_details_review`
--
ALTER TABLE `mimi_details_review`
  MODIFY `d_review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- 使用表AUTO_INCREMENT `mimi_detail_foryou_recommend`
--
ALTER TABLE `mimi_detail_foryou_recommend`
  MODIFY `df_r_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用表AUTO_INCREMENT `mimi_detail_height_imglist`
--
ALTER TABLE `mimi_detail_height_imglist`
  MODIFY `d_h_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- 使用表AUTO_INCREMENT `mimi_detail_service`
--
ALTER TABLE `mimi_detail_service`
  MODIFY `d_s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用表AUTO_INCREMENT `mimi_product_details`
--
ALTER TABLE `mimi_product_details`
  MODIFY `details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用表AUTO_INCREMENT `mimi_product_info`
--
ALTER TABLE `mimi_product_info`
  MODIFY `mimi_pi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- 使用表AUTO_INCREMENT `mimi_shopping_info`
--
ALTER TABLE `mimi_shopping_info`
  MODIFY `mimi_si_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
