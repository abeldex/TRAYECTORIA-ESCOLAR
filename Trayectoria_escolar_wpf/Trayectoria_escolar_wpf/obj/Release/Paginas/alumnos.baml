   M S B A M L   `   `   `  ���� O  Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem   Trayectoria_escolar_wpf-   'Trayectoria_escolar_wpf.Paginas.alumnos   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    U QMaterialDesignThemes.Wpf, Version=2.3.0.823, Culture=neutral, PublicKeyToken=nullX TMaterialDesignThemes.MahApps, Version=0.0.11.0, Culture=neutral, PublicKeyToken=nullHmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     9system&clr-namespace:System;assembly=mscorlib     @d2http://schemas.microsoft.com/expression/blend/2008       N� Title$  Usuarios�� � 	Resources  �� MergedDictionaries �� Source��  �� $f `pack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.Button.xaml?��� $h bpack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.DataGrid.xaml?��� $d ^pack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.Card.xaml?��� $g apack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.Flipper.xaml?��� $h bpack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.Popupbox.xaml?�%    .��� $��	0,0,0,-34q�.+�'  !MaterialDesignThemes.Wpf.PackIcon  $��Right=�$	��Top=�$��24��$��24��$��
0,10,400,0q��  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.3.0.823, Culture=neutral, PublicKeyToken=null]]   Kind$ 
AccountBox=����� *BorderBrush+ �� ElementName$ txt_usuario���� -    ��Name$ 
cmbCohorte��)  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Cohorte��$��35��$	��150��&   System.Windows.Media.TextOptions   TextHintingMode$ Animated=�$
��Left=�$	��Top=�$��
20,0,170,0q�$
��Bold"�$��Arial Black)�.@��� $��	2020-2025��
	 � Tag$	 	2020-2025���� $��	2019-2024��$	 	2019-2024���� $��	2018-2023��$	 	2018-2023���� $��	2017-2022��$	 	2017-2022���� $��	2016-2021��$	 	2016-2021���� $��	2015-2020��$	 	2015-2020���� $��	2014-2019��$	 	2014-2019���� $��	2013-2018��$	 	2013-2018���� $��	2012-2017��$	 	2012-2017���� $��	2011-2016��$	 	2011-2016���� $��	2010-2015��$	 	2010-2015���� -   $ 	cmb_grupo��$ Grupo��$��35��$	��150��$ Animated=�$
��Left=�$	��Top=�$��240,0,170,0q�$��Arial Black)�.@��� $��1��$	 1���� $��2��$	 2���� $��3��$	 3���� -    &  "MaterialDesignFloatingActionButton#��[  $��420,0,130,0q�$
��Left=�$	��Top=�
 � ToolTip$
 Filtrar��$��36��$��36��
��� � ���Z� .��  $ Filter=�$��24��$��24���� -    ��Name$ 
txt_search��$ Buscar por nombre��$��35�� �� TextWrapping$
 Wrap=�$	��200��$ Animated=�$��Right=�$	��Top=�$��	0,0,170,0q� � DataContext �� &   System.Windows.Controls.DataGrid  -     Name$ 
dgvAlumnos��   
IsReadOnly . $��15,36,15,110q�   AutoGenerateColumns .     CanUserSortColumns .  $	��600��$��Arial)�$��13(�   EnableRowVirtualization .  
����������	#89C1C1C1 � ContextMenu �� .@�m� -   $��Editar Alumno�� m� Icon   $ Pencil=�$��16��$��16���� m� -   $
��Baja��
���  ��   $ Download=�$��16��$��16��
���  ��m� -   $��Desertor��
���� ��   $ ArrowLeftBold=�$��16��$��16��
���� ��m� -	   $��Rezago��
��� ���   $ ArrowDownBold=�$��16��$��16��
��� ����� m� -
    m�Name$ menu_egresado��$��Egresado��
���   �   $ CalendarCheck=�$��16��$��16��
���   �m� -   $ menu_titulado��$��Titulado��
���   �   $ Certificate=�$��16��$��16��
���   �m� -   $ menu_eft��$��Eficiencia Titulación��
���   �   $ 	TimerSand=�$��16��$��16��
���   �m� -   $ menu_ss��$��Servicio Social��
���   �   $ AccountStar=�$��16��$��16��
���   �m� -   $ 
menu_pract��$��Prácticas Profesionales��
���   �   $ Worker=�$��16��$��16��
���   �   Columns 0  *System.Windows.Controls.DataGridTextColumn  ,  &System.Windows.Controls.DataGridColumn   Header$ NUMERO DE CUENTA��   
IsReadOnly . 1  +System.Windows.Controls.DataGridBoundColumn   Binding �� *CUENTA+  $% N O M B R E  D E L  A L U M N O�� .  �� *NOMBRE+  $ COHORTE�� .  �� *	Cohorte+  $ SEMESTRE�� .  �� *
SEMESTRE+  $ GRUPO�� .  �� *GRUPO+  $ CARRERA�� .  �� *	CARRERA+  $ TURNO�� .  �� *turno+  $ EGRESADO�� .    Width5	  /System.Windows.Controls.DataGridLengthConverter$ 50	  �� *
Egresado+  $ TITULADO�� . $ 50	  �� *
Titulado+  $ EFTITULACION�� . $ 50	  �� *Eficiencia_titulacion+  $ SERVICIO�� . $ 50	  �� *Servicio_social+  $ 	PRACTICAS�� . $ 50	  �� *	Practicas+   RowStyle ��  �� 
TargetType)
  #System.Windows.Controls.DataGridRow" 
  �� Triggers ��  �� Binding �� *baja+ �� Value True.a���   �� Property  � ��! �� Value
! �  ����  �� *
desertor+ True.a���   � ��
! �� ���� $ ��Administración de Alumnos��$	��Top=�$��Center=�$
��Bold"�$��24(��� -   #��[  $��0,5,10,0q�$��Right=�$	��Top=�$
 Agregar nuevo alumno��$��36��$��36��.��  $ AccountPlus=�$��24��$��24���� -   #��[  $��0,5,50,0q�$��Right=�$	��Top=�$"
 Eliminar alumno seleccionado��$��36��$��36�����	#FFF07D1E��Z� .��  $ Pencil=�$��24��$��24���� -   #��[  $��0,5,90,0q�$��Right=�$	��Top=�$
 Buscar un alumno��$��36��$��36��
���i����Z� .��  $ AccountSearch=�$��24��$��24���� -   #��[  $��	0,5,130,0q�$��Right=�$	��Top=�$
 
Actualizar��$��36��$��36��
����·���Z� .��  $ Refresh=�$��24��$��24��