/**
 * @Author: xieyq26
 * @Time: 2024/05/28 16:02:49
 * @FilePath: src\main\ets\pages\MainPage.ets
 * @Description 页面，包括tabs
 */

import { CommonConstants as Const } from '../common/constants/CommonConstants';
import Index from '../view/Index';
import Speed from '../view/Speed';
import History from '../view/History';
import { BottomTabsList } from '../viewmodel/BottomTabsModel';

@Entry
@Component
struct MainPage {
  @StorageLink('bottomTabIndex') bottomTabIndex: number = 0;
  private controller: TabsController = new TabsController();

  @Builder
  TabBuilder(index: number) {
    Column() {
      Image(this.bottomTabIndex === index ? BottomTabsList[index].iconSelected : BottomTabsList[index].icon)
        .width($r('app.float.tabs_icon_size'))
        .height($r('app.float.tabs_icon_size'))
        .objectFit(ImageFit.Contain)

      Text(BottomTabsList[index].text)
        .fontSize($r('app.float.tabs_font_size'))
        .opacity(0.6)
        .fontColor(this.bottomTabIndex === index ?
        $r('app.color.tabs_font_color_selected') : $r('app.color.tabs_font_color'))
    }
    .width('100%')
    .height('100%')
    .justifyContent(FlexAlign.Center)
    .backgroundColor($r('app.color.tabs_background_color'))
  }

  pageTransition() {
    PageTransitionEnter({ duration: Const.PAGE_TRANSITION_DURATION })
      .slide(SlideEffect.Bottom)
    PageTransitionExit({ delay: Const.PAGE_TRANSITION_EXIT_DELAY })
      .opacity(0)
  }

  build() {
    Flex({ direction: FlexDirection.Column, alignItems: ItemAlign.End, justifyContent: FlexAlign.End }) {
      Tabs({ barPosition: BarPosition.End, index: this.bottomTabIndex, controller: this.controller }) {
        TabContent() {
          Index()
        }.tabBar(this.TabBuilder(0))

        TabContent() {
          Speed()
        }.tabBar(this.TabBuilder(1))

        TabContent() {
          History()
        }.tabBar(this.TabBuilder(2))
      }
      .width('100%')
      .height('100%')
      .vertical(false)
      .barHeight('12%')
      .scrollable(false)
      .onChange((index: number) => {
        this.bottomTabIndex = index;
      })
    }
    .width('100%')
  }
}