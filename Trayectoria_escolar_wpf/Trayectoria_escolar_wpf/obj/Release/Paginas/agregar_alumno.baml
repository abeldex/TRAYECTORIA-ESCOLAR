   M S B A M L   `   `   `  ����   Trayectoria_escolar_wpf4    .Trayectoria_escolar_wpf.Paginas.agregar_alumno   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    U QMaterialDesignThemes.Wpf, Version=2.3.0.823, Culture=neutral, PublicKeyToken=nullX TMaterialDesignThemes.MahApps, Version=0.0.11.0, Culture=neutral, PublicKeyToken=nullHmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml       � Title$  Agregar alumno��$��696.604��$��1274.5�� � WindowStyle$ 
ToolWindow=� � 
ResizeMode$ NoResize=� � ShowInTaskbar .   � WindowStartupLocation$ CenterOwner=�   MaterialDesignBody#���   $��Regular"�$��13(� � Topmost .  &   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=�   TextRenderingMode$
 Auto=� � 	Resources 	 �� MergedDictionaries
 �� Source �� 
TargetType  MaterialDesignTextBox �� BasedOn �� Property �� Value  MaterialDesignPasswordBox  MaterialDesignComboBox�� 	 �� $h
 bpack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.ComboBox.xaml?��� $f
 `pack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.Slider.xaml?��� $g
 apack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.TextBox.xaml?�%�   '��       7  'G� -     7  '�� Z     7  �� " ��8   .���  � ��$ 0 8 0 8q��� " G�8   .���  � ��$ 0 8 0 8q��� " ��8   .���  � ��$ Stretch=���  � ��$ 0 8 0 8q�.���  J� RenderTransformOrigin$ 0.537,0.268&�$	��322��$	��Top=�$��0,0,0,0q� � ColumnDefinitions �� $
��269* ��� $
��999* �.+��� $��0��$��Información Personal��  MaterialDesignGroupBox#���  $��10,15,620,17q�+  %MaterialDesignThemes.Wpf.ShadowAssist   ShadowDepth$ Depth2=�$��0q�$��2��'  !MaterialDesignThemes.Wpf.PackIcon  �  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.3.0.823, Culture=neutral, PublicKeyToken=null]]   Kind$ Account=�$��24��$��24��$��	20,70,0,0q�
��������� -    ��Name$ 	txtNombre��$��0��$
��Left=�$��36��)  #MaterialDesignThemes.Wpf.HintAssist   Hint$ 	Nombre(s)��$��	49,58,0,0q� �� TextWrapping$
 Wrap=�$�� ��$	��Top=�$	��179��$��Arial)�$��10(�$
��Bold"�
���   ��� -   $ txtApellidoMaterno��$��2��$
��Left=�$��36��$ Apellido Materno��$��
192,56,0,0q�$
 Wrap=�$�� ��$	��Top=�$	��163��$��Arial)�$��10(�$
��Bold"�
���   �$��1��  $ GenderMaleFemale=�$��24��$��24��$��
20,116,0,0q�
�������(  "System.Windows.Controls.DatePicker  -     Name$ mtxtFechaNacimiento��$��4��$
��Left=�$��36��$ Fecha de Nacimiento��$	��Top=�$	��154��$��Arial)�$��10(�$
��Bold"�
���   �$��
10,110,0,0q�$��1��  $
 Cake=�$��24��$��24��$��243,120,0,0q�
��������� -   $ txtApellidoPaterno��$��1��$
��Left=�$��36��$ Apellido Paterno��$��
260,56,0,0q�$
 Wrap=�$�� ��$	��Top=�$	��173��$��Arial)�$��10(�$
��Bold"�
���   �$��2���� -    ��Name$ cmbSexos��$��3��$
��Left=�$ Género��$��
49,108,0,0q�$	��Top=�$	��179��$��36��$��Arial)�$��10(�$
��Bold"�
���   �$ Display=�
������� � Cursor$
 Hand��.@��� $��	MASCULINO��
 � Tag$ M���� $��FEMENINO��$ F���� -   $ 
cmbEstados��$��5��$
��Left=�$ Estado de nacimiento��$��221,108,0,0q�$	��Top=�$	��134��$��36��$��Arial)�$��10(�$
��Bold"�
���   �$ Display=�
�������$
 Hand��$��1��  $ HomeMapMarker=�$��24��$��24��$��192,116,0,0q�
�������$��1���� -   $ cmbMunicipios��$��8��$
��Left=�$ Municipio de nacimiento��$��192,158,0,0q�$	��Top=�$	��163��$��36��$��Arial)�$��10(�$
��Bold"�
���   �$ Display=�
�������$
 Hand��$��1���� -   $ txtCurp��$��6��$
��Left=�$��36��$
 CURP��$��
49,158,0,0q�$
 Wrap=�$�� ��$	��Top=�$	��179��$��Arial)�$��10(�$
��Bold"�
���   ��� -	   $ txtRFC��$��7��$
��Left=�$��36��$	 RFC��$��
10,158,0,0q�$
 Wrap=�$�� ��$	��Top=�$	��154��$��Arial)�$��10(�$
��Bold"�
���   �$��1��  $ FileDocument=�$��24��$��24��$��
20,165,0,0q�
�������  $ FileDocument=�$��24��$��24��$��245,170,0,0q�
��������� -
   $ txtDireccion��$��9��$
��Left=�$��36��$ 
Dirección��$��
49,211,0,0q�$
 Wrap=�$�� ��$	��Top=�$	��575��$��Arial)�$��10(�$
��Bold"�
���   �$��2��  $ 
Directions=�$��24��$��24��$��
20,223,0,0q�
��������� -   $ txtTelefono��$��10��$
��Left=�$��36��$ 	Teléfono��$��
49,264,0,0q�$
 Wrap=�$�� ��$	��Top=�$	��179��$��Arial)�$��10(�$
��Bold"�
���   �  $ Phone=�$��24��$��24��$��
20,276,0,0q�
��������� -   $ 
txtCelular��$��11��$
��Left=�$��36��$ Celular��$��
10,264,0,0q�$
 Wrap=�$�� ��$	��Top=�$	��154��$��Arial)�$��10(�$
��Bold"�
���   �$��1��  $ 	Cellphone=�$��24��$��24��$��245,276,0,0q�
��������� -   $ 	txtCorreo��$��12��$
��Left=�$��36��$ Correo��$��221,264,0,0q�$
 Wrap=�$�� ��$	��Top=�$	��134��$��Arial)�$��10(�$
��Bold"�
���   �$��1��  $ Email=�$��24��$��24��$��192,276,0,0q�
�������$��1���� $��0��$��Información Académica��#���  $��403,15,10,99q�$ Depth2=�$��0q�$��1��  $ Cards=�$��24��$��24��$��
405,79,0,0q�
�������$��1���� -   $ 	txtCuenta��$��13��$
��Left=�$��36��$ Número de Cuenta��$��
434,65,0,0q�$
 Wrap=�$�� ��$	��Top=�$	��114��$��Arial)�$��10(�$
��Bold"�
���   �$��1���� -   $ 
cmbCohorte��$��14��$
��Left=�$ Cohorte��$	��Top=�$	��173��$��36��$��Arial)�$��10(�$
��Bold"�
���   �$ Display=�
�������$
 Hand��$��
584,65,0,0q�$��1��.@��� $��	2020-2025��$ 	2020-2025���� $��	2019-2024��$ 	2019-2024���� $��	2018-2023��$ 	2018-2023���� $��	2017-2022��$ 	2017-2022���� $��	2016-2021��$ 	2016-2021���� $��	2015-2020��$ 	2015-2020���� $��	2014-2019��$ 	2014-2019���� $��	2013-2018��$ 	2013-2018���� $��	2012-2017��$ 	2012-2017���� $��	2011-2016��$ 	2011-2016���� $��	2010-2015��$ 	2010-2015���� -   $ cmb_carrera��$��16��$
��Left=�$ Carrera��$��434,120,0,0q�$	��Top=�$	��341��$��28��$��Arial)�$��10(�$
��Bold"�
���   �$ Display=�
�������$
 Hand��$��1��.@��� $ ��CIENCIAS DE LA TIERRA T.C.��$ 0���� $,��&LICENCIATURA EN INGENIERÍA GEODÉSICA��$ 1���� $,��&LICENCIATURA EN INGENIERÍA GEOMÁTICA��$ 2���� $!��LICENCIATURA EN ASTRONOMÍA��$ 3��  $ Certificate=�$��24��$��24��$��405,124,0,0q�
�������$��1���� -   $ cmb_semestre��$��15��$
��Left=�$ Semestre��$	��Top=�$	��168��$��36��$��Arial)�$��10(�$
��Bold"�
���   �$ Display=�
�������$
 Hand��$��
791,65,0,0q�$��1��.@��� $��1��$ 1���� $��2��$ 2���� $��3��$ 3���� $��4��$ 4���� $��5��$ 5���� $��6��$ 6���� $��7��$ 7���� $��8��$ 8���� $��9��$ 9���� -   $ 	cmb_grupo��$��17��$
��Left=�$ Grupo��$	��Top=�$	��168��$��36��$��Arial)�$��10(�$
��Bold"�
���   �$ Display=�
�������$
 Hand��$��791,110,0,0q�$��1��.@��� $��1��$ 1���� $��2��$ 2���� $��3��$ 3���� -   $ 	cmb_turno��$��18��$
��Left=�$ Turno��$	��Top=�$	��181��$��36��$��Arial)�$��10(�$
��Bold"�
���   �$ Display=�
�������$
 Hand��$��434,165,0,0q�$��1��.@��� $��Matutino��$ Matutino���� $��
Vespertino��$ 
Vespertino��  -   $ txtFEchaIngreso��$��19��$
��Left=�$��36��$ Fecha de Ingreso��$	��Top=�$	��203��$��Arial)�$��10(�$
��Bold"�
���   �$��659,165,0,0q�$��1��  $ Timer=�$��24��$��24��$��403,177,0,0q�
�������$��1���� $��0��$!��Información de Procedencia��#���  $��10,330,620,-202q�$ Depth2=�$��0q�$��2���� -   $ cmbPrepasUAS��$��20��$
��Left=�$ Preparatorias UAS��$	��Top=�$	��193��$��36��$��Arial)�$��10(�$
��Bold"�
���   �$ Display=�
�������$
 Hand��$��48,374,0,-88q�  $ School=�$��24��$��24��$��19,384,0,-86q�
��������� -   $ cmbPreparatoriasOtras��$��21��$
��Left=�$ Otras Preparatorias��$	��Top=�$	��236��$��36��$��Arial)�$��10(�$
��Bold"�
���   �$ Display=�
�������$
 Hand��$��29,374,0,-88q�$��1��  $ School=�$��24��$��24��$��268,384,0,-86q�
�������$��2���� -   $ txtPreparatoria��$��22�� �� 
IsReadOnly . $
��Left=�$��36��$ Nombre de la preparatoria��$��48,418,0,-132q�$
 Wrap=�$�� ��$	��Top=�$	��486��$��Arial)�$��10(�$
��Bold"�
���   �$��2���� -    ��Name$ bnNuevaPrepa��$��Nueva��$
��Left=�$��289,378,0,-88q�$	��Top=�$��85��$��1��  $ School=�$��24��$��24��$��19,430,0,-132q�
��������� -   $ txtPromedioPrepa��$��23��$
��Left=�$��36��$ Promedio Preparatoria��$��48,472,0,-186q�$
 Wrap=�$�� ��$	��Top=�$	��193��$��Arial)�$��10(�$
��Bold"�
���   ��� -   $ txtPromedioCeneval��$��24��$
��Left=�$��36��$ Promedio Ceneval��$��28,472,0,-186q�$
 Wrap=�$�� ��$	��Top=�$	��188��$��Arial)�$��10(�$
��Bold"�
���   �$��1���� $��0��$&�� Información de Familiar o Tutor��#���  $��403,330,10,-202q�$ Depth2=�$��0q�$��1��  $ Account=�$��24��$��24��$��405,396,0,-98q�
�������$��1���� -   $ txtNombreTutor��$��25��$
��Left=�$��36��$ Nombre Completo de Tutor��$��434,384,0,-98q�$
 Wrap=�$�� ��$	��Top=�$	��237��$��Arial)�$��10(�$
��Bold"�
���   �$��1���� -   $ txtDireccionTutor��$��26��$
��Left=�$��36��$ Dirección Tutor��$��434,445,0,-159q�$
 Wrap=�$�� ��$	��Top=�$	��525��$��Arial)�$��10(�$
��Bold"�
���   �$��1��  $ 
Directions=�$��24��$��24��$��405,457,0,-159q�
�������$��1���� -   $ txtTelefonoTutor��$��26��$
��Left=�$��36��$ Teléfono Tutor��$��722,383,0,-97q�$
 Wrap=�$�� ��$	��Top=�$	��237��$��Arial)�$��10(�$
��Bold"�
���   �$��1��  $ Phone=�$��24��$��24��$��693,395,0,-97q�
�������$��1���� -   $ 
btnGuardar��$��27��$��Guardar Alumno��$
��Left=�$��826,582,0,-315q�$	��Top=�$	��163��$��55�����	#FF3F9C47���	#FF45B450$��1���� -   $ BtnCancelar��$��Cancelar��$
��Left=�$��611,582,0,-316q�$	��Top=�$	��164��$��56�����	#FFDE2121���	#FFB40000$��1��