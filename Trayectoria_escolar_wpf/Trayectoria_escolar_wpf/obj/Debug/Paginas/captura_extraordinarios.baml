   M S B A M L   `   `   `  ����U  QMahApps.Metro, Version=1.5.0.23, Culture=neutral, PublicKeyToken=f4fb5a3c4d1e5b4fV;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.MetroMahApps.Metro.Controls  5   	   Q MWPFTextBoxAutoComplete, Version=1.0.0.2, Culture=neutral, PublicKeyToken=null_Dclr-namespace:WPFTextBoxAutoComplete;assembly=WPFTextBoxAutoCompleteWPFTextBoxAutoComplete 5   	   E ADragablz, Version=0.0.3.197, Culture=neutral, PublicKeyToken=null5(clr-namespace:Dragablz;assembly=DragablzDragablz 5   	   G1clr-namespace:Dragablz.Dockablz;assembly=DragablzDragablz.Dockablz 5	   	    Trayectoria_escolar_wpf=   7Trayectoria_escolar_wpf.Paginas.captura_extraordinarios   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   U QMaterialDesignThemes.Wpf, Version=2.3.0.823, Culture=neutral, PublicKeyToken=nullX TMaterialDesignThemes.MahApps, Version=0.0.11.0, Culture=neutral, PublicKeyToken=nullHmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes   5   	   R	 NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml  	   5   	   PControls;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.Metro  	   5   	   Z	behaviorsDclr-namespace:WPFTextBoxAutoComplete;assembly=WPFTextBoxAutoComplete  	   5   	   =dragablz(clr-namespace:Dragablz;assembly=Dragablz  	   5   	   Fdockablz1clr-namespace:Dragablz.Dockablz;assembly=Dragablz  	   5	   	   (   "MahApps.Metro.Controls.MetroWindow    WindowTransitionsEnabled  .     AccentColorBrush   	GlowBrush# �   5   	    � Title$ Capturar Calificaciones��5   	    � Topmost .  $
��1000��69   $
��1087��6G    � 
ResizeMode$ 	CanResize=�6T    � ShowInTaskbar .  � WindowStartupLocation$ CenterOwner=�6�     MaterialDesignBody#���  5   	   $��Regular"�5   	   $��13(�5   	      ShowTitleBar .    ShowIconOnTitleBar . &   System.Windows.Media.TextOptions	   TextFormattingMode$	 Ideal=�5   	   
   TextRenderingMode$

 Auto=�5   	   $X��Rpack://application:,,,/MaterialDesignThemes.Wpf;component/Resources/Roboto/#Roboto)�5   	    � Icon$I C/Trayectoria_escolar_wpf;component/Resources/images/trayectoria.png��6i    � 	Resources 5       �� MergedDictionaries �� Source �� 
TargetType  MaterialDesignTextBox �� BasedOn �� Property �� Value  MaterialDesignPasswordBox  MaterialDesignComboBox�� 5   
    5      �� 5      $h bpack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.ComboBox.xaml?�6%   �� 5      $f `pack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.Slider.xaml?�6%   �� 5      $g apack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.TextBox.xaml?�6%   %H  '��       7  'G� R     7  '�� �     7  �� 5      " ��6   8   .�5      ��  � ��$ 0 8 0 8q�6+   5       �� 5!      " G�6   8   .�5"      ��  � ��$ 0 8 0 8q�6+   5#      �� 5$      " ��6   8   .�5%      ��  � ��$ Center=�68   �� 5&       � ��$ 0 0 0 0q�6+   5'      5(      .��5,      �� ��. .��5-   
   �� -   5         ��Name$ panel_principal��5-      .+�52      � $	��Top=�6   $��0,0,0,0q�6+   .+�53   
   �� -   5         ��Name$ image��53      $-��'../Resources/images/cabecera_extras.png��6   $
��Fill=�6P   $
��Left=�6_   $	��206��6z   $��0,44,-124,0q�6�   $	��Top=�6�   $
��1186��6�   (  "MaterialDesignThemes.Wpf.ColorZone  56   
   $��10q�6#   +  %MaterialDesignThemes.Wpf.ShadowAssist   ShadowDepth$ Depth2=�60      Mode$ 
PrimaryMid=�57   -   $	��Top=�6?   ���	#FF454C74.��58      ]� .+�59      '  !MaterialDesignThemes.Wpf.PackIcon  $
��Left=�6*   �  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.3.0.823, Culture=neutral, PublicKeyToken=null]]   Kind$ Numeric=�6@   $��24��6O   $��24��6[   �� 5:      $��Center=�6   $��Center=�69   $��18(�6T   �� 6c   $�Capturar Calificaciones��6g   6�   5;      5<      �� 5>      -   5         & "MaterialDesignFloatingActionButton#��[ 5>      $��	0,70,10,0q�5?   !   $��Right=�64   $	��Top=�6P    � ToolTip$ Mostrar Alumnos��5@   !   $��48��6;   $��48��6G    J� RenderTransformOrigin$ 
0.444,2.25&�6R   .��5A   
     $ ViewList=�6"   $��24��62   $��24��6>   5B      �� 5D   
   -   5         ��Name$ combo_carrera��5D      $
��Left=�6*   $��221,226,0,-88q�6E   $	��Top=�6\   $	��403��6t   $��28��6�   $��Arial)�6�   $��15(�6�   $
��Bold"�6�   
���   �$	 Display=�6�   
������� � Cursor$
 Hand��6  .@�5E      �� $ ��CIENCIAS DE LA TIERRA T.C.��6   
 � Tag$ 0��6@   �� 5F      $,��&LICENCIATURA EN INGENIERÍA GEODÉSICA��6   $ 1��6J   �� 5G      $,��&LICENCIATURA EN INGENIERÍA GEOMÁTICA��6   $ 2��6J   �� 5H      $!��LICENCIATURA EN ASTRONOMÍA��6   $ 3��6@   5I      �� 5J   
   -   5        $ combo_materia��5J      $
��Left=�6*   $��221,257,0,-84q�6E   $	��Top=�6\   $	��573��6t   $��28��6�   $��Arial)�6�   $��15(�6�   $
��Bold"�6�   
���   �$	 Display=�6�   $
 Hand��6�   �� 5K   
   -   5        $ combo_profesor��5K      $
��Left=�6+   $��221,289,0,-116q�6F   $	��Top=�6^   $	��403��6v   $��28��6�   $��Arial)�6�   $��15(�6�   $
��Bold"�6�   
���   �$	 Display=�6�   $
 Hand��6�   �� 5L   
   -   5         ��Name$ 
label_Copy��5L      $��CARRERA:��6$   $
��Left=�67   $��39,232,0,-105q�6R   $	��Top=�6i   $��Arial)�6�   $��15(�6�   ���	#000000006�   �� 5M   
   -   5        $ label_Copy1��5M      $��MATERIA:��6%   $
��Left=�68   $��39,261,0,-87q�6S   $	��Top=�6i   $��Arial)�6�   $��15(�6�   ���	#000000006�   �� 5N   
   -	   5        $ label_Copy2��5N      $��	PROFESOR:��6%   $
��Left=�69   $��39,291,0,-117q�6T   $	��Top=�6k   $��Arial)�6�   $��15(�6�   ���	#000000006�   �� 5O   
   -
   5        $ label_Copy3��5O      $��NUMERO DE CUENTA��6%   $
��Left=�6@   $��39,322,0,-148q�6[   $	��Top=�6r   $��Arial)�6�   $��15(�6�   $
��Bold"�6�   
���   �6�   �� 5P   
   -   5        $ label_Copy4��5P      $%��N O M B R E  D E L  A L U M N O��6%   $
��Left=�6O   $��321,322,0,-148q�6j   $	��Top=�6�   $��Arial)�6�   $��15(�6�   $
��Bold"�6�   
���   �6�   �� 5Q   
   -   5        $ label_Copy5��5Q      $��CALIFICACIÓN��6%   $
��Left=�6<   $��677,322,0,-148q�6W   $	��Top=�6o   $��Arial)�6�   $��15(�6�   $
��Bold"�6�   
���   �6�   �� 5R   
   -   5        $ label_Copy6��5R      $��AGREGAR��6%   $
��Left=�67   $��921,322,0,-131q�6R   $	��Top=�6j   $��Arial)�6�   $��15(�6�   $
��Bold"�6�   
���   �6�   �� 5S   
   -   5         ��Name$ 	txt_folio��5S      $
��Left=�6%   $��33��6@   $��917,170,0,-2q�6L    �� TextWrapping$
 Wrap=�6b   $��00000000��6v   $	��Top=�6�   $	��134��6�   $��Arial)�6�   $��21(�6�   $
��Bold"�6�   
���  ��  �� SelectionBrush
  �  ��6�   �� 5T   
   -   5        $ label_Copy7��5T      $��PERIODO:��6%   $
��Left=�68   $��842,232,0,-58q�6S   $	��Top=�6j   $��Arial)�6�   $��15(�6�   ���	#000000006�   �� 5U   
   -   5        $ label_Copy8��5U      $��GRUPO:��6%   $
��Left=�66   $��842,261,0,-87q�6Q   $	��Top=�6h   $��Arial)�6�   $��15(�6�   ���	#000000006�   �� 5V   
   -   5        $ label_Copy9��5V      $��FECHA:��6%   $
��Left=�66   $��842,291,0,-117q�6Q   $	��Top=�6i   $��Arial)�6�   $��15(�6�   ���	#000000006�   �� 5W   
   -   5        $ txt_periodo��5W      $
��Left=�6'   $��28��6B   $��943,226,0,-53q�6N   $
 Wrap=�6e   $��1��6y   ! �� 	MaxLength$! 1��6�   $	��Top=�6�   $	��108��6�   $��Arial)�6�   $��16(�6�   $
��Bold"�6�   
���   �
  �  ��6  �� 5X   
   -   5        $ 	txt_grupo��5X      $
��Left=�6%   $��28��6@   $��943,257,0,-84q�6L   $
 Wrap=�6c   $��1��6w   $! 1��6�   $	��Top=�6�   $	��108��6�   $��Arial)�6�   $��16(�6�   $
��Bold"�6�   
���   �
  �  ��6  (  "System.Windows.Controls.DatePicker  5Y   
   -   5        "  Name$" 	txt_fecha��5Y      $
��Left=�6(   $��28��6C   $��943,289,0,-116q�6O   $	��Top=�6g   $	��108��6   $��Arial)�6�   $��16(�6�   $
��Bold"�6�   
���   �6�   &   System.Windows.Controls.DataGrid  5Z   
   -   5        #  Name$# 
dgvAlumnos��5Z   B   $   HeadersVisibility$
$ None=�6   %   CanUserAddRows% . $��39,354,13,-536q�6V   &   AutoGenerateColumns& .  $	��500��6�   $��Arial)�6�   $��13(�6�   '   EnableRowVirtualization' .  
����������	#89C1C1C1( � ContextMenu( 5[      �� 5\      .@�5]      m� -   5        $��Editar Alumno��5]      ) m� Icon) 5^        5_      $ Pencil=�66   $��16��6D   $��16��6P   5a      �� 5b      m� 5c      -   5        $��Estado��5c      ) 5d        5e      $ AccountAlert=�66   $��16��6J   $��16��6V   5g      5h      *   Columns* 5k      0	  *System.Windows.Controls.DataGridTextColumn	  5l      ,
  &System.Windows.Controls.DataGridColumn+ 
  Header$+ NUMERO DE CUENTA��6   , 
  Width5  /System.Windows.Controls.DataGridLengthConverter$	, 170 6T   1  +System.Windows.Controls.DataGridBoundColumn-   Binding- 69   �� *cuenta+6T   	  5m      $%+ N O M B R E  D E L  A L U M N O��6%   $	, 460 6j   - 6N   �� *nombre+6j   	  5n      $+ CALIFICACION��6%   . 
  
IsReadOnly. . $	, 150 6M   / 	  
FontWeight$
/ Bold"�6Y   0 	  FontSize$0 14Q�6k   1   ElementStyle1 5o      �� 5p      " ��6   .�5q      ��  � ��$ Center=�6@   5r      5t      	  5u      $+ 	CAL_LETRA��6%   . . $	, 100 6J   	  5v      $+ AGREGAR��6%   . .  $, 80 6I   1 5w      �� 5x      " ��6   .�5y      ��  � ��$ Center=�6@   �� 5z       � ��
 �����67   5{      5}      	  5~      $+ Turno��6%   2 	  
Foreground
2 �����. . $	, 170 6t   - 6F   �� *	cohorte+6t   3   RowStyle3 5�      �� 5�      )  #System.Windows.Controls.DataGridRow"  6   4 �� Triggers4 5�      �� 5�      5 �� Binding5 6"   �� *baja+6 �� Value6 True6;   .a�5�      ��  � ��
 �  ��67   5�      �� 5�      5 6"   �� *
desertor+6 True6?   .a�5�      ��  � ��
 �� ��67   5�      5�      5�      �� 5�   
   -   5        $ label_Copy10��5�      $��COHORTE:��6&   $
��Left=�69   $��855,138,0,0q�6T   $	��Top=�6i   $��Arial)�6�   $��15(�6�   ���	#000000006�   �� 5�   
   -   5        $ txt_cohorte��5�      $
��Left=�6'   $��28��6B   $��949,137,0,0q�6N   $
 Wrap=�6c   $��	0000-0000��6w   $! 9��6�   $	��Top=�6�   $	��108��6�   $��Arial)�6�   $��16(�6�   $
��Bold"�6�   
���   �
  �  ��6   �� 5�   
   -   5        #��[ 5�      $��	0,70,65,0q�5�   
   $��Right=�6   $	��Top=�69   
��� � �$ Guardar��5�   
   $��48��6   $��48��6(   $ 
0.444,2.25&�63   .��5�        $ Floppy=�6#   $��24��61   $��24��6=   5�      �� 5�   
   -   5        #��[ 5�      $��
0,70,127,0q�5�      $��Right=�6!   $	��Top=�6=   
��� ���
�������$ Revisar��5�      $��48��6   $��48��6+   $ 
0.444,2.25&�66   .��5�        $ AccountAlert=�6&   $��24��6:   $��24��6F   5�      �� 5�   
   -   5        7 ��Name$7 chk_regularizacion��5�      $��REGULARIZACIÓN��6/   $
��Left=�6H   $��630,170,0,0q�6c   $	��Top=�6x   $	��202��6�   $��Arial)�6�   $��20(�6�   $
��Bold"�6�   5�      5�      5�      5�      