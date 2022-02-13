object Simon: TSimon
  Left = 278
  Height = 267
  Top = 237
  Width = 510
  Caption = 'Simon'
  ClientHeight = 267
  ClientWidth = 510
  OnCreate = FormCreate
  LCLVersion = '6.2'
  object Jugar: TButton
    Left = 16
    Height = 25
    Top = 24
    Width = 80
    Caption = 'Jugar'
    OnClick = JugarClick
    TabOrder = 0
  end
  object reiniciar: TButton
    Left = 16
    Height = 25
    Top = 96
    Width = 80
    Caption = 'Reiniciar'
    OnClick = reiniciarClick
    TabOrder = 1
  end
  object Acerca: TButton
    Left = 16
    Height = 25
    Top = 152
    Width = 80
    Caption = 'Acerca'
    TabOrder = 2
  end
  object Salir: TButton
    Left = 16
    Height = 25
    Top = 216
    Width = 78
    Caption = 'Salir'
    OnClick = SalirClick
    TabOrder = 3
  end
  object Rojo: TindLed
    Left = 184
    Height = 56
    Top = 8
    Width = 248
    OnClick = RojoClick
    LedValue = False
    Bevels = <    
      item
        HighlightColor = clBlack
        ShadowColor = clBlack
      end    
      item
        Width = 3
      end    
      item
        Style = bcLowered
      end    
      item
        HighlightColor = clBlack
        ShadowColor = clBlack
      end>
    LedColorOn = clRed
    LedColorOff = clMaroon
    LedColorDisabled = 22963
    ShapeLedColorOn = clGreen
    ShapeLedColorOff = 16384
    ShapeLedColorDisabled = 13416
  end
  object Verde: TindLed
    Left = 184
    Height = 176
    Top = 72
    Width = 64
    OnClick = VerdeClick
    LedValue = False
    Bevels = <    
      item
        HighlightColor = clBlack
        ShadowColor = clBlack
      end    
      item
        Width = 3
      end    
      item
        Style = bcLowered
      end    
      item
        HighlightColor = clBlack
        ShadowColor = clBlack
      end>
    LedColorOn = clLime
    LedColorOff = clGreen
    LedColorDisabled = 22963
    ShapeLedColorOn = clGreen
    ShapeLedColorOff = 16384
    ShapeLedColorDisabled = 13416
  end
  object azul: TindLed
    Left = 440
    Height = 176
    Top = 8
    Width = 63
    OnClick = azulClick
    LedValue = False
    Bevels = <    
      item
        HighlightColor = clBlack
        ShadowColor = clBlack
      end    
      item
        Width = 3
      end    
      item
        Style = bcLowered
      end    
      item
        HighlightColor = clBlack
        ShadowColor = clBlack
      end>
    LedColorOn = clBlue
    LedColorOff = clNavy
    LedColorDisabled = 22963
    ShapeLedColorOn = clGreen
    ShapeLedColorOff = 16384
    ShapeLedColorDisabled = 13416
  end
  object Amarillo: TindLed
    Left = 262
    Height = 57
    Top = 192
    Width = 241
    OnClick = AmarilloClick
    LedValue = False
    Bevels = <    
      item
        HighlightColor = clBlack
        ShadowColor = clBlack
      end    
      item
        Width = 3
      end    
      item
        Style = bcLowered
      end    
      item
        HighlightColor = clBlack
        ShadowColor = clBlack
      end>
    LedColorOn = clYellow
    LedColorOff = clOlive
    LedColorDisabled = 22963
    ShapeLedColorOn = clGreen
    ShapeLedColorOff = 16384
    ShapeLedColorDisabled = 13416
  end
  object Contador: TLEDNumber
    Left = 262
    Height = 102
    Top = 80
    Width = 170
    Caption = 'SIMON SAYS'
    OnClick = ContadorClick
  end
  object nivel1: TButton
    Left = 16
    Height = 24
    Top = 56
    Width = 21
    Caption = '1'
    OnClick = nivel1Click
    TabOrder = 4
    Visible = False
  end
  object nivel2: TButton
    Left = 48
    Height = 25
    Top = 56
    Width = 19
    Caption = '2'
    OnClick = nivel2Click
    TabOrder = 5
    Visible = False
  end
  object nivel3: TButton
    Left = 80
    Height = 25
    Top = 56
    Width = 16
    Caption = '3'
    OnClick = nivel3Click
    TabOrder = 6
    Visible = False
  end
end
