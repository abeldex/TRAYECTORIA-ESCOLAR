   M S B A M L   `   `   `  ����  Trayectoria_escolar_wpf3    -Trayectoria_escolar_wpf.Paginas.editar_alumno   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   U QMaterialDesignThemes.Wpf, Version=2.3.0.823, Culture=neutral, PublicKeyToken=nullX TMaterialDesignThemes.MahApps, Version=0.0.11.0, Culture=neutral, PublicKeyToken=nullHmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes   5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	     � Title$  Buscar alumno��5   	   $	��400��6   $	��815��6,    � WindowStyle$ 
ToolWindow=�68    � 
ResizeMode$ NoResize=�6R    � ShowInTaskbar .   � WindowStartupLocation$ CenterOwner=�6~      MaterialDesignBody#���   5   	   $��Regular"�5   	   $��13(�5	   	    � Topmost . &   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=�5   	      TextRenderingMode$
 Auto=�5   	    � 	Resources 5      	 �� MergedDictionaries
 �� Source �� 
TargetType  MaterialDesignTextBox �� BasedOn �� Property �� Value  MaterialDesignPasswordBox  MaterialDesignComboBox�� 5   
   	 5      �� 5      $h
 bpack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.ComboBox.xaml?�6%   �� 5      $f
 `pack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.Slider.xaml?�6%   �� 5      $g
 apack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.TextBox.xaml?�6%   %I  '��       7  'G� R     7  '�� �     7  �� 5      " ��6   8   .�5      ��  � ��$ 0 8 0 8q�6+   5      �� 5      " G�6   8   .�5      ��  � ��$ 0 8 0 8q�6+   5      �� 5      " ��6   8   .�5      ��  � ��$ Stretch=�68   �� 5       � ��$ 0 8 0 8q�6+   5      5      .��5!      �  J� RenderTransformOrigin$ 0.537,0.268&�6   $	��380��6/   $	��Top=�6<   $��0,0,0,0q�6T    � RowDefinitions 5"   
   �� 5#      $	��50* �6   �� 5$      $
��307* �6   .+�5&   
   (  "MaterialDesignThemes.Wpf.ColorZone  $��10q�6#   +  %MaterialDesignThemes.Wpf.ShadowAssist   ShadowDepth$ Depth2=�60      Mode$ 
PrimaryMid=�5'   -   $	��Top=�6?   ���	#FF454C74.��5(      ]� .+�5)      '  !MaterialDesignThemes.Wpf.PackIcon  $
��Left=�6*   �  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.3.0.823, Culture=neutral, PublicKeyToken=null]]   Kind$ Pencil=�6@   $��24��6N   $��24��6Z   �� 5*      $��Center=�6   $��Center=�69   $��18(�6T   Editar Alumno6q   5+      5,        5/   
   $
��Left=�6#   $��24��6>   $��24��6J   $��	15,42,0,0q�6U   $	��Top=�6h   $ Bookmark=�6�   $��1��6�   ��6�   �� *BorderBrush+ �� ElementName$ txt_usuario��6�   �� 50   
   -   5         ��Name$ txt_cuenta_editar��50      $
��Left=�6-   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Número de cuenta��6H   $��46��6z   $��	53,20,0,0q�6�    �� TextWrapping$
 Wrap=�6�   $	��Top=�6�   $	��126��6�    �� 	MaxLength$ 8��6�      TextHintingMode$ Animated=�6�   $��1��6    51   
   $
��Left=�6#   $��24��6>   $��24��6J   $��
231,42,0,0q�6U   $	��Top=�6i   $ Account=�6�   $��1��6�   ��6�   �� *BorderBrush+$ txt_usuario��6�   �� 52   
   -   5        $ txt_nombre_editar��52      $
��Left=�6-   $ Nombre Completo��6H   $��46��6y   $��
269,20,0,0q�6�   $
 Wrap=�6�   $	��Top=�6�   $	��512��6�   $ Animated=�6�   $��1��6�   � 53   
   $
��Left=�6   $	��100��6*   $��-33,109,0,0q�67   $��1��6L   $	��Top=�6Y   $	��100��6q   �� 54   
   -   5        $ txt_cohorte��54      $
��Left=�6'   $ Cohorte��6B   $��46��6k   $��	53,92,0,0q�6w   $
 Wrap=�6�   $	��Top=�6�   $	��126��6�   $ 9��6�   $ Animated=�6�   $��1��6�     55   
   $
��Left=�6#   $��24��6>   $��24��6J   $��
15,116,0,0q�6U   $	��Top=�6i   $ Calendar=�6�   $��1��6�   ��6�   �� *BorderBrush+$ txt_usuario��6�   �� 56   
   -   5         ��Name$ btn_guardar��56      $��
Actualizar��6&   $
��Left=�6;   $��661,258,0,0q�6V   $��1��6k   $	��Top=�6x   $	��120��6�   $��42��6�   6�   �� 57   
   -   5        $ btn_cancelar��57      $��Cancelar��6'   $
��Left=�6:   $��516,258,0,0q�6U   $��1��6j   $	��Top=�6w   $	��120��6�   $��42��6�   ���	#FFE2E2E2���	#DD646464���	#FFF0F0F06�   �� 58   
   -   5        $ 	txt_grupo��58      $
��Left=�6%   $ Grupo��6@   $��46��6g   $��
269,92,0,0q�6s   $
 Wrap=�6�   $	��Top=�6�   $	��126��6�   $ 1��6�   $ Animated=�6�   $��1��6�   �� 59   
   -   5        $ txt_periodo��59      $
��Left=�6'   $ Periodo��6B   $��46��6k   $��
476,92,0,0q�6w   $
 Wrap=�6�   $	��Top=�6�   $	��126��6�   $ 1��6�   $ Animated=�6�   $��1��6�   �� 5:   
   -   5        $ 	txt_turno��5:      $
��Left=�6%   $ Turno��6@   $��46��6g   $��
655,94,0,0q�6s   $
 Wrap=�6�   $	��Top=�6�   $	��126��6�   $ Animated=�6�   $��1��6�     5;   
   $
��Left=�6#   $��24��6>   $��24��6J   $��231,116,0,0q�6U   $	��Top=�6j   $ AccountOutline=�6�   $��1��6�   ��6�   �� *BorderBrush+$ txt_usuario��6�     5<   
   $
��Left=�6#   $��24��6>   $��24��6J   $��437,116,0,0q�6U   $	��Top=�6j   $ 	Timelapse=�6�   $��1��6�   ��6�   �� *BorderBrush+$ txt_usuario��6�     5=   
   $
��Left=�6#   $��24��6>   $��24��6J   $��620,116,0,0q�6U   $	��Top=�6j   $ Timer=�6�   $��1��6�   ��6�   �� *BorderBrush+$ txt_usuario��6�   �� 5>   
   -	   5         ��Name$ label��5>      $��Nombre completo��6   $
��Left=�69   $��
269,71,0,0q�6T   $��1��6h   $	��Top=�6u   $	��126��6�   $��21��6�   $��9(�6�   �� 5?   
   -
   5        $ 
label_Copy��5?      $��Número de cuenta��6$   $
��Left=�6?   $��	53,71,0,0q�6Z   $��1��6m   $	��Top=�6z   $	��126��6�   $��21��6�   $��9(�6�   �� 5@   
   -   5        $ label_Copy1��5@      $��Cohorte��6%   $
��Left=�67   $��
50,138,0,0q�6R   $��1��6f   $	��Top=�6s   $	��126��6�   $��21��6�   $��9(�6�   �� 5A   
   -   5        $ label_Copy2��5A      $��Grupo��6%   $
��Left=�65   $��269,138,0,0q�6P   $��1��6e   $	��Top=�6r   $	��126��6�   $��21��6�   $��9(�6�   �� 5B   
   -   5        $ label_Copy3��5B      $��Periodo��6%   $
��Left=�67   $��476,138,0,0q�6R   $��1��6g   $	��Top=�6t   $	��126��6�   $��21��6�   $��9(�6�   �� 5C   
   -   5        $ label_Copy4��5C      $��Turno��6%   $
��Left=�65   $��655,138,0,0q�6P   $��1��6e   $	��Top=�6r   $	��126��6�   $��21��6�   $��9(�6�     5D   
   $
��Left=�6#   $��24��6>   $��24��6J   $��
15,195,0,0q�6U   $	��Top=�6i   $ Calendar=�6�   $��1��6�   ��6�   �� *BorderBrush+$ txt_usuario��6�   �� 5E   
   -   5        $ txt_carrera��5E      $
��Left=�6'   $ Carrera��6B   $��46��6k   $��
53,168,0,0q�6w   $
 Wrap=�6�   $	��Top=�6�   $	��126��6�   $ 9��6�   $ Animated=�6�   $��1��6�   �� 5F   
   -   5        $ label_Copy5��5F      $��Carrera��6%   $
��Left=�67   $��
50,214,0,0q�6R   $��1��6f   $	��Top=�6s   $	��126��6�   $��21��6�   $��9(�6�   �� 5G   
   -   5        $ label_Copy6��5G      $��0 = Tronco Comun��6%   $
��Left=�6@   $��
50,238,0,0q�6[   $��1��6o   $	��Top=�6|   $	��126��6�   $��21��6�   $��9(�6�   �� 5H   
   -   5        $ label_Copy7��5H      $��1 = Geodesia��6%   $
��Left=�6<   $��
50,253,0,0q�6W   $��1��6k   $	��Top=�6x   $	��126��6�   $��21��6�   $��9(�6�   �� 5I   
   -   5        $ label_Copy8��5I      $��2 = Geomatica��6%   $
��Left=�6=   $��
50,269,0,0q�6X   $��1��6l   $	��Top=�6y   $	��126��6�   $��21��6�   $��9(�6�   �� 5J   
   -   5        $ label_Copy9��5J      $��3 = Astronomia��6%   $
��Left=�6>   $��
50,285,0,0q�6Y   $��1��6m   $	��Top=�6z   $	��126��6�   $��21��6�   $��9(�6�   5M      5N      