   M S B A M L   `   `   `  ����   Trayectoria_escolar_wpf3    -Trayectoria_escolar_wpf.Paginas.editar_alumno   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    U QMaterialDesignThemes.Wpf, Version=2.3.0.823, Culture=neutral, PublicKeyToken=nullX TMaterialDesignThemes.MahApps, Version=0.0.11.0, Culture=neutral, PublicKeyToken=nullHmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml       � Title$  Buscar alumno��$	��400��$	��815�� � WindowStyle$ 
ToolWindow=� � 
ResizeMode$ NoResize=� � ShowInTaskbar .   � WindowStartupLocation$ CenterOwner=�   MaterialDesignBody#���   $��Regular"�$��13(� � Topmost . &   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=�   TextRenderingMode$
 Auto=� � 	Resources 	 �� MergedDictionaries
 �� Source �� 
TargetType  MaterialDesignTextBox �� BasedOn �� Property �� Value  MaterialDesignPasswordBox  MaterialDesignComboBox�� 	 �� $h
 bpack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.ComboBox.xaml?��� $f
 `pack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.Slider.xaml?��� $g
 apack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.TextBox.xaml?�%�   '��       7  'G� -     7  '�� Z     7  �� " ��8   .���  � ��$ 0 8 0 8q��� " G�8   .���  � ��$ 0 8 0 8q��� " ��8   .���  � ��$ Stretch=���  � ��$ 0 8 0 8q�.���  J� RenderTransformOrigin$ 0.537,0.268&�$	��380��$	��Top=�$��0,0,0,0q� � RowDefinitions �� $	��50* ��� $
��307* �.+�(  "MaterialDesignThemes.Wpf.ColorZone  $��10q�+  %MaterialDesignThemes.Wpf.ShadowAssist   ShadowDepth$ Depth2=�   Mode$ 
PrimaryMid=�$	��Top=����	#FF454C74.��]� .+�'  !MaterialDesignThemes.Wpf.PackIcon  $
��Left=��  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.3.0.823, Culture=neutral, PublicKeyToken=null]]   Kind$ Pencil=�$��24��$��24���� $��Center=�$��Center=�$��18(�Editar Alumno  $
��Left=�$��24��$��24��$��	15,42,0,0q�$	��Top=�$ Bookmark=�$��1������ *BorderBrush+ �� ElementName$ txt_usuario���� -    ��Name$ txt_cuenta_editar��$
��Left=�)  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Número de cuenta��$��46��$��	53,20,0,0q� �� TextWrapping$
 Wrap=�$	��Top=�$	��126�� �� 	MaxLength$ 8��   TextHintingMode$ Animated=�$��1��  $
��Left=�$��24��$��24��$��
231,42,0,0q�$	��Top=�$ Account=�$��1������ *BorderBrush+$ txt_usuario���� -   $ txt_nombre_editar��$
��Left=�$ Nombre Completo��$��46��$��
269,20,0,0q�$
 Wrap=�$	��Top=�$	��512��$ Animated=�$��1��� $
��Left=�$	��100��$��-33,109,0,0q�$��1��$	��Top=�$	��100���� -   $ txt_cohorte��$
��Left=�$ Cohorte��$��46��$��	53,92,0,0q�$
 Wrap=�$	��Top=�$	��126��$ 9��$ Animated=�$��1��  $
��Left=�$��24��$��24��$��
15,116,0,0q�$	��Top=�$ Calendar=�$��1������ *BorderBrush+$ txt_usuario���� -    ��Name$ btn_guardar��$��
Actualizar��$
��Left=�$��661,258,0,0q�$��1��$	��Top=�$	��120��$��42���� -   $ btn_cancelar��$��Cancelar��$
��Left=�$��516,258,0,0q�$��1��$	��Top=�$	��120��$��42�����	#FFE2E2E2���	#DD646464���	#FFF0F0F0�� -   $ 	txt_grupo��$
��Left=�$ Grupo��$��46��$��
269,92,0,0q�$
 Wrap=�$	��Top=�$	��126��$ 1��$ Animated=�$��1���� -   $ txt_periodo��$
��Left=�$ Periodo��$��46��$��
476,92,0,0q�$
 Wrap=�$	��Top=�$	��126��$ 1��$ Animated=�$��1���� -   $ 	txt_turno��$
��Left=�$ Turno��$��46��$��
655,94,0,0q�$
 Wrap=�$	��Top=�$	��126��$ Animated=�$��1��  $
��Left=�$��24��$��24��$��231,116,0,0q�$	��Top=�$ AccountOutline=�$��1������ *BorderBrush+$ txt_usuario��  $
��Left=�$��24��$��24��$��437,116,0,0q�$	��Top=�$ 	Timelapse=�$��1������ *BorderBrush+$ txt_usuario��  $
��Left=�$��24��$��24��$��620,116,0,0q�$	��Top=�$ Timer=�$��1������ *BorderBrush+$ txt_usuario���� -	    ��Name$ label��$��Nombre completo��$
��Left=�$��
269,71,0,0q�$��1��$	��Top=�$	��126��$��21��$��9(��� -
   $ 
label_Copy��$��Número de cuenta��$
��Left=�$��	53,71,0,0q�$��1��$	��Top=�$	��126��$��21��$��9(��� -   $ label_Copy1��$��Cohorte��$
��Left=�$��
50,138,0,0q�$��1��$	��Top=�$	��126��$��21��$��9(��� -   $ label_Copy2��$��Grupo��$
��Left=�$��269,138,0,0q�$��1��$	��Top=�$	��126��$��21��$��9(��� -   $ label_Copy3��$��Periodo��$
��Left=�$��476,138,0,0q�$��1��$	��Top=�$	��126��$��21��$��9(��� -   $ label_Copy4��$��Turno��$
��Left=�$��655,138,0,0q�$��1��$	��Top=�$	��126��$��21��$��9(�  $
��Left=�$��24��$��24��$��
15,195,0,0q�$	��Top=�$ Calendar=�$��1������ *BorderBrush+$ txt_usuario���� -   $ txt_carrera��$
��Left=�$ Carrera��$��46��$��
53,168,0,0q�$
 Wrap=�$	��Top=�$	��126��$ 9��$ Animated=�$��1���� -   $ label_Copy5��$��Carrera��$
��Left=�$��
50,214,0,0q�$��1��$	��Top=�$	��126��$��21��$��9(��� -   $ label_Copy6��$��0 = Tronco Comun��$
��Left=�$��
50,238,0,0q�$��1��$	��Top=�$	��126��$��21��$��9(��� -   $ label_Copy7��$��1 = Geodesia��$
��Left=�$��
50,253,0,0q�$��1��$	��Top=�$	��126��$��21��$��9(��� -   $ label_Copy8��$��2 = Geomatica��$
��Left=�$��
50,269,0,0q�$��1��$	��Top=�$	��126��$��21��$��9(��� -   $ label_Copy9��$��3 = Astronomia��$
��Left=�$��
50,285,0,0q�$��1��$	��Top=�$	��126��$��21��$��9(�