/**
 * @Author: xieyq26
 * @Time: 2024/05/29 14:41:10
 * @FilePath: src\main\ets\pages\SplashPage.ets
 * @Description 隐私政策页
 */
import { CommonConstants } from '../common/constants/CommonConstants'
import router from '@ohos.router';
import { common } from '@kit.AbilityKit';

@Entry
@Component
struct SplashPage {

  /**
   * 同意并继续，去登录页
   */
  onConfirm():void {
    router.pushUrl({
      url: 'pages/LoginPage'
    })
  }

  /**
   * 取消，退出应用
   */
  onCancel():void {
    let context: common.UIAbilityContext = getContext(this) as common.UIAbilityContext
    context.terminateSelf()
  }


  build() {
    Column(){
      // logo
      Image($r('app.media.logo'))
        .width($r('app.float.splash_logo_size'))
        .height($r('app.float.splash_logo_size'))
        .margin({
          top: $r('app.float.splash_logo_margin_top')
        })
      // 隐私政策内容
      Column(){
        Text($r('app.string.splash_text_welcome'))
          .fontColor($r('app.color.splash_text_title_color'))
          .fontSize($r('app.float.splash_text_title_size'))
          .letterSpacing(10)
          .margin({
            bottom: $r('app.float.splash_text_title_margin_bottom')
          })
        Text($r('app.string.splash_text_welcome_main'))
          .fontColor($r('app.color.splash_text_main_color'))
          .fontSize($r('app.float.splash_text_main_size'))
          .margin({
            bottom: $r('app.float.splash_text_title_margin_bottom')
          })
        Text($r('app.string.splash_text_welcome_sub'))
          .fontColor($r('app.color.splash_text_sub_color'))
          .fontSize($r('app.float.splash_text_sub_size'))
      }
      .width('85%')
      .margin({
        top:$r('app.float.splash_text_margin_top')
      })
      .padding({
        top: $r('app.float.splash_text_padding_top'),
        left: $r('app.float.splash_text_padding_left'),
        right: $r('app.float.splash_text_padding_right'),
        bottom: $r('app.float.splash_text_padding_bottom')
      })
      .backgroundColor($r('app.color.splash_text_background_color'))
      .borderRadius($r('app.float.splash_text_border_radius'))

      // 按钮
      Row({space: 30}){
        Button($r('app.string.cancel'), { type: ButtonType.Normal,buttonStyle: ButtonStyleMode.NORMAL,stateEffect:false })
          .width($r('app.float.splash_button_width'))
          .height($r('app.float.splash_button_height'))
          .fontSize($r('app.float.splash_button_font_size'))
          .fontColor(CommonConstants.THEME_COLOR)
          .fontWeight(FontWeight.Medium)
          .backgroundColor(Color.Transparent)
          .outline({
            style: undefined
          })
          .border({
            width: $r('app.float.splash_button_border'),
            color: CommonConstants.THEME_COLOR,
            radius: $r('app.float.splash_button_radius')
          })
          .onClick(()=>{
            this.onCancel()
          })
        Button($r('app.string.splash_confirm'), { type: ButtonType.Normal, buttonStyle: ButtonStyleMode.TEXTUAL, stateEffect:false})
          .width($r('app.float.splash_button_width'))
          .height($r('app.float.splash_button_height'))
          .fontSize($r('app.float.splash_button_font_size'))
          .fontColor($r('app.color.white'))
          .fontWeight(FontWeight.Medium)
          .backgroundColor(CommonConstants.THEME_COLOR)
          .outline({
            style: undefined
          })
          .border({
            style: BorderStyle.Solid,
            width: $r('app.float.splash_button_radius'),
            color: CommonConstants.THEME_COLOR,
            radius: $r('app.float.splash_button_radius')
          })
          .onClick(()=>{
            this.onConfirm()
          })
      }
      .margin({
        top: $r('app.float.splash_button_margin_top')
      })
    }
    .width('100%')
    .height('100%')
    .backgroundImage($r('app.media.login_bg'))
    .backgroundImageSize(ImageSize.Cover)
  }
}