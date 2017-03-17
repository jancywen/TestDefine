//
//  Const.swift
//  SwiftTest
//
//  Created by Niku on 17/3/16.
//  Copyright © 2017年 LSF. All rights reserved.
//

import Foundation
import UIKit

let HHBWIDTH = UIScreen.main.bounds.size.width
let HHBHEIGHT = UIScreen.main.bounds.size.height

/////////////////////////////////////////////////////////////////////
//颜色相关宏
func rgbaColor(_ r:CGFloat,_ g:CGFloat,_ b:CGFloat,_ a:CGFloat) -> UIColor{
    return UIColor(red: (r)/255.0, green: (g)/255.0, blue: (b)/255.0, alpha: a)
}
func rgbColor(_ r:CGFloat,_ g:CGFloat,_ b:CGFloat) -> UIColor{
    return UIColor(red: (r)/255.0, green: (g)/255.0, blue: (b)/255.0, alpha: 1.0)
}
//主文字颜色
func BLACKTitleColor() -> UIColor{
    return UIColor(red: 81.0/255.0, green: 81.0/255.0, blue: 81.0/255.0, alpha: 1.0)
}
//蓝色文字
func BLUETitleColor() -> UIColor{
    return UIColor(red: 0x55/255.0, green: 0x55/255.0, blue: 0x55/255.0, alpha: 1.0)
}
//辅助文字颜色
func GRAYTitleColor() -> UIColor{
    return UIColor(red: 165.0/255.0, green: 165.0/255.0, blue: 165.0/255.0, alpha: 1.0)
}
//导航条背景颜色
func NavigationBGColor() -> UIColor{
    return UIColor(red: 0x55/255.0, green: 0xA3/255.0, blue: 0xE6/255.0, alpha: 1.0)
}
//背景色
func SELFBGColor() -> UIColor{
    return UIColor(red: 236.0/255.0, green: 241.0/255.0, blue: 242.0/255.0, alpha: 1.0)
}
func VERYGRAYTitleColor() -> UIColor{
    return UIColor(red: 205.0/255.0, green: 205.0/255.0, blue: 205.0/255.0, alpha: 1.0)
}

//床号背景色
//有疑问
func doubtBedNameColor() -> UIColor{
    return UIColor(red: 0xFF/255.0, green: 0x7C/255.0, blue: 0x7A/255.0, alpha: 1.0)
}
//空床
func emptyBedNameColor() -> UIColor{
    return UIColor(red: 0xC7/255.0, green: 0xC7/255.0, blue: 0xCC/255.0, alpha: 1.0)
}
//新入院
func newBedNameColor() -> UIColor{
    return UIColor(red: 0xA2/255.0, green: 0xDD/255.0, blue: 0x78/255.0, alpha: 1.0)
}
//正常
func normalBedNameColor() -> UIColor{
    return UIColor(red: 0x54/255.0, green: 0xC7/255.0, blue: 0xFC/255.0, alpha: 1.0)
}

func RGBInt32(_ colorRgb: UInt32, a: CGFloat) -> UIColor {
    return UIColor.init(red: CGFloat((colorRgb & 0xFF0000) >> 16) / 255, green: CGFloat((colorRgb & 0x00FF00) >> 8) / 255, blue: CGFloat(colorRgb & 0x0000FF) / 255, alpha: a)
}

func RGBInt32(_ colorRgb: UInt32) -> UIColor {
    return UIColor.init(red: CGFloat((colorRgb & 0xFF0000) >> 16) / 255, green: CGFloat((colorRgb & 0x00FF00) >> 8) / 255, blue: CGFloat(colorRgb & 0x0000FF) / 255, alpha: 1)
}

//按钮不可点击的背景颜色和文字颜色
let kBtnNotClickBGColor = RGBInt32(0xEBEBF0)
let kBtnNotClickTitleBGColor = RGBInt32(0xD2D2D2)

/////////////////////////////////////////////////////////////////////
//字体相关宏
func fontSize(_ size:CGFloat) -> UIFont{
    return UIFont.systemFont(ofSize: CGFloat(size))
}
let kFontScale = UIScreen.main.bounds.size.width / 375.0



//一些简写约定
/*
 lItem = leftItem rItem = rightItem  lFlap = leftFlap  rFlap = rightFlap uFlap = upFlap dFlap = downFlap
 rBtn = rightBtn  lTilte = leftTitle uTitle = upTitle rContent = rightContent dContent = downContent
 lImage = leftImage rChoiceBtn = rightChoiceBtn   uMargin = upMargin dMargin = downMargin
 */
//01分辨率
//基础规范1.0分辨率是按照iphone5的分辨率作为设计标准（@2x 640*1136）
//公共宏模块
let line_height:CGFloat        = 1
let mainBtn_font:UIFont       = fontsize_T2
let PingFangSC_Regular:String = "PingFangSC-Regular" //默认字体
let PingFangSC_Light:String   = "PingFangSC-Light" //默认字体
let menuBarView_height:CGFloat = 49 //底部menu bar 高度
let border_line_color:UIColor  = RGBInt32(0xE5E5E5)
let top_nav_bar_height:CGFloat = 64 //顶部导航栏高度
//背景色
func view_bgcolor() -> UIColor{
    return UIColor(red: 236.0/255.0, green: 241.0/255.0, blue: 242.0/255.0, alpha: 1.0)
}


//02主色调
//此规范以举例下面的蓝色为主色调，其他各个app可自行选择合适的颜色
//蓝色系 用于护理，护士
let blue_color:UIColor = RGBInt32(0x50ABF2)
//粉色系 用于儿保，妇幼，婴儿，急诊
let pink_color:UIColor = RGBInt32(0xFF7373)//深蓝色（偏紫色）用于睡眠，医院
let deep_blue_color:UIColor = RGBInt32(0x4D65C4)
//绿色系 用于医院，呵护相关婴儿，社区养老
let green_color:UIColor = RGBInt32(0x65D566)



//03字体
//字体应用规范，定义字体尺寸，颜色，选用字体等细节。在具体的UI中，参考字体的规范选择合适的字体
//注H5规范字体使用系统默认字体，ios默认 中文字体：苹方（PingFangSC）英文字体：SF UI Display 数字字体： Avenir Next LT-pro;安卓使用黑体
//字体适配规则，除了5.5寸的其他都是标准的， 适配规则  标准对应（5.5寸）：20（38），24（44），28（48），32（52），36（54）
//用于titlebar,主次按钮的字体大小
let IS_SCREEN_5:Bool = (UIScreen.main.bounds.size.width == 320.0 && UIScreen.main.bounds.size.height == 568.0) ? true:false

let fontsize_T1:UIFont = (HuConfigration.systemFontOfPixelSize(36)) //36px
//一级标题，暗提示，产品名称，警示按钮文字，通栏按钮文字，情感化空白页面说明文字
let fontsize_T2:UIFont = (HuConfigration.systemFontOfPixelSize(32)) //32px
//卡片标题，标题栏两边按钮位子，正文内容，二级tab,副标题和说明提示
let fontsize_T3:UIFont = (HuConfigration.systemFontOfPixelSize(28)) //28px
//图表辅助文字，备注文字，线框小按钮文字
let fontsize_T4:UIFont = (HuConfigration.systemFontOfPixelSize(24)) //24px
//底部标签文字，辅助文字里特别不重要的建议使用20px
let fontsize_T5:UIFont = (HuConfigration.systemFontOfPixelSize(20)) //20px

//font_face @"PingFangSC-Light"
let fontsize_T1_light:UIFont = (HuConfigration.systemFontOfPixelSize(36, withFontFace: PingFangSC_Light)) //36px
let fontsize_T2_light:UIFont = (HuConfigration.systemFontOfPixelSize(32, withFontFace: PingFangSC_Light)) //32px
let fontsize_T3_light:UIFont = (HuConfigration.systemFontOfPixelSize(28, withFontFace: PingFangSC_Light)) //28px
let fontsize_T4_light:UIFont = (HuConfigration.systemFontOfPixelSize(24, withFontFace: PingFangSC_Light)) //24px
let fontsize_T5_light:UIFont = (HuConfigration.systemFontOfPixelSize(20, withFontFace: PingFangSC_Light)) //20px

//字体颜色
let fontcolor_C1:UIColor = (HuConfigration.uiColor(fromString: "#ffffff")) //仅用于标题，按钮和深色背景中 白色
let fontcolor_C2:UIColor = (HuConfigration.uiColor(fromString: "#333333")) //标题，标签，输入内容，正文文本
let fontcolor_C3:UIColor = (HuConfigration.uiColor(fromString: "#666666")) //tab未选文字，次要辅助文本
let fontcolor_C4:UIColor = (HuConfigration.uiColor(fromString: "#a5a5a5")) //说明，备注，辅助文本
let fontcolor_C5:UIColor = (HuConfigration.uiColor(fromString: "#50ABF2")) //可点链接色，tab已选颜色，主色调
let fontcolor_C6:UIColor = (HuConfigration.uiColor(fromString: "#FF8208")) //重点提示色，可根据业务自行使用
let fontcolor_C7:UIColor = (HuConfigration.uiColor(fromString: "#FF513C")) //用于警示，错误，高危危险状态


//04导航栏－深底色 【暂无使用，用系统自带的】
let navi_deep_left_xPos:CGFloat    = 15                    //返回按钮距离最左边的间距
let navi_deep_left_rMargin:CGFloat = 5                  //返回按钮与文字的间距
let navi_deep_btns_margin:CGFloat  = 8                   //返回文字与其它item的间距
let navi_deep_title_font:UIFont   = fontsize_T1_light    //导航条标题文字的字号
let navi_deep_title_color:UIColor  = fontcolor_C1        //导航条标题文字颜色
let navi_deep_rItem_rMargin:CGFloat = 15                //导航条上右边item距离最右边的间距
let navi_deep_rItem_dMargin:CGFloat = 13                //导航条上右边item距离导航栏底部间距
let navi_deep_rItem_width:CGFloat   = 18                  //item的宽
let navi_deep_rItem_height:CGFloat  = 18                 //item的高
let navi_deep_imgBtn_Margin:CGFloat = 15                //右边图像按钮间距离


//05 导航栏－拓展导航栏
/*
 初始化的时候传入大小，将第二个参数的bool值设置为NO
 区分06中导航栏－浅底色中的拓展导航栏
 
 */
// HuNavigationBarExpand文件 只需要将bool值为NO

//06 导航栏－浅色底 【暂时没有用到】
//06.1 常规导航栏使用场景: item之间的间距和大小都与深底色(04)的一样
let navi_light_leftBtn_titleColor:UIColor = fontcolor_C5   //返回按钮上文字的颜色
let navi_light_leftBtn_font:UIFont       = fontsize_T3_light    //返回按钮文字的大小
let navi_light_title_font:UIFont         = fontsize_T1_light      //常规导航条标题文字的字号
let navi_light_title_color:UIColor        = fontcolor_C2          //常规导航条标题文字颜色
let navi_light_rItem_fillColor:UIColor    = fontcolor_C5



//06.2 拓展导航栏：item之间的间距和大小与(05)一样，只不过文字的颜色选用主色调
// HuNavigationBarExpand文件 只需要将bool值为YES

//07标签栏
// HuTabBarViewController文件

//08 搜索Search<app基础规范>  [暂无做成控件] 注意：部分宏不起作用，原因是系统自己适配了。
let search_bar_xPos:CGFloat           = 15
let search_bar_yPos:CGFloat           = 15
let search_bar_width_has_rBtn:CGFloat = (HHBWIDTH - 50 - search_bar_xPos) //右边含按钮的大小
let search_bar_height:CGFloat         = 29
let search_bar_round_corner:CGFloat   = 4
let search_bar_corner_color:UIColor   = HuConfigration.uiColor(fromString: "#CCCCCC")
let search_bar_icon_xPos:CGFloat      = 5
let search_bar_icon_width:CGFloat     = 14
let search_bar_icon_yPos:CGFloat      = (search_bar_height - search_bar_icon_width) / 2.0
let search_bar_font:UIFont           = fontsize_T3
let search_bar_content_xPos:CGFloat   = (40 - search_bar_xPos) //通过放置一个空白视图（该值也是空白视图的宽度），使文字在指定位置输出

//09 tab切换
let tab_select_title_color = fontcolor_C5
let tab_title_font         = fontsize_T3
let tab_title_color        = HuConfigration.uiColor(fromString: "#666666")
let tab_switch_view_height = 40
let tab_select_line_heigth = 1.5             //选中时下划线的高度
let tab_select_line_color  = fontcolor_C5     //选中时下划线的颜色
let tab_line_height        = line_height
let tab_normal_line_color  = border_line_color
// HuSliderTabBarView 文件

//10按钮
//HuButton 文件
let btn_width_big         = 290
let btn_width             = 137.5
let btn_height            = 42
let btn_round_conner      = 5.0
let mainBtn_bgColor       = HuConfigration.uiColor(fromString: "#59AFF2")
let mainBtn_press_bgColor = HuConfigration.uiColor(fromString: "#2689d6")
let mainBtn_title_color   = fontcolor_C1
let secBtn_bgColor        = fontcolor_C1   //次按钮
let secBtn_border_line_color = HuConfigration.uiColor(fromString: "#dddddd")
let secBtn_press_bgColor     = HuConfigration.uiColor(fromString: "#f8f8f8")
let secBtn_press_border_line_color = HuConfigration.uiColor(fromString: "#d8d8d8")
let secBtn_title_color      = fontcolor_C3
let unableBtn_title_color   = HuConfigration.uiColor(fromString: "#d2d2d2") //不可点击按钮
let unableBtn_bgColor       = HuConfigration.uiColor(fromString: "#EBEBF0")
//11底部按钮（通栏）
//HuButton 文件
let bottomBtn_height = 43
let bottomBtn_warnStatus_title_color   = HuConfigration.uiColor(fromString: "#FF513C")
let bottomBtn_nowarnStatus_title_color = fontcolor_C2
let bottomBtn_border_line_color        = secBtn_border_line_color

//12线框按钮
let wireFrameBtn_round_conner = 4.0
let wireFrameBtn_border_color = HuConfigration.uiColor(fromString: "#00AAEE")
let wireFrameBtn_2word_width  = 44
let wireFrameBtn_3word_width  = 56
let wireFrameBtn_4word_width  = 68
let wireFrameBtn_height       = 25
let wireFrameBtn_title_color  = HuConfigration.uiColor(fromString: "#00AAEE")

//13行动操作 【暂时用系统自带的】

//14 页边间距 【暂无使用】
//统一app里面所有内容与页边的间距
let common_margin = 15
let table_margin  = 5

//15 间距 【暂无使用】
let navi_section_margin    = 15  //标题栏到section距离
let section_section_margin = 20  //section之间的距离
let section_button_margin  = 30  //section到button之间的距离
let button_button_margin   = 20  //button到button之间的距离

//16 间距  【暂无使用】
let navi_head_margin                = 15 //标题文字到标题栏距离
let sectionTitle_sectionCell_margin = 10 //标题文字到section之间距离
let hintTitle_button_margin         = 20 //说明文字到按钮之间距离
let sectionCell_warnBtn_margin      = 20 //section到警示按钮之间的距离

//17单行列表 Single list 【暂无定义成控件】
//单行列表主要由一行标题文字组成的列表，其样式有如下几种
//17.1 单行标题文字  左标题文字有内容 标题文字加开关
let list_padding_lMargin    = 15
let list_padding_rMargin    = 15
let list_borderLine_height  = line_height
let list_borderLine_color   = border_line_color
let list_title_font         = fontsize_T2
let list_title_color        = fontcolor_C2
let list_redNumImage_yPos   = 4
let list_redNumImage_width  = 14
let list_redNumImage_height = 14
let list_redNumImage_font   = fontsize_T5
let list_redNumImage_color  = fontcolor_C1

let single_list_lTitle_xPos    = list_padding_lMargin
let single_list_lTitle_rMargin = 10
let single_list_title_font     = list_title_font
let single_lsit_title_color    = list_title_color

let single_list_rContent_rMargin = list_padding_rMargin
let single_list_rContent_font    = fontsize_T3
let single_list_rContent_color   = fontcolor_C4

let single_list_sectionTitle_xPos    = list_padding_lMargin
let single_list_sectionTitle_bMargin = 10
let single_list_sectionTitle_font    = fontsize_T4
let single_list_sectionTitle_color   = fontcolor_C4

let single_list_cellHeight        = 43
let single_list_borderLine_height = line_height
let single_list_borderLine_color  = list_borderLine_color
//17.2 图片加标题文字，图片加标题文字加内容
let single_list_lImage_xPos   = 15
let single_list_lImage_width  = 29
let single_list_lImage_height = 29


//18双行列表 Double line list  【暂无定义成控件】
//双行列表主要由上下两行文字组成的列表
//18.1上标题+下辅助文字
let double_list_cellHeight       = 65
let double_list_uTitle_yPos      = 13
let double_list_uTitle_width     = 256
let double_list_dContent_uMargin = 3.5


//18.2 图片+标题+辅助文字   图片+标题+辅助文字+按钮
let double_list_lImage_width  = 45
let double_list_lImage_height = 45
let double_list_redNumImage_yPos   = list_redNumImage_yPos
let double_list_redNumImage_width  = list_redNumImage_width
let double_list_redNumImage_height = list_redNumImage_height
let double_list_redNumImage_font   = list_redNumImage_font
let double_list_redNumImage_color  = list_redNumImage_color
let double_list_content_width_has_rBtn      = 172.5
let double_list_content_width_has_rArrowBtn = 205


//19三行列表Three line list 【暂无定义成控件】
//相比于双行列表，主要是内容多了一行
let three_list_cellHeight     = 85
let three_list_content_width  = 268.5
let three_list_lImage_width   = 45
let three_list_lImage_height  = 71
let three_list_lImage_rMargin = 10


//20列表展开 List expand
//用于场景出现点击展开的样式
let list_expand_childContent_xPos  = 30
let list_expand_childContent_font  = fontsize_T2
let list_expand_childContent_color = fontcolor_C3

//21列表选择 List select
//列表选择控件大致和单，双行控件一只，跟进业务场景多了勾选状态
let list_select_rChoiceBtn_width = 15
let list_select_rChoiceBtn_height = 15
let list_select_rChoiceBtn_rMargin = 15


//22开关 系统自带的即可
//开关组件包含三种状态，Off/On,Dim

//23删除 左滑删除 【暂时用系统】
//主要用来删除单个内容和多个内容

//24删除 选中删除 【暂无使用】
//用来删除单个内容和多个内容
let selected_image_width   = 24
let selected_image_height  = 24
let selected_image_xPos    = 10
let selected_image_rMargin = 10  //右边距


//25基础提示框 【暂无使用】
//提示框是提醒用户在当前页面操作后得反馈提示，位于页面的中间
let alertView_title_font  = (HuConfigration.systemFontOfPixelSize(28))
let alertView_title_color = fontcolor_C1
let alertView_radius      = 4


//26更多
//他是一个native的容器，分别有iOS和安卓的容器决定，会根据不同的平台变化。

//27输入框 【暂无使用】
//主要有标题，输入内容，图标等元素组成。
let input_height        = 43
let input_label_lmargin = 15
let input_text_font     = fontsize_T3
let input_text_color    = fontcolor_C2

let input_hintLabel_font  = fontsize_T2
let input_hintLabel_color = fontcolor_C2

let input_dark_hintLabel_font       = fontsize_T3
let input_dark_hintLabel_color      = HuConfigration.uiColor(fromString: "#cccccc")
let input_dark_hintLabel_xPos       = 94
let input_dark_hintLabel_large_xPos = 110


//28文本 【暂无使用】 一般用于tableview列表的自定义cell单元
//由于某些使用场景，导致文本不可控，因此推出几个文本样式以供选择。
//28.1 第一种cell 标题+内容+更多 [多内容cell]
let multiContentCell_width         = 203
let mulitContentCell_title_font    = fontsize_T4
let multiContentCell_title_color   = fontcolor_C3
let multiContentCell_title_xPos    = 15
let multiContentCell_title_uMargin = 15
let multiContentCell_title_dMargin = 10

let mulitContentCell_subtitle_font    = fontsize_T2
let multiContentCell_subtitle_color   = HuConfigration.uiColor(fromString: "#000000")
let multiContentCell_subtitle_uMargin = 15

let multiContentCell_content_font       = fontsize_T3
let multiContentCell_content_color      = fontcolor_C3
let multiContentCell_content_uMargin    = 6.5
let multiContentCell_content_row_margin = 8

let multiContentCell_datetime_font    = fontsize_T4
let multiContentCell_datetime_color   = fontcolor_C4
let multiContentCell_datetime_uMargin = 15

let multiContenCell_moreLinkBtn_font    = fontsize_T3
let multiContenCell_moreLinkBtn_color   = fontcolor_C5
let multiContenCell_moreLinkBtn_uMargin = 15
let multiContenCell_moreLinkBtn_dMargin = 15

//28.2 第二种cell （标题+日期+图片+内容+文字链）  [富文本图片cell]
let richTextImageCell_title_font    = fontsize_T1
let richTextImageCell_title_color   = HuConfigration.uiColor(fromString: "#000000")
let richTextImageCell_title_xPos    = 15
let richTextImageCell_title_uMargin = 20

let richTextImageCell_datetime_font    = fontsize_T4
let richTextImageCell_datetime_color   = fontcolor_C4
let richTextImageCell_datetime_uMargin = 3.5

let richTextImageCell_image_width   = 290
let richTextImageCell_image_uMargin = 20

let richTextImageCell_content_uMargin = 20

let richTextIamgeCell_wordLink_font    = fontsize_T3
let richTextImageCell_wordLink_color   = fontcolor_C5
let richTextImageCell_wordLink_uMargin = 15

//29情感化空白页面设计 Emotional blank page
//插画能够更生动的展示页面应用场景和说明内页。建议插画内容在270*270以内，重要功能空白页面，有主按钮页面设计
let blank_page_image_width  = 135
let blank_page_image_height = 135

let blank_page_image_hasBtn_yPos    = 75
let blank_page_image_hasBtn_dMargin = 25
let blank_page_btn_uMargin          = 40
let blank_page_text_font            = fontsize_T2
let blank_page_text_color           = fontcolor_C4
let blank_page_text_row_margin      = 8

//30情感化空白页设计
//插画能够更生动的展示页面应用场景和说明内页。次级空白页面使用次级按钮，无需按钮有如右图设计方式
let blank_page_image_yPos = 120


//31插画弹层（单按钮）  Illustration layer
//插画弹层样式有两种，单按钮加插画或双按钮加插画，能够让页面更生动有趣。
let illustration_layer_width  = 270
let illustration_layer_height = 315

let illustration_layer_topRight_cancelBtn_width   = 24
let illustration_layer_topRight_cancelBtn_height  = 24
let illustration_layer_topRight_cancelBtn_dMargin = 15

let illustration_layer_image_yPos   = 30
let illustration_layer_image_width  = 240
let illustration_layer_image_height = 160

let illustration_layer_text_uMargin    = 15
let illustration_layer_text_dMargin    = 15
let illustration_layer_text_row_margin = 8
let illustration_layer_text_font       = fontsize_T3
let illustration_layer_text_color = HuConfigration.uiColor(fromString: "#aaaaaa")
let illustration_layer_mainBtn_width  = 240
let illustration_layer_mainBtn_height = 43

let mask_layer_color   = HuConfigration.uiColor(fromString: "#000000") //黑色
let mask_layer_opacity = 0.5   //半透明

//32插画弹层（双按钮） Illustration layer two button
//插画弹层样式有两种，单按钮加插画或双按钮加插画，能够让页面更生动有趣。
let illustration_layer_twoBtn_height       = 290
let illustration_layer_twoBtn_text_dMargin = 20
let illustration_layer_dividing_line_color = HuConfigration.uiColor(fromString: "#afafbc")
let illustration_layer_verticalLine_height = 50  //竖线
let illustration_layer_mainBtn_font        = mainBtn_font
let illustration_layer_mainBtn_color       = fontcolor_C5
let illustration_layer_secondaryBtn_color  = fontcolor_C3

//33文字弹层 Text layer
//文字弹层样色有两种，单按钮加文案和双按钮加文案。
let text_layer_title_yPos    = 20
let text_layer_title_dMargin = 10
let text_layer_title_font    = fontsize_T2
let text_layer_title_color   = fontcolor_C2

let text_layer_content_xPos = 20
let text_layer_content_rMargin = 20
let text_layer_content_dMargin = 20
let text_layer_content_color = (HuConfigration.uiColor(fromString: "#aaaaaa"))

//其他自定义消息
//IM自定义消息
let msg_title_height = 18
let msg_title_width  = 160
let msg_title_font   = fontsize_T2
let msg_title_color  = fontcolor_C1
let msg_subTitle_height  = 16
let msg_subTitle_font    = fontsize_T4
let msg_subTitle_color   = fontcolor_C1
let msg_imageView_height = 35
let msg_imageView_width  = 35
let msg_followUp_image   = "msg_flowup"
let msg_satisfaction_image = "msg_satisfaction"

//测试题目底部按钮
let bottom_btn_width = (HHBWIDTH / 2.0)
let bottom_btn_height:CGFloat = 49
let practicePage_bgView_height:CGFloat = 4
let practicePage_contentView_uMargin:CGFloat = 11
let practicePage_contentView_yPos:CGFloat = (practicePage_contentView_uMargin + practicePage_bgView_height)
let practicePage_contentView_height:CGFloat = (HHBHEIGHT - bottom_btn_height - top_nav_bar_height - practicePage_contentView_yPos)  //测试题库

let exercise_height        = 221
let exercise_title_height  = 45  //1行的高度
let exercise_title_uMargin = 11
let exercise_title_dMargin = 11
let exercise_choice_height = (exercise_height - exercise_title_height)

let choice_icon_width:CGFloat    = 19
let choice_icon_height   = 19
let choice_title_uMargin = 10
let choice_title_dMargin = 10
let choice_title_xPos    = 64
let choice_xPos          = 30
let choice_height        = 40

//护理培训课程搜索
let NT_searchCell_height          = (130 / 3.0)
let NT_searchCell_icon_width      = 12 //(NT  Nurse Trainning 简写)
let NT_searchCell_icon_height     = 12
let NT_searchCell_content_lMargin = 12
let NT_seatchCell_content_color   = (HuConfigration.uiColor(fromString: "#151515"))
let NT_searchViewController_tableview_height:CGFloat = (HHBHEIGHT - top_nav_bar_height)


//测试成绩
let practice_result_image_width   = 145
let practice_result_image_height  = 57
let practice_result_image_uMargin = 15

let practice_summary_text_yPos   = 75
let practice_summary_text_height = 22
let practice_summaryView_height  = 120

let practice_testRecordTextView_height = 38
let practice_testRecordText_height     = 17
let practice_testRecordText_width      = 48

let practice_filterView_height  = 42
let practice_filter_text_height = 22
let filterBtn_width  = 9
let filterBtn_height = 5

let practice_tableview_yPos   = (practice_summaryView_height + practice_testRecordTextView_height + practice_filterView_height)
let practice_tableview_height = (HHBHEIGHT - top_nav_bar_height)

let practice_tableviewcell_height = (461 / 7.0)
let cell_title_uMargin = 9
let cell_title_dMargin = 9
let practice_cell_icon_lMargin:CGFloat    = 16
let practice_cell_content_lMargin:CGFloat = 10
let practice_cell_content_height:CGFloat  = 44
let practice_cell_content_rMargin:CGFloat = 14
let practice_cell_content_xPos:CGFloat  = (practice_cell_icon_lMargin + choice_icon_width + practice_cell_content_lMargin)
let practice_cell_content_width:CGFloat = (HHBWIDTH - practice_cell_content_xPos - practice_cell_content_rMargin)

let pratice_bgcolor = (HuConfigration.uiColor(fromString: "#f4f4f8"))

//自定义控件相关宏定义
//通用拨盘控件
let pickerViewSheet_titleBar_height    = 44
let pickerViewSheet_contentView_height = 216
let pickerViewSheet_height = (pickerViewSheet_titleBar_height + pickerViewSheet_contentView_height)

/**
 *  下面给出两种方法,,扩展,,和仿oc类,,,(个人感觉用扩展比较好,)
 */
//扩展
extension UIColor {
   static let  getStaticRef =
        ["aqua":"#00FFFF",
         "black":"#000000",
         "blue":"#0000FF",
         "fuchsia":"#FF00FF",
         "gray":"#808080",
         "green":"#008000",
         "lime":"#00FF00",
         "maroon":"#800000",
         "navy":"#000080",
         "olive":"#808000",
         "orange":"#FFA500",
         "purple":"#800080",
         "red":"#FF0000",
         "silver":"#C0C0C0",
         "teal":"#008080",
         "white":"#FFFFFF",
         "yellow":"#FFFF00",
         "clear":"#00000000"]
    
   class func uiColor(fromString clrString:String) -> UIColor {
        if clrString.characters.count == 0 {
            return UIColor.clear
        }
        var clr:String = ""
        if (UIColor.getStaticRef[clrString] != nil) {
            clr = UIColor.getStaticRef[clrString]!
        }
        if !clr.hasPrefix("#") {
            return UIColor.red
        }
        clr = (clr as NSString ).substring(from: 1)
        let redStr = (clr as NSString ).substring(to: 2)
        let greenStr = ((clr as NSString).substring(from: 2) as NSString).substring(to: 2)
        let blueStr = ((clr as NSString).substring(from: 4) as NSString).substring(to: 2)
        var r:CUnsignedInt = 0, g:CUnsignedInt = 0, b:CUnsignedInt = 0;
        Scanner(string:redStr).scanHexInt32(&r)
        Scanner(string: greenStr).scanHexInt32(&g)
        Scanner(string: blueStr).scanHexInt32(&b)
        return UIColor(red: CGFloat(r)/255.0, green: CGFloat(g)/255.0, blue: CGFloat(b)/255.0, alpha: 1.0)
        
    }
}

extension UIFont  {
    
    class func systemFontOfPixelSize(_ pxSize: Int) -> UIFont {
        return UIFont.systemFont(pixelSize: pxSize, withFontFace: "")
    }
    
    class func systemFont(pixelSize pxSize: Int , withFontFace fontFace:String) -> UIFont{
        var fontName = fontFace
        
        if fontFace.isEmpty{
            fontName = "PingFangSC-Regular"
        }
        var tmp:Float = Float(pxSize)
        if true {
            switch pxSize {
            case 20:
                tmp = 38
            case 24:
                tmp = 44
            case 28:
                tmp = 48
            case 32:
                tmp = 52
            case 36:
                tmp = 54
                
            default:
                tmp = Float(UIScreen.main.bounds.size.width) / 375.0 * 2.0
            }
        }
        let fontSize = tmp / 2.0
        return UIFont(name: fontName, size: CGFloat(fontSize))!;
        
    }

}


// 类  仿OC
class HuConfigration: NSObject {
    static let getStaticRef =
        ["aqua":"#00FFFF",
         "black":"#000000",
         "blue":"#0000FF",
         "fuchsia":"#FF00FF",
         "gray":"#808080",
         "green":"#008000",
         "lime":"#00FF00",
         "maroon":"#800000",
         "navy":"#000080",
         "olive":"#808000",
         "orange":"#FFA500",
         "purple":"#800080",
         "red":"#FF0000",
         "silver":"#C0C0C0",
         "teal":"#008080",
         "white":"#FFFFFF",
         "yellow":"#FFFF00",
         "clear":"#00000000"]
    
    class func uiColor(fromString clrString:String) -> UIColor {
        if clrString.characters.count == 0 {
            return UIColor.clear
        }
        var clr:String = ""
        if (getStaticRef[clrString] != nil) {
            clr = getStaticRef[clrString]!
        }
        if !clr.hasPrefix("#") {
            return UIColor.red
        }
        clr = (clr as NSString ).substring(from: 1)
        let redStr = (clr as NSString ).substring(to: 2)
        let greenStr = ((clr as NSString).substring(from: 2) as NSString).substring(to: 2)
        let blueStr = ((clr as NSString).substring(from: 4) as NSString).substring(to: 2)
        var r:CUnsignedInt = 0, g:CUnsignedInt = 0, b:CUnsignedInt = 0;
        Scanner(string:redStr).scanHexInt32(&r)
        Scanner(string: greenStr).scanHexInt32(&g)
        Scanner(string: blueStr).scanHexInt32(&b)
        return UIColor(red: CGFloat(r)/255.0, green: CGFloat(g)/255.0, blue: CGFloat(b)/255.0, alpha: 1.0)
        
    }
    
    class func systemFontOfPixelSize(_ pxSize: Int) -> UIFont {
        return HuConfigration.systemFontOfPixelSize(pxSize, withFontFace: "")
    }
    class func systemFontOfPixelSize(_ pxSize: Int , withFontFace fontFace:String) -> UIFont{
        var fontName = fontFace
        
        if fontFace.isEmpty{
            fontName = "PingFangSC-Regular"
        }
        var tmp:Float = Float(pxSize)
        if true {
            switch pxSize {
            case 20:
                tmp = 38
            case 24:
                tmp = 44
            case 28:
                tmp = 48
            case 32:
                tmp = 52
            case 36:
                tmp = 54
                
            default:
                tmp = Float(UIScreen.main.bounds.size.width) / 375.0 * 2.0
            }
        }
        let fontSize = tmp / 2.0
        return UIFont(name: fontName, size: CGFloat(fontSize))!;
        
    }
}














