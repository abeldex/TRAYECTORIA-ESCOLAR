   M S B A M L   `   `   `  ���� ^  ZTrayectoria_escolar_wpf, Version=1.0.0.0, Culture=neutral, PublicKeyToken=d37a54016493c9c3A%clr-namespace:Trayectoria_escolar_wpfTrayectoria_escolar_wpf  /    )Trayectoria_escolar_wpf.Paginas.add_prepa   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    U QMaterialDesignThemes.Wpf, Version=2.3.0.823, Culture=neutral, PublicKeyToken=nullX TMaterialDesignThemes.MahApps, Version=0.0.11.0, Culture=neutral, PublicKeyToken=nullHmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     9domain1%clr-namespace:Trayectoria_escolar_wpf       � Title$  Buscar alumno��$��280.754��$	��329�� � WindowStyle$ 
ToolWindow=� � 
ResizeMode$ NoResize=� � ShowInTaskbar .   � WindowStartupLocation$ CenterOwner=�   MaterialDesignBody#���   $��Regular"�$��13(� � Topmost . &   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=�   TextRenderingMode$
 Auto=� � 	Resources 	 �� MergedDictionaries
 �� Source �� 
TargetType  MaterialDesignTextBox �� BasedOn �� Property �� Value  MaterialDesignPasswordBox  MaterialDesignComboBox�� 	 �� $h
 bpack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.ComboBox.xaml?��� $f
 `pack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.Slider.xaml?��� $g
 apack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.TextBox.xaml?�%�   '��       7  'G� -     7  '�� Z     7  �� " ��8   .���  � ��$ 0 8 0 8q��� " G�8   .���  � ��$ 0 8 0 8q��� " ��8   .���  � ��$ Stretch=���  � ��$ 0 8 0 8q�.���  J� RenderTransformOrigin$	 0,0&�$	��288��$	��Top=�$��	0,0,0,-61q�.+�(  "MaterialDesignThemes.Wpf.ColorZone  $��10q�+  %MaterialDesignThemes.Wpf.ShadowAssist   ShadowDepth$ Depth2=�   Mode$ 
PrimaryMid=�$	��Top=����	#FF454C74.��]� .+�'  !MaterialDesignThemes.Wpf.PackIcon  $
��Left=��  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.3.0.823, Culture=neutral, PublicKeyToken=null]]   Kind$ School=�$��24��$��24���� $��Center=�$��Center=�$��18(�Agregar Preparatoria�� -    & "MaterialDesignFloatingActionButton#��[ $��181,175,0,69q�$
��Left=� � ToolTip$ Guardar��$��45��$��45��
��� � ���Z� .��  $ Check=�$��30��$��30���� -   #��[ $��98,175,0,69q�$
��Left=�$ Cancelar��$��45��$��45��
���  ����Z� .��  $ Close=�$��30��$��30��  $
��Left=�$��24��$��24��$��	20,55,0,0q�$	��Top=�$ School=����� *BorderBrush+ �� ElementName$ txt_usuario���� -    ��Name$ txt_nombreprepa��$
��Left=�)  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Nombre Preparatoria��$��53��$��	60,26,0,0q� �� TextWrapping$
 Wrap=�$	��Top=�$	��231��   TextHintingMode$ Animated=�  $
��Left=�$��24��$��24��$��	20,93,0,0q�$	��Top=�$ School=����� *BorderBrush+$ txt_usuario���� -    ��Name$ cmb_regimen��$
��Left=�$��	60,88,0,0q�$	��Top=�$	��231��$ Régimen��.@��� $��Pública��
 � Tag$ Pública���� $��Privada��$ Privada��  $
��Left=�$��24��$��24��$��
20,136,0,0q�$	��Top=�$ School=����� *BorderBrush+$ txt_usuario���� -   $ cmb_uas��$
��Left=�$��
60,131,0,0q�$	��Top=�$	��231��$ Pertenece a la UAS��.@��� $��Si��$ S���� $��No��$ N��