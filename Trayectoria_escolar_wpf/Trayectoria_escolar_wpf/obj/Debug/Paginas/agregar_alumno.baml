   M S B A M L   `   `   `  ����  Trayectoria_escolar_wpf4    .Trayectoria_escolar_wpf.Paginas.agregar_alumno   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      U QMaterialDesignThemes.Wpf, Version=2.3.0.823, Culture=neutral, PublicKeyToken=nullX TMaterialDesignThemes.MahApps, Version=0.0.11.0, Culture=neutral, PublicKeyToken=nullHmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes   5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	     � Title$  Agregar alumno��5   	   $��696.604��6    $��1274.5��61    � WindowStyle$ 
ToolWindow=�6@    � 
ResizeMode$ NoResize=�6Z    � ShowInTaskbar .   � WindowStartupLocation$ CenterOwner=�6�      MaterialDesignBody#���   5   	   $��Regular"�5   	   $��13(�5	   	    � Topmost .  &   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=�5   	      TextRenderingMode$
 Auto=�5   	    � 	Resources 5      	 �� MergedDictionaries
 �� Source �� 
TargetType  MaterialDesignTextBox �� BasedOn �� Property �� Value  MaterialDesignPasswordBox  MaterialDesignComboBox�� 5   
   	 5      �� 5      $h
 bpack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.ComboBox.xaml?�6%   �� 5      $f
 `pack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.Slider.xaml?�6%   �� 5      $g
 apack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.TextBox.xaml?�6%   %I  '��       7  'G� R     7  '�� �     7  �� 5      " ��6   8   .�5      ��  � ��$ 0 8 0 8q�6+   5      �� 5      " G�6   8   .�5      ��  � ��$ 0 8 0 8q�6+   5      �� 5      " ��6   8   .�5      ��  � ��$ Stretch=�68   �� 5       � ��$ 0 8 0 8q�6+   5      5      .��5!      �  J� RenderTransformOrigin$ 0.537,0.268&�6   $	��322��6/   $	��Top=�6<   $��0,0,0,0q�6T    � ColumnDefinitions 5"   
   �� 5#      $
��269* �6   �� 5$      $
��999* �6   .+�5&   
   �� $��0��6   $��Información Personal��6      MaterialDesignGroupBox#���  6>   $��10,15,620,17q�6o   +  %MaterialDesignThemes.Wpf.ShadowAssist   ShadowDepth$ Depth2=�6�   $��0q�6�   $��2��6�   '  !MaterialDesignThemes.Wpf.PackIcon  5'   
   �  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.3.0.823, Culture=neutral, PublicKeyToken=null]]   Kind$ Account=�6"   $��24��61   $��24��6=   $��	20,70,0,0q�6H   
�������6[   �� 5(   
   -   5         ��Name$ 	txtNombre��5(      $��0��6   $
��Left=�62   $��36��6M   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ 	Nombre(s)��6Y   $��	49,58,0,0q�6�    �� TextWrapping$
 Wrap=�6�   $�� ��6�   $	��Top=�6�   $	��179��6�   $��Arial)�6�   $��10(�6�   $
��Bold"�6�   
���   �6
  �� 5)   
   -   5        $ txtApellidoMaterno��5)      $��2��6   $
��Left=�6;   $��36��6V   $ Apellido Materno��6b   $��
192,56,0,0q�6�   $
 Wrap=�6�   $�� ��6�   $	��Top=�6�   $	��163��6�   $��Arial)�6�   $��10(�6�   $
��Bold"�6	  
���   �$��1��6.    5*   
   $ GenderMaleFemale=�6"   $��24��6:   $��24��6F   $��
20,116,0,0q�6Q   
�������6e   (  "System.Windows.Controls.DatePicker  5+   
   -   5          Name$ mtxtFechaNacimiento��5+   "   $��4��6   $
��Left=�6?   $��36��6Z   $ Fecha de Nacimiento��6g   $	��Top=�6�   $	��154��6�   $��Arial)�6�   $��10(�6�   $
��Bold"�6�   
���   �$��
10,110,0,0q�6  $��1��6@    5,   
   $
 Cake=�6"   $��24��6.   $��24��6:   $��243,120,0,0q�6E   
�������6Z   �� 5-   
   -   5        $ txtApellidoPaterno��5-      $��1��6   $
��Left=�6;   $��36��6V   $ Apellido Paterno��6b   $��
260,56,0,0q�6�   $
 Wrap=�6�   $�� ��6�   $	��Top=�6�   $	��173��6�   $��Arial)�6�   $��10(�6�   $
��Bold"�6	  
���   �$��2��6.  �� 5.   
   -   5         ��Name$ cmbSexos��5.       $��3��6   $
��Left=�62   $ Género��6M   $��
49,108,0,0q�6u   $	��Top=�6�   $	��179��6�   $��36��6�   $��Arial)�6�   $��10(�6�   $
��Bold"�6�   
���   �$ Display=�6�   
������� � Cursor$
 Hand��6;  .@�5/      �� $��	MASCULINO��6   
 � Tag$ M��6/   �� 50      $��FEMENINO��6   $ F��6.   51      �� 52   
   -   5        $ 
cmbEstados��52       $��5��6   $
��Left=�64   $ Estado de nacimiento��6O   $��221,108,0,0q�6�   $	��Top=�6�   $	��134��6�   $��36��6�   $��Arial)�6�   $��10(�6�   $
��Bold"�6�   
���   �$ Display=�6  
�������$
 Hand��6L  $��1��6�    53   
   $ HomeMapMarker=�6"   $��24��67   $��24��6C   $��192,116,0,0q�6N   
�������$��1��6u   �� 54   
   -   5        $ cmbMunicipios��54       $��8��6   $
��Left=�67   $ Municipio de nacimiento��6R   $��192,158,0,0q�6�   $	��Top=�6�   $	��163��6�   $��36��6�   $��Arial)�6�   $��10(�6�   $
��Bold"�6�   
���   �$ Display=�6  
�������$
 Hand��6R  $��1��6`  �� 55   
   -   5        $ txtCurp��55      $��6��6   $
��Left=�60   $��36��6K   $
 CURP��6W   $��
49,158,0,0q�6}   $
 Wrap=�6�   $�� ��6�   $	��Top=�6�   $	��179��6�   $��Arial)�6�   $��10(�6�   $
��Bold"�6�   
���   �6  �� 56   
   -	   5        $ txtRFC��56      $��7��6   $
��Left=�6/   $��36��6J   $	 RFC��6V   $��
10,158,0,0q�6{   $
 Wrap=�6�   $�� ��6�   $	��Top=�6�   $	��154��6�   $��Arial)�6�   $��10(�6�   $
��Bold"�6�   
���   �$��1��6    57   
   $ FileDocument=�6"   $��24��66   $��24��6B   $��
20,165,0,0q�6M   
�������6a     58   
   $ FileDocument=�6"   $��24��66   $��24��6B   $��245,170,0,0q�6M   
�������6b   �� 59   
   -
   5        $ txtDireccion��59      $��9��6   $
��Left=�65   $��36��6P   $ 
Dirección��6\   $��
49,211,0,0q�6�   $
 Wrap=�6�   $�� ��6�   $	��Top=�6�   $	��575��6�   $��Arial)�6�   $��10(�6�   $
��Bold"�6�   
���   �$��2��6!    5:   
   $ 
Directions=�6"   $��24��64   $��24��6@   $��
20,223,0,0q�6K   
�������6_   �� 5;   
   -   5        $ txtTelefono��5;       $��10��6   $
��Left=�65   $��36��6P   $ 	Teléfono��6\   $��
49,264,0,0q�6�   $
 Wrap=�6�   $�� ��6�   $	��Top=�6�   $	��179��6�   $��Arial)�6�   $��10(�6�   $
��Bold"�6�   
���   �6    5<   
   $ Phone=�6"   $��24��6/   $��24��6;   $��
20,276,0,0q�6F   
�������6Z   �� 5=   
   -   5        $ 
txtCelular��5=       $��11��6   $
��Left=�64   $��36��6O   $ Celular��6[   $��
10,264,0,0q�6�   $
 Wrap=�6�   $�� ��6�   $	��Top=�6�   $	��154��6�   $��Arial)�6�   $��10(�6�   $
��Bold"�6�   
���   �$��1��6    5>   
   $ 	Cellphone=�6"   $��24��63   $��24��6?   $��245,276,0,0q�6J   
�������6_   �� 5?   
   -   5        $ 	txtCorreo��5?       $��12��6   $
��Left=�63   $��36��6N   $ Correo��6Z   $��221,264,0,0q�6�   $
 Wrap=�6�   $�� ��6�   $	��Top=�6�   $	��134��6�   $��Arial)�6�   $��10(�6�   $
��Bold"�6�   
���   �$��1��6    5@   
   $ Email=�6"   $��24��6/   $��24��6;   $��192,276,0,0q�6F   
�������$��1��6m   �� 5A   
   $��0��6   $��Información Académica��6    #���  6?   $��403,15,10,99q�6p   $ Depth2=�6�   $��0q�6�   $��1��6�     5B   
   $ Cards=�6"   $��24��6/   $��24��6;   $��
405,79,0,0q�6F   
�������$��1��6l   �� 5C   
   -   5        $ 	txtCuenta��5C       $��13��6   $
��Left=�63   $��36��6N   $ Número de Cuenta��6Z   $��
434,65,0,0q�6�   $
 Wrap=�6�   $�� ��6�   $	��Top=�6�   $	��114��6�   $��Arial)�6�   $��10(�6�   $
��Bold"�6  
���   �$��1��6&  �� 5D   
   -   5        $ 
cmbCohorte��5D   !   $��14��6   $
��Left=�65   $ Cohorte��6P   $	��Top=�6z   $	��173��6�   $��36��6�   $��Arial)�6�   $��10(�6�   $
��Bold"�6�   
���   �$ Display=�6�   
�������$
 Hand��6,  $��
584,65,0,0q�6:  $��1��6N  .@�5E      �� $��	2020-2025��6   $ 	2020-2025��6/   �� 5F      $��	2019-2024��6   $ 	2019-2024��6/   �� 5G      $��	2018-2023��6   $ 	2018-2023��6/   �� 5H      $��	2017-2022��6   $ 	2017-2022��6/   �� 5I      $��	2016-2021��6   $ 	2016-2021��6/   �� 5J      $��	2015-2020��6   $ 	2015-2020��6/   �� 5K      $��	2014-2019��6   $ 	2014-2019��6/   �� 5L      $��	2013-2018��6   $ 	2013-2018��6/   �� 5M      $��	2012-2017��6   $ 	2012-2017��6/   �� 5N      $��	2011-2016��6   $ 	2011-2016��6/   �� 5O      $��	2010-2015��6   $ 	2010-2015��6/   5P      �� 5Q   
   -   5        $ cmb_carrera��5Q   !   $��16��6   $
��Left=�66   $ Carrera��6Q   $��434,120,0,0q�6z   $	��Top=�6�   $	��341��6�   $��28��6�   $��Arial)�6�   $��10(�6�   $
��Bold"�6�   
���   �$ Display=�6  
�������$
 Hand��6A  $��1��6O  .@�5R      �� $ ��CIENCIAS DE LA TIERRA T.C.��6   $ 0��6@   �� 5S      $,��&LICENCIATURA EN INGENIERÍA GEODÉSICA��6   $ 1��6J   �� 5T      $,��&LICENCIATURA EN INGENIERÍA GEOMÁTICA��6   $ 2��6J   �� 5U      $!��LICENCIATURA EN ASTRONOMÍA��6   $ 3��6@   5V        5W   
   $ Certificate=�6"   $��24��65   $��24��6A   $��405,124,0,0q�6L   
�������$��1��6s   �� 5X   
   -   5        $ cmb_semestre��5X   !   $��15��6   $
��Left=�67   $ Semestre��6R   $	��Top=�6}   $	��168��6�   $��36��6�   $��Arial)�6�   $��10(�6�   $
��Bold"�6�   
���   �$ Display=�6�   
�������$
 Hand��6/  $��
791,65,0,0q�6=  $��1��6Q  .@�5Y      �� $��1��6   $ 1��6'   �� 5Z      $��2��6   $ 2��6'   �� 5[      $��3��6   $ 3��6'   �� 5\      $��4��6   $ 4��6'   �� 5]      $��5��6   $ 5��6'   �� 5^      $��6��6   $ 6��6'   �� 5_      $��7��6   $ 7��6'   �� 5`      $��8��6   $ 8��6'   �� 5a      $��9��6   $ 9��6'   5b      �� 5c   
   -   5        $ 	cmb_grupo��5c   !   $��17��6   $
��Left=�64   $ Grupo��6O   $	��Top=�6w   $	��168��6�   $��36��6�   $��Arial)�6�   $��10(�6�   $
��Bold"�6�   
���   �$ Display=�6�   
�������$
 Hand��6)  $��791,110,0,0q�67  $��1��6L  .@�5d      �� $��1��6   $ 1��6'   �� 5e      $��2��6   $ 2��6'   �� 5f      $��3��6   $ 3��6'   5g      �� 5h   
   -   5        $ 	cmb_turno��5h   !   $��18��6   $
��Left=�64   $ Turno��6O   $	��Top=�6w   $	��181��6�   $��36��6�   $��Arial)�6�   $��10(�6�   $
��Bold"�6�   
���   �$ Display=�6�   
�������$
 Hand��6)  $��434,165,0,0q�67  $��1��6L  .@�5i      �� $��Matutino��6   $ Matutino��6.   �� 5j      $��
Vespertino��6   $ 
Vespertino��60   5k        5l   
   -   5        $ txtFEchaIngreso��5l   #   $��19��6   $
��Left=�6<   $��36��6W   $ Fecha de Ingreso��6d   $	��Top=�6�   $	��203��6�   $��Arial)�6�   $��10(�6�   $
��Bold"�6�   
���   �$��659,165,0,0q�6   $��1��6    5m   
   $ Timer=�6"   $��24��6/   $��24��6;   $��403,177,0,0q�6F   
�������$��1��6m   �� 5n   
   $��0��6   $!��Información de Procedencia��6    #���  6D   $��10,330,620,-202q�6u   $ Depth2=�6�   $��0q�6�   $��2��6�   �� 5o   
   -   5        $ cmbPrepasUAS��5o   !   $��20��6   $
��Left=�67   $ Preparatorias UAS��6R   $	��Top=�6�   $	��193��6�   $��36��6�   $��Arial)�6�   $��10(�6�   $
��Bold"�6�   
���   �$ Display=�6�   
�������$
 Hand��68  $��48,374,0,-88q�6F  6�    5p   
   $ School=�6"   $��24��60   $��24��6<   $��19,384,0,-86q�6G   
�������6]   �� 5q   
   -   5        $ cmbPreparatoriasOtras��5q   !   $��21��6   $
��Left=�6@   $ Otras Preparatorias��6[   $	��Top=�6�   $	��236��6�   $��36��6�   $��Arial)�6�   $��10(�6�   $
��Bold"�6�   
���   �$ Display=�6  
�������$
 Hand��6C  $��29,374,0,-88q�6Q  $��1��6�    5r   
   $ School=�6"   $��24��60   $��24��6<   $��268,384,0,-86q�6G   
�������$��2��6p   �� 5s   
   -   5        $ txtPreparatoria��5s   2   $��22��6    �� 
IsReadOnly . $
��Left=�6K   $��36��6f   $ Nombre de la preparatoria��6r   $��48,418,0,-132q�6�   $
 Wrap=�6�   $�� ��6�   $	��Top=�6�   $	��486��6�   $��Arial)�6  $��10(�6  $
��Bold"�6%  
���   �$��2��6J  �� 5t   
   -   5         ��Name$ bnNuevaPrepa��5t      $��Nueva��6'   $
��Left=�67   $��289,378,0,-88q�6R   $	��Top=�6i   $��85��6�   $��1��6�     5u   
   $ School=�6"   $��24��60   $��24��6<   $��19,430,0,-132q�6G   
�������6^   �� 5v   
   -   5        $ txtPromedioPrepa��5v       $��23��6   $
��Left=�6:   $��36��6U   $ Promedio Preparatoria��6a   $��48,472,0,-186q�6�   $
 Wrap=�6�   $�� ��6�   $	��Top=�6�   $	��193��6�   $��Arial)�6�   $��10(�6  $
��Bold"�6  
���   �6"  �� 5w   
   -   5        $ txtPromedioCeneval��5w       $��24��6   $
��Left=�6<   $��36��6W   $ Promedio Ceneval��6c   $��28,472,0,-186q�6�   $
 Wrap=�6�   $�� ��6�   $	��Top=�6�   $	��188��6�   $��Arial)�6�   $��10(�6�   $
��Bold"�6  
���   �$��1��62  �� 5x   
   $��0��6   $&�� Información de Familiar o Tutor��6    #���  6I   $��403,330,10,-202q�6z   $ Depth2=�6�   $��0q�6�   $��1��6�     5y   
   $ Account=�6"   $��24��61   $��24��6=   $��405,396,0,-98q�6H   
�������$��1��6q   �� 5z   
   -   5        $ txtNombreTutor��5z       $��25��6   $
��Left=�68   $��36��6S   $ Nombre Completo de Tutor��6_   $��434,384,0,-98q�6�   $
 Wrap=�6�   $�� ��6�   $	��Top=�6�   $	��237��6�   $��Arial)�6�   $��10(�6  $
��Bold"�6  
���   �$��1��66  �� 5{   
   -   5        $ txtDireccionTutor��5{       $��26��6   $
��Left=�6;   $��36��6V   $ Dirección Tutor��6b   $��434,445,0,-159q�6�   $
 Wrap=�6�   $�� ��6�   $	��Top=�6�   $	��525��6�   $��Arial)�6�   $��10(�6�   $
��Bold"�6  
���   �$��1��61    5|   
   $ 
Directions=�6"   $��24��64   $��24��6@   $��405,457,0,-159q�6K   
�������$��1��6u   �� 5}   
   -   5        $ txtTelefonoTutor��5}       $��26��6   $
��Left=�6:   $��36��6U   $ Teléfono Tutor��6a   $��722,383,0,-97q�6�   $
 Wrap=�6�   $�� ��6�   $	��Top=�6�   $	��237��6�   $��Arial)�6�   $��10(�6�   $
��Bold"�6	  
���   �$��1��6.    5~   
   $ Phone=�6"   $��24��6/   $��24��6;   $��693,395,0,-97q�6F   
�������$��1��6o   �� 5   
   -   5        $ 
btnGuardar��5      $��27��6   $��Guardar Alumno��63   $
��Left=�6L   $��826,582,0,-315q�6g   $	��Top=�6   $	��163��6�   $��55��6�   ���	#FF3F9C47���	#FF45B450$��1��6�   �� 5�   
   -   5        $ BtnCancelar��5�      $��Cancelar��6&   $
��Left=�69   $��611,582,0,-316q�6T   $	��Top=�6l   $	��164��6�   $��56��6�   ���	#FFDE2121���	#FFB40000$��1��6�   5�      5�      