@Component
export default struct Index {
  build() {
    Row() {
      Column() {
        Text('历史')
          .fontSize(40)
      }
      .width('100%')
    }
    .height('100%')
  }
}
