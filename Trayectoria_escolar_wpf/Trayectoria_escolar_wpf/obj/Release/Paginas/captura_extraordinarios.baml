   M S B A M L   `   `   `  ���� U  QMahApps.Metro, Version=1.5.0.23, Culture=neutral, PublicKeyToken=f4fb5a3c4d1e5b4fV;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.MetroMahApps.Metro.Controls  Q MWPFTextBoxAutoComplete, Version=1.0.0.2, Culture=neutral, PublicKeyToken=null_Dclr-namespace:WPFTextBoxAutoComplete;assembly=WPFTextBoxAutoCompleteWPFTextBoxAutoComplete E ADragablz, Version=0.0.3.197, Culture=neutral, PublicKeyToken=null5(clr-namespace:Dragablz;assembly=DragablzDragablz G1clr-namespace:Dragablz.Dockablz;assembly=DragablzDragablz.Dockablz  Trayectoria_escolar_wpf=   7Trayectoria_escolar_wpf.Paginas.captura_extraordinarios   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    U QMaterialDesignThemes.Wpf, Version=2.3.0.823, Culture=neutral, PublicKeyToken=nullX TMaterialDesignThemes.MahApps, Version=0.0.11.0, Culture=neutral, PublicKeyToken=nullHmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes   R	 NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml  	   PControls;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.Metro  	   Z	behaviorsDclr-namespace:WPFTextBoxAutoComplete;assembly=WPFTextBoxAutoComplete  	   =dragablz(clr-namespace:Dragablz;assembly=Dragablz  	   Fdockablz1clr-namespace:Dragablz.Dockablz;assembly=Dragablz  	   (   "MahApps.Metro.Controls.MetroWindow    WindowTransitionsEnabled  .     AccentColorBrush   	GlowBrush# �    � Title$ Capturar Calificaciones�� � Topmost .  $
��1000��$
��1087�� � 
ResizeMode$ 	CanResize=� � ShowInTaskbar .  � WindowStartupLocation$ CenterOwner=�  MaterialDesignBody#���  $��Regular"�$��13(�   ShowTitleBar .    ShowIconOnTitleBar . &   System.Windows.Media.TextOptions	   TextFormattingMode$	 Ideal=�
   TextRenderingMode$

 Auto=�$X��Rpack://application:,,,/MaterialDesignThemes.Wpf;component/Resources/Roboto/#Roboto)� � Icon$I C/Trayectoria_escolar_wpf;component/Resources/images/trayectoria.png�� � 	Resources  �� MergedDictionaries �� Source �� 
TargetType  MaterialDesignTextBox �� BasedOn �� Property �� Value  MaterialDesignPasswordBox  MaterialDesignComboBox��  �� $h bpack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.ComboBox.xaml?��� $f `pack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.Slider.xaml?��� $g apack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.TextBox.xaml?�%�   '��       7  'G� -     7  '�� Z     7  �� " ��8   .���  � ��$ 0 8 0 8q��� " G�8   .���  � ��$ 0 8 0 8q��� " ��8   .���  � ��$ Center=���  � ��$ 0 0 0 0q�.���� ��. .���� -    ��Name$ panel_principal��.+�� $	��Top=�$��0,0,0,0q�.+��� -    ��Name$ image��$-��'../Resources/images/cabecera_extras.png��$
��Fill=�$
��Left=�$	��206��$��0,44,-124,0q�$	��Top=�$
��1186��(  "MaterialDesignThemes.Wpf.ColorZone  $��10q�+  %MaterialDesignThemes.Wpf.ShadowAssist   ShadowDepth$ Depth2=�   Mode$ 
PrimaryMid=�$	��Top=����	#FF454C74.��]� .+�'  !MaterialDesignThemes.Wpf.PackIcon  $
��Left=��  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.3.0.823, Culture=neutral, PublicKeyToken=null]]   Kind$ Numeric=�$��24��$��24���� $��Center=�$��Center=�$��18(��� $�Capturar Calificaciones���� -    & "MaterialDesignFloatingActionButton#��[ $��	0,70,10,0q�$��Right=�$	��Top=� � ToolTip$ Mostrar Alumnos��$��48��$��48�� J� RenderTransformOrigin$ 
0.444,2.25&�.��  $ ViewList=�$��24��$��24���� -    ��Name$ combo_carrera��$
��Left=�$��221,226,0,-88q�$	��Top=�$	��403��$��28��$��Arial)�$��15(�$
��Bold"�
���   �$	 Display=�
������� � Cursor$
 Hand��.@��� $ ��CIENCIAS DE LA TIERRA T.C.��
 � Tag$ 0���� $,��&LICENCIATURA EN INGENIERÍA GEODÉSICA��$ 1���� $,��&LICENCIATURA EN INGENIERÍA GEOMÁTICA��$ 2���� $!��LICENCIATURA EN ASTRONOMÍA��$ 3���� -   $ combo_materia��$
��Left=�$��221,257,0,-84q�$	��Top=�$	��573��$��28��$��Arial)�$��15(�$
��Bold"�
���   �$	 Display=�$
 Hand���� -   $ combo_profesor��$
��Left=�$��221,289,0,-116q�$	��Top=�$	��403��$��28��$��Arial)�$��15(�$
��Bold"�
���   �$	 Display=�$
 Hand���� -    ��Name$ 
label_Copy��$��CARRERA:��$
��Left=�$��39,232,0,-105q�$	��Top=�$��Arial)�$��15(����	#00000000�� -   $ label_Copy1��$��MATERIA:��$
��Left=�$��39,261,0,-87q�$	��Top=�$��Arial)�$��15(����	#00000000�� -	   $ label_Copy2��$��	PROFESOR:��$
��Left=�$��39,291,0,-117q�$	��Top=�$��Arial)�$��15(����	#00000000�� -
   $ label_Copy3��$��NUMERO DE CUENTA��$
��Left=�$��39,322,0,-148q�$	��Top=�$��Arial)�$��15(�$
��Bold"�
���   ��� -   $ label_Copy4��$%��N O M B R E  D E L  A L U M N O��$
��Left=�$��321,322,0,-148q�$	��Top=�$��Arial)�$��15(�$
��Bold"�
���   ��� -   $ label_Copy5��$��CALIFICACIÓN��$
��Left=�$��677,322,0,-148q�$	��Top=�$��Arial)�$��15(�$
��Bold"�
���   ��� -   $ label_Copy6��$��AGREGAR��$
��Left=�$��921,322,0,-131q�$	��Top=�$��Arial)�$��15(�$
��Bold"�
���   ��� -    ��Name$ 	txt_folio��$
��Left=�$��33��$��917,170,0,-2q� �� TextWrapping$
 Wrap=�$��00000000��$	��Top=�$	��134��$��Arial)�$��21(�$
��Bold"�
���  ��  �� SelectionBrush
  �  ���� -   $ label_Copy7��$��PERIODO:��$
��Left=�$��842,232,0,-58q�$	��Top=�$��Arial)�$��15(����	#00000000�� -   $ label_Copy8��$��GRUPO:��$
��Left=�$��842,261,0,-87q�$	��Top=�$��Arial)�$��15(����	#00000000�� -   $ label_Copy9��$��FECHA:��$
��Left=�$��842,291,0,-117q�$	��Top=�$��Arial)�$��15(����	#00000000�� -   $ txt_periodo��$
��Left=�$��28��$��943,226,0,-53q�$
 Wrap=�$��1��! �� 	MaxLength$! 1��$	��Top=�$	��108��$��Arial)�$��16(�$
��Bold"�
���   �
  �  ���� -   $ 	txt_grupo��$
��Left=�$��28��$��943,257,0,-84q�$
 Wrap=�$��1��$! 1��$	��Top=�$	��108��$��Arial)�$��16(�$
��Bold"�
���   �
  �  ��(  "System.Windows.Controls.DatePicker  -   "  Name$" 	txt_fecha��$
��Left=�$��28��$��943,289,0,-116q�$	��Top=�$	��108��$��Arial)�$��16(�$
��Bold"�
���   �&   System.Windows.Controls.DataGrid  -   #  Name$# 
dgvAlumnos��$   HeadersVisibility$
$ None=�%   CanUserAddRows% . $��39,354,13,-536q�&   AutoGenerateColumns& .  $	��500��$��Arial)�$��13(�'   EnableRowVirtualization' .  
����������	#89C1C1C1( � ContextMenu( �� .@�m� -   $��Editar Alumno��) m� Icon)   $ Pencil=�$��16��$��16���� m� -   $��Estado��)   $ AccountAlert=�$��16��$��16��*   Columns* 0	  *System.Windows.Controls.DataGridTextColumn	  ,
  &System.Windows.Controls.DataGridColumn+ 
  Header$+ NUMERO DE CUENTA��, 
  Width5  /System.Windows.Controls.DataGridLengthConverter$	, 170 1  +System.Windows.Controls.DataGridBoundColumn-   Binding- �� *cuenta+	  $%+ N O M B R E  D E L  A L U M N O��$	, 460 - �� *nombre+	  $+ CALIFICACION��. 
  
IsReadOnly. . $	, 150 / 	  
FontWeight$
/ Bold"�0 	  FontSize$0 14Q�1   ElementStyle1 �� " ��.���  � ��$ Center=�	  $+ 	CAL_LETRA��. . $	, 100 	  $+ AGREGAR��. .  $, 80 1 �� " ��.���  � ��$ Center=���  � ��
 �����	  $+ Turno��2 	  
Foreground
2 �����. . $	, 170 - �� *	cohorte+3   RowStyle3 �� )  #System.Windows.Controls.DataGridRow"  4 �� Triggers4 �� 5 �� Binding5 �� *baja+6 �� Value6 True.a���  � ��
 �  ���� 5 �� *
desertor+6 True.a���  � ��
 �� ���� -   $ label_Copy10��$��COHORTE:��$
��Left=�$��855,138,0,0q�$	��Top=�$��Arial)�$��15(����	#00000000�� -   $ txt_cohorte��$
��Left=�$��28��$��949,137,0,0q�$
 Wrap=�$��	0000-0000��$! 9��$	��Top=�$	��108��$��Arial)�$��16(�$
��Bold"�
���   �
  �  ���� -   #��[ $��	0,70,65,0q�$��Right=�$	��Top=�
��� � �$ Guardar��$��48��$��48��$ 
0.444,2.25&�.��  $ Floppy=�$��24��$��24���� -   #��[ $��
0,70,127,0q�$��Right=�$	��Top=�
��� ���
�������$ Revisar��$��48��$��48��$ 
0.444,2.25&�.��  $ AccountAlert=�$��24��$��24���� -   7 ��Name$7 chk_regularizacion��$��REGULARIZACIÓN��$
��Left=�$��630,170,0,0q�$	��Top=�$	��202��$��Arial)�$��20(�$
��Bold"�