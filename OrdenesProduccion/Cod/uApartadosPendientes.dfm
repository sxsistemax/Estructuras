object frmApartadosPendientes: TfrmApartadosPendientes
  Left = 0
  Top = 0
  Caption = 'Apartados Pendientes'
  ClientHeight = 268
  ClientWidth = 536
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Intervalo: TTimer
    Enabled = False
    Interval = 30000
    OnTimer = IntervaloTimer
    Left = 176
    Top = 56
  end
  object JvTrayIcon1: TJvTrayIcon
    Active = True
    Icon.Data = {
      0000010001002020000001002000A81000001600000028000000200000004000
      0000010020000000000000100000120B0000120B000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000030000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000605081D3D3B56A713131A6500000015000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000B05
      01222713057908020052202132957575AEFF6F6FA5FF48486BCC13131C660000
      0016000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002E16
      075EA65118FF924613FD804320FC724534FF684B4EFF685871FF5D577CFF3132
      4CCA060A13670000001D00000001000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004E26
      0C91A75218FF9F4E17FFA14E16FFA14C12FF9F4A10FF984812FF8E471BFF864C
      2FFF6D4132FF3C1E12D81407008E04020150000000240000000B000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000037038
      11C2A65319FF9F4F18FF9E4E18FF9E4E18FF9E4D17FF9E4D17FF9F4D16FF9F4A
      10FFA8571FFFC68C65FFA96438FF843C0DFC6C340FE14D250BBA2D16078E1309
      03620201003A0000001C00000008000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000704011D9149
      17ECA45319FFA05119FFA04F18FF9F4F17FF9F4F18FF9F4F18FF9E4E17FF9F4E
      18FFC9A489FFD2C2B4FFDFCCBDFFAC6230FFA24C13FFA55018FFA24F17FF9749
      16FF833F12F3622F0ED43E1E09AA2210057C0904012800000001000000000000
      000000000000000000000000000000000000000000000000000020100546A655
      1BFFA3531AFFA2521AFFA3531BFFA15119FFA04C11FF9D480DFF9C490FFFA354
      1EFFD6BCA8FF99704EFFC2A892FFBA7F57FF9A470FFF9E4D17FF9D4D17FF9E4D
      17FFA14E17FFA55018FFA55018FFA75018FF3F1E097100000000000000000000
      000000000000000000000000000000000000000000000000000040220B77AE5B
      1EFFA4551BFFA04D11FFC1885DFFF1E7DFFFBFA491FFC19475FFB17448FFA659
      23FFBB7E53FFE1C4AFFFC69674FF9E4B13FF9F4E16FF9F4F18FF9F4F18FF9E4E
      18FF9E4E18FF9E4D17FF9E4D17FFA04E17FF200F053900000000000000000000
      0000000000000000000000000000000000000000000000000000633411ABB05D
      1FFFA6571CFFA25115FFB27C5AFFDDBBA0FFC4AB98FFE1D2C7FFBFB7B1FFCBC4
      BEFFD9C7BAFFB9967EFFBA835CFFAB6737FFA3551EFFA14E13FF9C470CFF9E4B
      13FFA05019FF9F4F18FFA35119FF8D4615E40603010E00000000000000000000
      0000000000000000000000000000000000000000000000000011844717DAAF5D
      1FFFA85A1EFFA85718FF554A82FFDBDDEBFFEEE1D2FFE9D2C2FFD7B8A1FFD4B3
      9AFFD0B29BFFC8B2A1FFE3D4CAFFBFB5AEFFDBCEC6FFC5AF9FFFCAA58BFFB574
      46FF9F4E14FFA15119FFA8551AFF6F3811B30000000000000000000000000000
      00000000000000000000000000000000000000000000120D0B4CA35A21FFAD5E
      1FFFAA5A1CFFB86D2FFF8B88B1FF343E9CFF5860ABFF5B64B1FFEBEDEFFFFFFF
      FFFFEBE5E2FFF2E4D9FFDDC5B3FFD8B9A2FFD7B69EFFC5A893FFE4D4C7FFC591
      6BFF9F4C11FFA3531AFFAC581CFF47240C740000000000000000000000000000
      00000000000000000000000000000000000000000004503E3EB2B56626FFAD5F
      20FFAA5918FFBE804EFFFBFCFFFFB6B9D7FFD2D3E4FF5158A7FF8B8FBCFFC9CA
      DCFFE9EAE8FFFDFEFFFFEEF0F1FFFDFEFEFFF3F2F2FFF2EBE7FFEEDCCFFFAC62
      2CFFA45318FFA6561CFFA4551BFE1C0E05320000000000000000000000000000
      0000000000000000000000000000000000001619264A92726DFFB4621CFFAF62
      22FFAB5915FFC89973FFF8FCFFFFF1F0ECFFFFFFFFFFA0A4D0FF2F3798FF424A
      9EFFEDEDECFFF7F7F6FFE1E1E1FFF0F0F0FFE3E3E4FFF4F7F9FFF0E5DDFFA95C
      21FFA6571BFFAB5A1EFF8F4B19DC0301000A0000000000000000000000000000
      0000000000000000000000000000000000055C5E7EBAA7755DFFB5631CFFB164
      23FFAD5C17FFE3C7AFFFFFFFFFFFE9E9E9FFF6F6F6FFE1E2E4FFECECECFF535A
      A8FFB9BCDBFFFFFFFBFFEFEFEFFFFFFFFFFFECECECFFFCFFFFFFD7BBA5FFA653
      12FFA95B1EFFB25F20FF6C3A13A7000000000000000000000000000000000000
      00000000000000000000000000001E1D264E9490B8FFAA6A38FFB66823FFB466
      23FFB46827FFE6DCD3FFF0F2F4FFE9E9E9FFFFFFFFFFEFEFEFFFFFFFFFFFADB0
      D4FF666CB3FFF7F7F1FFE8E8E8FFEBEBEBFFE6E6E6FFFFFFFFFFCD9E78FFA755
      14FFAB5D1FFFB56221FF44250C6A000000000000000000000000000000000000
      000000000000000000000000000A6B6A88C09E92ADFFB26928FFB66A27FFB366
      22FFBF7D44FFFEFDFCFFF4F4F5FFEFEFEFFFF1F1F1FFE4E4E4FFF5F5F4FFE0E1
      E3FF5159ACFFD8D9E6FFFFFFFDFFF6F6F6FFF1F2F2FFF7F8F9FFBA7B48FFAC5C
      1AFFAE6021FFAE6021FF1F110633000000000000000000000000000000000000
      000000000000000000002827315FA6A6D5FF9A8287FFB86B24FFB76D2AFFB465
      20FFCA976BFFF6FAFDFFEBEBEBFFF6F6F6FFF5F5F5FFF4F4F4FFFCFCFCFFF8F8
      F2FF9095CCFF7E83BBFFFEFEF7FFE7E7E7FFF2F4F6FFF2E9E1FFB4682AFFB061
      20FFB46523FF98551EDE0302010A000000000000000000000000000000000000
      00000000000000000002817E9EC6ADAEE0FFA07A69FFBC6E26FFB96F2DFFB466
      20FFDEBC9EFFFFFFFFFFEEEEEEFFF8F8F8FFE9E9E9FFEFEFEFFFEBEBEBFFF1F1
      EFFFE1E2EFFF5159AEFFFAFAFDFFF1F0F0FFFDFFFFFFE0C9B4FFB05F1AFFB365
      24FFBB6A25FF754217AA00000000000000000000000000000000000000000000
      000000000000000000003E3D4C5B7F80A4D1AA7752FFBD722BFFBA712FFFB86C
      28FFE4D1C0FFF5F8FAFFEBEBEBFFFDFDFDFFF0F0F0FFFFFFFFFFF2F2F2FFF5F5
      F5FFFBFAF4FF6F75B7FFB1B4D5FFEFEFEAFFFDFFFFFFD6AD8AFFB1601AFFB568
      26FFBE6E28FF48290F6B00000000000000000000000000000000000000000000
      00000000000000000000000000000907061FA96A30F0C07733FFBA722FFFBE7A
      3BFFF9F3EDFFF9FBFCFFF1F1F1FFF6F6F6FFE8E8E8FFF4F4F4FFE8E8E8FFF8F8
      F8FFF8F7F4FFC8CAE3FF6E75B9FFFFFEF9FFFBFCFDFFC28753FFB46722FFB86C
      29FFB36928FB1A0F062A00000000000000000000000000000000000000000000
      00000000000000000000000000001F14083EBD7734FFBE7734FFBB722DFFC790
      5BFFF5F6F8FFECEDEDFFF1F1F1FFF7F7F7FFF4F4F4FFFFFFFFFFF0F0F0FFFBFB
      FBFFEAEAEAFFF4F4F3FF5760B1FFA3A9D8FFF5ECE1FFBA7332FFB76C2AFFBD70
      2CFF985A24D50000000500000000000000000000000000000000000000000000
      0000000000000000000000000000422A136DC8803AFFBE7936FFBA702BFFD8AE
      87FFFFFFFFFFF3F4F6FFF8FAFCFFEDEEEFFFEFEFEFFFEFEFEFFFECECECFFF9F9
      F9FFF1F1F1FFFFFFFFFF878DC6FF8C95D3FFEDD7BDFFB66A24FFB9702EFFC376
      30FF72451CA00000000000000000000000000000000000000000000000000000
      00000000000000000000000000006C4520A1CB823CFFBF7B38FFBE7734FFC98F
      58FFDCB792FFDFC6AFFFF6EBDFFFF1EEECFFFEFEFEFFF6F7F9FFF9FBFCFFF5F7
      F9FFEDEDEEFFF4F4F3FFEFEEEBFFF7FCFFFFD9B28DFFB76B25FFBB7330FFC478
      32FF442A11620000000000000000000000000000000000000000000000000000
      000000000000000000000000000B99632FD5C8813DFFC07C39FFC17E3DFFD09E
      6DFFCE9764FFC88D53FFC5874BFFCB9561FFD3A274FFD6B08DFFE9D3BDFFEEE3
      D8FFFAF8F6FFFBFCFDFFF7F8FAFFFFFFFFFFC9925EFFBA702CFFBE7633FFBA73
      31FC1B11072B0000000000000000000000000000000000000000000000000000
      00000000000000000000120C062ABA7A3AF7C5803DFFC17E3CFFC17E3CFFC484
      44FFC58648FFC98E55FFD09E6CFFD3A476FFCC9560FFCA9059FFC98E56FFC88D
      55FFCD9762FFD2A67CFFE0C2A6FFECD8C4FFC28143FFBC7532FFC27A36FFA065
      2CD9010100060000000000000000000000000000000000000000000000000000
      000000000000000000002B1D0E3FC4823EFFCC8741FFCF8841FFCC8540FFC682
      3DFFC37F3BFFC17D39FFC07B37FFC07B37FFC2803FFFCB915AFFCA915AFFD3A2
      74FFD09C6BFFD09C6CFFCE9866FFC5874CFFBE7835FFBF7937FFC9803AFF784C
      22A3000000000000000000000000000000000000000000000000000000000000
      00000000000000000000040301051B1209233E29144F654220828C5C2DB5AC71
      37E0C3803EFCCD8741FFCE8741FFC9843FFFC5813DFFC17C38FFC07B38FFC07B
      36FFC07C38FFC58547FFC78B50FFC78A4FFFBF7B37FFC07B39FFC9813CFF412A
      135C000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000604
      020720150A28482F175C774F269A9B6732CAB7793AEFC8843FFFCE8841FFCD87
      40FFC9833FFFC47F3CFFC17D39FFC17C39FFC17E3BFFC37E3CFFBB7939F7160E
      0723000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000100B05142E1E0F3B54381B6D7C52
      28A1A06A33D0BA7B3BF3C98540FFCE8841FFCC8640FFCF8841FF9E6731D00000
      0002000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000001010102130D061934221142593B1D7482562AA9AF7338E36B46228C0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000010101021810081F160E071A0000
      000000000000000000000000000000000000000000000000000000000000FFF7
      FFFFFFE1FFFFFF007FFFFF000FFFFF0001FFFE00000FFE000001FE000003FE00
      0003FE000003FC000007FC000007F8000007F8000007F000000FF000000FE000
      000FE000000FC000001FE000001FF000001FF000001FF000003FF000003FE000
      003FE000003FE000007FE000007FFF00007FFFF8007FFFFF80FFFFFFF8FF}
    IconIndex = 0
    Hint = 'Revisando Apartados Pendientes'
    Visibility = [tvVisibleTaskList, tvAutoHide, tvRestoreDbClick]
    Left = 344
    Top = 40
  end
end