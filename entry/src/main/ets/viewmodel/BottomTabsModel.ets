/**
 * @Author: xieyq26
 * @Time: 2024/05/28 15:54:16
 * @FilePath: src\main\ets\viewmodel\BottomTabsModel.ets
 * @Description 底部导航列表
 */

import { BottomTabsItem } from './BottomTabsItem';

export const BottomTabsList: Array<BottomTabsItem> = [
  {
    icon: $r('app.media.tab_index'),
    iconSelected: $r('app.media.tab_index_selected'),
    text: $r('app.string.bottom_tab_text_index')
  },
  {
    icon: $r('app.media.tab_speed'),
    iconSelected: $r('app.media.tab_speed_selected'),
    text: $r('app.string.bottom_tab_text_speed')
  },
  {
    icon: $r('app.media.tab_history'),
    iconSelected: $r('app.media.tab_history_selected'),
    text: $r('app.string.bottom_tab_text_history')
  }
]