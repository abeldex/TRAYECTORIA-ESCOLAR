   M S B A M L   `   `   `  ����  Trayectoria_escolar_wpf<    6Trayectoria_escolar_wpf.Paginas.captura_calificaciones   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   U QMaterialDesignThemes.Wpf, Version=2.3.0.823, Culture=neutral, PublicKeyToken=nullX TMaterialDesignThemes.MahApps, Version=0.0.11.0, Culture=neutral, PublicKeyToken=nullHmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes   5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	     � Title$  Capturar Calificaciones��5   	    � Topmost .  $
��1000��69   $
��1087��6G    � 
ResizeMode$ 	CanResize=�6T    � ShowInTaskbar .  � WindowStartupLocation$ CenterOwner=�6�      MaterialDesignBody#���   5   	   $��Regular"�5   	   $��13(�5	   	   &   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=�5
   	      TextRenderingMode$
 Auto=�5   	    � 	Resources 5       �� MergedDictionaries	 �� Source
 �� 
TargetType  MaterialDesignTextBox �� BasedOn �� Property �� Value  MaterialDesignPasswordBox  MaterialDesignComboBox�� 5   
    5      �� 5      $h	 bpack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.ComboBox.xaml?�6%   �� 5      $f	 `pack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.Slider.xaml?�6%   �� 5      $g	 apack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.TextBox.xaml?�6%   %H  '��       7  'G� R     7  '�� �     7  �� 5      "
 ��6   8   .�5      ��  � ��$ 0 8 0 8q�6+   5      �� 5      "
 G�6   8   .�5      ��  � ��$ 0 8 0 8q�6+   5      �� 5      "
 ��6   8   .�5      ��  � ��$ Center=�68   �� 5       � ��$ 0 0 0 0q�6+   5      5      .��5"   
   �� -   5         ��Name$ panel_principal��5"      .+�5#      �� ��. .��5$      � $	��Top=�6   $��0,0,0,0q�6+   .+�5&      �� -   5         ��Name$ image��5&      $)��#../Resources/images/banner_acta.png��6'   $
��None=�6T   $
��Left=�6c   $	��181��6~   $��
0,51,0,-78q�6�   $	��Top=�6�   $
��1026��6�   (  "MaterialDesignThemes.Wpf.ColorZone  5)   
   $��10q�6#   +  %MaterialDesignThemes.Wpf.ShadowAssist   ShadowDepth$ Depth2=�60      Mode$ 
PrimaryMid=�5*   -   $	��Top=�6?   ���	#FF454C74.��5+      ]� .+�5,      '  !MaterialDesignThemes.Wpf.PackIcon  $
��Left=�6*   �  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.3.0.823, Culture=neutral, PublicKeyToken=null]]   Kind$ Numeric=�6@   $��24��6O   $��24��6[   �� 5-      $��Center=�6   $��Center=�69   $��18(�6T   �� 6c   $�Capturar Calificaciones��6g   6�   5.      5/      �� 51      -   5         & "MaterialDesignFloatingActionButton#��[ 51      $��	0,70,10,0q�52   !   $��Right=�64   $	��Top=�6P    � ToolTip$ Mostrar Alumnos��53   !   $��48��6;   $��48��6G    J� RenderTransformOrigin$ 
0.444,2.25&�6R   .��54   
     $ ViewList=�6"   $��24��62   $��24��6>   55      �� 57   
   -   5         ��Name$ combo_carrera��57      $
��Left=�6*   $��221,226,0,-88q�6E   $	��Top=�6\   $	��403��6t   $��28��6�   $��Arial)�6�   $��15(�6�   $
��Bold"�6�   
���   �$ Display=�6�   
������� � Cursor$
 Hand��6  .@�58      �� $ ��CIENCIAS DE LA TIERRA T.C.��6   
 � Tag$ 0��6@   �� 59      $,��&LICENCIATURA EN INGENIERÍA GEODÉSICA��6   $ 1��6J   �� 5:      $,��&LICENCIATURA EN INGENIERÍA GEOMÁTICA��6   $ 2��6J   �� 5;      $!��LICENCIATURA EN ASTRONOMÍA��6   $ 3��6@   5<      �� 5=   
   -   5        $ combo_materia��5=      $
��Left=�6*   $��221,257,0,-84q�6E   $	��Top=�6\   $	��573��6t   $��28��6�   $��Arial)�6�   $��15(�6�   $
��Bold"�6�   
���   �$ Display=�6�   $
 Hand��6�   �� 5>   
   -   5        $ combo_profesor��5>      $
��Left=�6+   $��221,289,0,-116q�6F   $	��Top=�6^   $	��403��6v   $��28��6�   $��Arial)�6�   $��15(�6�   $
��Bold"�6�   
���   �$ Display=�6�   $
 Hand��6�   �� 5?   
   -   5         ��Name$ 
label_Copy��5?      $��CARRERA:��6$   $
��Left=�67   $��39,232,0,-105q�6R   $	��Top=�6i   $��Arial)�6�   $��15(�6�   ���	#000000006�   �� 5@   
   -   5        $ label_Copy1��5@      $��MATERIA:��6%   $
��Left=�68   $��39,261,0,-87q�6S   $	��Top=�6i   $��Arial)�6�   $��15(�6�   ���	#000000006�   �� 5A   
   -	   5        $ label_Copy2��5A      $��	PROFESOR:��6%   $
��Left=�69   $��39,291,0,-117q�6T   $	��Top=�6k   $��Arial)�6�   $��15(�6�   ���	#000000006�   �� 5B   
   -
   5        $ label_Copy3��5B      $��NUMERO DE CUENTA��6%   $
��Left=�6@   $��39,322,0,-148q�6[   $	��Top=�6r   $��Arial)�6�   $��15(�6�   $
��Bold"�6�   
���   �6�   �� 5C   
   -   5        $ label_Copy4��5C      $%��N O M B R E  D E L  A L U M N O��6%   $
��Left=�6O   $��321,322,0,-148q�6j   $	��Top=�6�   $��Arial)�6�   $��15(�6�   $
��Bold"�6�   
���   �6�   �� 5D   
   -   5        $ label_Copy5��5D      $��CALIFICACIÓN��6%   $
��Left=�6<   $��677,322,0,-148q�6W   $	��Top=�6o   $��Arial)�6�   $��15(�6�   $
��Bold"�6�   
���   �6�   �� 5E   
   -   5        $ label_Copy6��5E      $��AGREGAR��6%   $
��Left=�67   $��921,322,0,-131q�6R   $	��Top=�6j   $��Arial)�6�   $��15(�6�   $
��Bold"�6�   
���   �6�   �� 5F   
   -   5         ��Name$ 	txt_folio��5F      $
��Left=�6%   $��33��6@   $��917,170,0,-2q�6L    �� TextWrapping$
 Wrap=�6b   $��00000000��6v   $	��Top=�6�   $	��134��6�   $��Arial)�6�   $��21(�6�   $
��Bold"�6�   
���  �� �� SelectionBrush
 �  ��6�   �� 5G   
   -   5        $ label_Copy7��5G      $��PERIODO:��6%   $
��Left=�68   $��842,232,0,-58q�6S   $	��Top=�6j   $��Arial)�6�   $��15(�6�   ���	#000000006�   �� 5H   
   -   5        $ label_Copy8��5H      $��GRUPO:��6%   $
��Left=�66   $��842,261,0,-87q�6Q   $	��Top=�6h   $��Arial)�6�   $��15(�6�   ���	#000000006�   �� 5I   
   -   5        $ label_Copy9��5I      $��FECHA:��6%   $
��Left=�66   $��842,291,0,-117q�6Q   $	��Top=�6i   $��Arial)�6�   $��15(�6�   ���	#000000006�   �� 5J   
   -   5        $ txt_periodo��5J      $
��Left=�6'   $��28��6B   $��943,226,0,-53q�6N   $
 Wrap=�6e   $��1��6y    �� 	MaxLength$ 1��6�   $	��Top=�6�   $	��108��6�   $��Arial)�6�   $��16(�6�   $
��Bold"�6�   
���   �
 �  ��6  �� 5K   
   -   5        $ 	txt_grupo��5K      $
��Left=�6%   $��28��6@   $��943,257,0,-84q�6L   $
 Wrap=�6c   $��1��6w   $ 1��6�   $	��Top=�6�   $	��108��6�   $��Arial)�6�   $��16(�6�   $
��Bold"�6�   
���   �
 �  ��6�   (  "System.Windows.Controls.DatePicker  5L   
   -   5          Name$ 	txt_fecha��5L      $
��Left=�6(   $��28��6C   $��943,289,0,-116q�6O   $	��Top=�6g   $	��108��6   $��Arial)�6�   $��16(�6�   $
��Bold"�6�   
���   �6�   &   System.Windows.Controls.DataGrid  5M   
   -   5          Name$ 
dgvAlumnos��5M   ,      HeadersVisibility$
 None=�6   $��	0 350 0 0q�6@       AutoGenerateColumns  .  $	��350��6p   $��Arial)�6}   $��13(�6�   !   EnableRowVirtualization! .  
����������	#89C1C1C1" � ContextMenu" 5N      �� 5O      .@�5P      m� -   5        $��Editar Alumno��5P      # m� Icon# 5Q        5R      $ Pencil=�66   $��16��6D   $��16��6P   5T      �� 5U      6"   m� 5V      -   5        $��Estado��5V      # 5W        5X      $ AccountAlert=�66   $��16��6J   $��16��6V   5Z      5[      $   Columns$ 5^      0  *System.Windows.Controls.DataGridTextColumn  5_      ,	  &System.Windows.Controls.DataGridColumn% 	  Header$% NUMERO DE CUENTA��6   & 	  
IsReadOnly& . ' 	  Width5
  /System.Windows.Controls.DataGridLengthConverter$	' 170
 6f   1  +System.Windows.Controls.DataGridBoundColumn(   Binding( 69   �� *CUENTA+6f     5`      $%% N O M B R E  D E L  A L U M N O��6%   & . $	' 460
 6{   ( 6N   �� *NOMBRE+6{     5a      $% CALIFICACION��6%   & . $	' 150
 6M   )   
FontWeight$
) Bold"�6Y   *   FontSize$* 14Q�6k   +   ElementStyle+ 5b      �� 5c      "
 ��6   .�5d      ��  � ��$ Center=�6@   5e      5g        5h      $% 	CAL_LETRA��6%   & . $	' 100
 6J     5i      $% AGREGAR��6%   & .  $' 80
 6I   + 5j      �� 5k      "
 ��6   .�5l      ��  � ��$ Center=�6@   �� 5m       � ��
 �����6G   5n      5p        5q      $% Turno��6%   ,   
Foreground
, �����& . $	' 170
 6s   ( 6G   �� *turno+6s   -   RowStyle- 5s      �� 5t      )  #System.Windows.Controls.DataGridRow"
  6   . �� Triggers. 5u      �� 5v      / �� Binding/ 6"   �� *baja+0 �� Value0 True6;   .a�5w      ��  � ��
 �  ��6E   5x      �� 5y      / 6"   �� *
desertor+0 True6?   .a�5z      ��  � ��
 �� ��6H   5{      5}      5      �� 5�   
   -   5        $ label_Copy10��5�      $��COHORTE:��6&   $
��Left=�69   $��842,143,0,0q�6T   $	��Top=�6i   $��Arial)�6�   $��15(�6�   ���	#000000006�   �� 5�   
   -   5        $ txt_cohorte��5�      $
��Left=�6'   $��28��6B   $��943,137,0,0q�6N   $
 Wrap=�6c   $��	0000-0000��6w   $ 9��6�   $	��Top=�6�   $	��108��6�   $��Arial)�6�   $��16(�6�   $
��Bold"�6�   
���   �
 �  ��6   �� 5�   
   -   5        #��[ 5�      $��	0,70,65,0q�5�   
   $��Right=�6   $	��Top=�69   
��� � �$ Guardar��5�   
   $��48��6   $��48��6(   $ 
0.444,2.25&�63   .��5�        $ Floppy=�6#   $��24��61   $��24��6=   5�      �� 5�   
   -   5        #��[ 5�      $��
0,70,127,0q�5�      $��Right=�6!   $	��Top=�6=   
��� ���
�������$ Revisar��5�      $��48��6   $��48��6+   $ 
0.444,2.25&�66   .��5�        $ AccountAlert=�6&   $��24��6:   $��24��6F   5�      �� 5�   
   -   5        1 ��Name$1 chk_complementaria��5�      $��COMPLEMENTARIA��6/   $
��Left=�6H   $��611,165,0,0q�6c   $	��Top=�6x   $	��215��6�   $��Arial)�6�   $
��Bold"�6�   $��20(�6�   
���   �6�   5�      5�      5�      5�      