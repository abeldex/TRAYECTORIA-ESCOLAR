   M S B A M L   `   `   `  ����O  Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem  5       Trayectoria_escolar_wpf-   'Trayectoria_escolar_wpf.Paginas.alumnos   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      U QMaterialDesignThemes.Wpf, Version=2.3.0.823, Culture=neutral, PublicKeyToken=nullX TMaterialDesignThemes.MahApps, Version=0.0.11.0, Culture=neutral, PublicKeyToken=nullHmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes   5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      9system&clr-namespace:System;assembly=mscorlib     5      @d2http://schemas.microsoft.com/expression/blend/2008     5        N� Title$  Usuarios��5
       � 	Resources 5       �� MergedDictionaries �� Source�� 5   
    5      �� 5      $f `pack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.Button.xaml?�6%   �� 5      $h bpack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.DataGrid.xaml?�6%   �� 5      $d ^pack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.Card.xaml?�6%   �� 5      $g apack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.Flipper.xaml?�6%   �� 5      $h bpack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.Popupbox.xaml?�6%   %    5      .��5      � $��	0,0,0,-34q�6   .+�5   
   '  !MaterialDesignThemes.Wpf.PackIcon  $��Right=�6"   $	��Top=�6>   $��24��6V   $��24��6b   $��
0,10,400,0q�6m   �  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.3.0.823, Culture=neutral, PublicKeyToken=null]]   Kind$ 
AccountBox=�6�   ��6�   �� *BorderBrush+ �� ElementName$ txt_usuario���� 5   
   -   5         ��Name$ 
cmbCohorte��5      )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Cohorte��6'   $��35��6P   $	��150��6\   &   System.Windows.Media.TextOptions   TextHintingMode$ Animated=�6h   $
��Left=�6�   $	��Top=�6�   $��
20,0,170,0q�6�   $
��Bold"�6�   $��Arial Black)�6�   .@�5      �� $��	2020-2025��6   
	 � Tag$	 	2020-2025��6/   �� 5      $��	2019-2024��6   $	 	2019-2024��6/   �� 5      $��	2018-2023��6   $	 	2018-2023��6/   �� 5      $��	2017-2022��6   $	 	2017-2022��6/   �� 5      $��	2016-2021��6   $	 	2016-2021��6/   �� 5       $��	2015-2020��6   $	 	2015-2020��6/   �� 5!      $��	2014-2019��6   $	 	2014-2019��6/   �� 5"      $��	2013-2018��6   $	 	2013-2018��6/   �� 5#      $��	2012-2017��6   $	 	2012-2017��6/   �� 5$      $��	2011-2016��6   $	 	2011-2016��6/   �� 5%      $��	2010-2015��6   $	 	2010-2015��6/   5&      �� 5'   
   -   5        $ 	cmb_grupo��5'      $ Grupo��6'   $��35��6N   $	��150��6Z   $ Animated=�6f   $
��Left=�6�   $	��Top=�6�   $��240,0,170,0q�6�   $��Arial Black)�6�   .@�5(      �� $��1��6   $	 1��6'   �� 5)      $��2��6   $	 2��6'   �� 5*      $��3��6   $	 3��6'   5+      �� 5,   
   -   5         &  "MaterialDesignFloatingActionButton#��[  5,      $��420,0,130,0q�5-      $
��Left=�6.   $	��Top=�6I   
 � ToolTip$
 Filtrar��5.      $��36��6+   $��36��67   
��� � ���6V   Z� .��5/        $ Filter=�6&   $��24��64   $��24��6@   50      �� 51   
   -   5         ��Name$ 
txt_search��51      $ Buscar por nombre��6&   $��35��6Y    �� TextWrapping$
 Wrap=�6f   $	��200��6z   $ Animated=�6�   $��Right=�6�   $	��Top=�6�   $��	0,0,170,0q�6�    � DataContext 6�   �� 61  &   System.Windows.Controls.DataGrid  52   
   -   5          Name$ 
dgvAlumnos��52         
IsReadOnly . $��15,36,15,110q�69      AutoGenerateColumns .     CanUserSortColumns .  $	��600��6�   $��Arial)�6�   $��13(�6�      EnableRowVirtualization .  
����������	#89C1C1C1 � ContextMenu 53      �� 54      .@�55      m� -   5        $ ��Ver Valoraciones Parciales��55       m� Icon 56        57      $ ChartHistogram=�66   $��16��6L   $��16��6X   59      m� 5:      -   5        $��
Ver Kardex��5:       5;        5<      $ History=�66   $��16��6E   $��16��6Q   5>      m� 5?      -   5        $��Editar Alumno��5?       5@        5A      $ Pencil=�66   $��16��6D   $��16��6P   5C      �� 5D      m� 5E      -	   5        $
��Baja��5E      
���  �� 5F        5G      $ Download=�66   $��16��6F   $��16��6R   
���  ��6]   5I      m� 5K      -
   5        $��Desertor��5K      
���� �� 5L        5M      $ ArrowLeftBold=�66   $��16��6K   $��16��6W   
���� ��6b   5O      m� 5P      -   5        $��Rezago��5P      
��� ��� 5Q        5R      $ ArrowDownBold=�66   $��16��6K   $��16��6W   
��� ���6b   5T      �� 5U      m� 5V      -   5         m�Name$ menu_egresado��5V   D   $��Egresado��6   
���   � 5W        5X      $ CalendarCheck=�66   $��16��6K   $��16��6W   
���   �6b   5Z      m� 5[      -   5        $ menu_titulado��5[   E   $��Titulado��6   
���   � 5\        5]      $ Certificate=�66   $��16��6I   $��16��6U   
���   �6`   5_      m� 5`      -   5        $ menu_eft��5`   R   $��Eficiencia Titulación��6   
���   � 5a        5b      $ 	TimerSand=�66   $��16��6G   $��16��6S   
���   �6^   5d      m� 5e      -   5        $ menu_ss��5e   L   $��Servicio Social��6   
���   � 5f        5g      $ AccountStar=�66   $��16��6I   $��16��6U   
���   �6`   5i      m� 5j      -   5        $ 
menu_pract��5j   T   $��Prácticas Profesionales��6   
���   � 5k        5l      $ Worker=�66   $��16��6D   $��16��6P   
���   �6[   5n      5o         Columns 5q      0  *System.Windows.Controls.DataGridTextColumn  5r      ,  &System.Windows.Controls.DataGridColumn   Header$ NUMERO DE CUENTA��6%      
IsReadOnly . 1  +System.Windows.Controls.DataGridBoundColumn   Binding 6?   �� *CUENTA+6Z     5s      $% N O M B R E  D E L  A L U M N O��6%    .  6N   �� *NOMBRE+6i     5t      $ COHORTE��6%    .  66   �� *	Cohorte+6R     5u      $ SEMESTRE��6%    .  67   �� *
SEMESTRE+6T     5v      $ GRUPO��6%    .  64   �� *GRUPO+6N     5x      $ CARRERA��6%    .  66   �� *	CARRERA+5y      4	  .System.Windows.Controls.DataGridTemplateColumn	  5{      $ DESERTOR��6)      CanUserResize .   .  	  CellTemplate 5|      �� 5}      .R�5~      �� ��5   "   �� 5�   &    �� 
TargetType" ��6,   .�5�   *   ��  �� Property � �� �� Value$ No��6A    �� Triggers 5�   *   �� 5�   .     �� Binding  6:   �� *
desertor+! �� Value! True6W   .a�5�   2   ��  � ��$ Si��6I   5�   /   5�   '   5�      5�      5�      	  5�      $ REZAGADO��6)    .   .  5�      �� 5�      .R�5�      �� ��5�   "   �� 5�   &   " ��6,   .�5�   *   ��  � ��$ No��6A    5�   *   �� 5�   .     6:   �� *
rezagado+! True6W   .a�5�   2   ��  � ��$ Si��6I   5�   /   5�   '   5�      5�      5�      	  5�      $
 BAJA��6)    .   .  5�      �� 5�      .R�5�      �� ��5�   "   �� 5�   &   " ��6,   .�5�   *   ��  � ��$ No��6A    5�   *   �� 5�   .     6:   �� *baja+! True6S   .a�5�   2   ��  � ��$ Si��6I   5�   /   5�   '   5�      5�      5�        5�      $ EGRESADO��6%    . "   Width5
  /System.Windows.Controls.DataGridLengthConverter$" 50
 6f    67   �� *
Egresado+6f     5�      $ TITULADO��6%    . $" 50
 6f    67   �� *
Titulado+6f     5�      $ EFTITULACION��6%    . $" 50
 6w    6;   �� *Eficiencia_titulacion+6w     5�      $ SERVICIO��6%    . $" 50
 6m    67   �� *Servicio_social+6m     5�      $ 	PRACTICAS��6%    . $" 50
 6i    68   �� *	Practicas+6i   #   RowStyle# 5�      �� 5�      )  #System.Windows.Controls.DataGridRow"  6    5�      �� 5�        6&   �� *baja+! True6?   .a�5�      ��  � ��
 �  ��6I   5�      �� 5�        6&   �� *
desertor+! True6C   .a�5�      ��  � ��
 �� ��6L   5�      �� 5�        6&   �� *
rezagado+! True6C   .a�5�      ��  � ��
 � ���6L   5�      5�      5�      �� 5�   
   $ ��Administración de Alumnos��6   $	��Top=�64   $��Center=�6L   $
��Bold"�6i   $��24(�6{   �� 5�   
   -   5        #��[  5�      $��0,5,10,0q�5�      $��Right=�6+   $	��Top=�6G   $
 Agregar nuevo alumno��5�      $��36��68   $��36��6D   .��5�        $ AccountPlus=�6&   $��24��69   $��24��6E   5�      �� 5�   
   -   5        #��[  5�      $��0,5,50,0q�5�      $��Right=�6+   $	��Top=�6G   $"
 Eliminar alumno seleccionado��5�      $��36��6@   $��36��6L   ���	#FFF07D1E��6n   Z� .��5�        $ Pencil=�6&   $��24��64   $��24��6@   5�      �� 5�   
   -   5        #��[  5�      $��0,5,90,0q�5�      $��Right=�6+   $	��Top=�6G   $
 Buscar un alumno��5�      $��36��64   $��36��6@   
���i����6c   Z� .��5�        $ AccountSearch=�6&   $��24��6;   $��24��6G   5�      �� 5�   
   -   5        #��[  5�      $��	0,5,130,0q�5�      $��Right=�6,   $	��Top=�6H   $
 
Actualizar��5�      $��36��6.   $��36��6:   
����·���6`   Z� .��5�        $ Refresh=�6&   $��24��65   $��24��6A   5�      5�      5�      