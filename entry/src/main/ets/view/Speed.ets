@Component
export default struct Index {
  build() {
    Row() {
      Column() {
        Text('测速')
          .fontSize(40)
      }
      .width('100%')
    }
    .height('100%')
  }
}
