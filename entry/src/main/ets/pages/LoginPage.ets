/**
 * @Author: xieyq26
 * @Time: 2024/05/29 16:14:29
 * @FilePath: src\main\ets\pages\LoginPage.ets
 * @Description 登录页面
 */
import { CommonConstants } from '../common/constants/CommonConstants';

@Extend(TextInput)
function inputStyle() {
  .placeholderColor($r('app.color.placeholder_color'))
  .height($r('app.float.login_input_height'))
  .fontSize($r('app.float.login_normal_font_size'))
  .backgroundColor($r('app.color.white'))
  .width('80%')
  .padding({ left: CommonConstants.INPUT_PADDING_LEFT })
  .margin({ top: $r('app.float.input_margin_top') })
}

@Entry
@Component
struct LoginPage {
  @State account: string = '';
  @State password: string = '';
  @State code: string = '';
  @State isRememberPassword: boolean = false;

  build() {
    // 头部的提示信息，欢迎
    Column() {
      Column() {
        Text($r('app.string.login_back'))
          .fontColor($r('app.color.white'))
          .fontSize($r('app.float.login_back_font_size'))
        Text($r('app.string.login_info'))
          .fontColor($r('app.color.white'))
          .fontSize($r('app.float.login_info_font_size'))
      }
      .justifyContent(FlexAlign.Start)
      .padding({
        left: $r('app.float.login_info_padding')
      })
      .margin({
        top: $r('app.float.login_info_margin')
      })
      .width('100%')
      .alignItems(HorizontalAlign.Start)

      //  登录表单输入
      Column() {
        Text($r('app.string.login_title'))
          .fontColor($r('app.color.white'))
          .fontSize($r('app.float.login_title_font_size'))
          .fontWeight(FontWeight.Medium)
          .letterSpacing(15)
          .margin({
            bottom: $r('app.float.login_form_title_bottom_margin')
          })
        Column() {
          // 用户名
          Column() {
            Text($r('app.string.login_user'))
              .fontColor($r('app.color.white'))
              .fontSize($r('app.float.login_normal_font_size'))
            TextInput({ placeholder: $r('app.string.login_user_placeholder') })
              .type(InputType.Normal)
              .inputStyle()
              .onChange((value: string) => {
                this.account = value;
              })
          }
          .alignItems(HorizontalAlign.Start)
          // 密码
          Column() {
            Text($r('app.string.login_password'))
              .fontColor($r('app.color.white'))
              .fontSize($r('app.float.login_normal_font_size'))
            TextInput({ placeholder: $r('app.string.login_password_placeholder') })
              .type(InputType.Password)
              .inputStyle()
              .onChange((value: string) => {
                this.password = value;
              })
          }
          .alignItems(HorizontalAlign.Start)
          .margin({ top: $r('app.float.input_margin_top') })
          // 忘记密码
          Column(){

          }
          .alignItems(HorizontalAlign.Start)
          .margin({ top: $r('app.float.input_margin_top') })
        }
        .width('100%')
        .alignItems(HorizontalAlign.Start)
        .margin({
          left: '20%'
        })
      }
      .margin({
        top: $r('app.float.login_form_margin_top')
      })
    }
    .width('100%')
    .height('100%')
    .backgroundImage($r('app.media.login_bg'))
    .backgroundImageSize(ImageSize.Cover)
  }
}