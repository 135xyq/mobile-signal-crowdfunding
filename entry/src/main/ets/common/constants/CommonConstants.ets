/**
 * @Author: xieyq26
 * @Time: 2024/05/28 15:41:30
 * @FilePath: src\main\ets\common\constants\CommonConstants.ets
 * @Description 全局静态变量
 */

export class CommonConstants {

  // 颜色设置
  // 主题颜色
  static readonly THEME_COLOR:string = '#17C3CE'

  // 页面标题
  static readonly INDEX_TITLE:string = '首页'
  static readonly TSET_SPEED_TITLE:string = '测速'
  static readonly HISTORY_TITLE:string = '历史'

  // 页面转场时间
  static readonly PAGE_TRANSITION_DURATION: number = 200;
  // 切换延时
  static readonly PAGE_TRANSITION_EXIT_DELAY: number = 100;

  // 输入框左边距
  static readonly INPUT_PADDING_LEFT:string = '15vp'
}