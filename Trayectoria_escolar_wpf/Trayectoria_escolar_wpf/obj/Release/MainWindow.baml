   M S B A M L   `   `   `  ����   Trayectoria_escolar_wpf(    "Trayectoria_escolar_wpf.MainWindow   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     U QMaterialDesignThemes.Wpf, Version=2.3.0.823, Culture=neutral, PublicKeyToken=nullX TMaterialDesignThemes.MahApps, Version=0.0.11.0, Culture=neutral, PublicKeyToken=nullHmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes   <d2http://schemas.microsoft.com/expression/blend/2008   Fmc;http://schemas.openxmlformats.org/markup-compatibility/2006     � Title$$  Sistema de Trayectoria Escolar��$	��868��$
��1280��   MaterialDesignBody#���   $��Regular"�$��13(�&   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=�   TextRenderingMode$
 Auto=� � WindowState$ 	Maximized=� � Icon$ web_hi_res_512.ico�� � 	Resources  �� MergedDictionaries �� Source��  �� $f `pack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.Button.xaml?��� $g apack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.Shadows.xaml?��� $l fpack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.ToggleButton.xaml?�%    .��)  #MaterialDesignThemes.Wpf.DrawerHost     IsLeftDrawerOpen �� 	 �� ElementName$	 MenuToggleButton��
 �� Path$
 	IsChecked�   LeftDrawerContent ]� $	��212��.+��� $$��Resources/images/logogeode.png��$��Uniform=�$	��200��$��48��$��0 10 0 0q�$	��Top=�$��Center=��� -    ��Name$ MenuListBox��$��	0 16 0 16q� �� SelectedIndex$ 0�����	#FF454C74.@��� -   .����  �� Orientation$ 
Horizontal=�.+�'  !MaterialDesignThemes.Wpf.PackIcon  �  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.3.0.823, Culture=neutral, PublicKeyToken=null]]   Kind$
 Face=�$��32��$��32��$��Center=�$��Center=����	#DDFFFFFF$��	18 15 0 0q��� $��	20 15 0 0q�$
��Bold"�$��Center=�$��Center=����	#DDFFFFFF$��CharacterEllipsis=�$��18(�	Alumnos�� �� -   .���� $ 
Horizontal=�.+�  $
 Note=�$��32��$��32��$��Center=�$��Center=����	#DDFFFFFF$��18 0 0 0q��� $��20 0 0 0q�$
��Bold"�$��Center=�$��Center=����	#DDFFFFFF$��CharacterEllipsis=�$��18(�Actas Ordinarios�� -   .���� $ 
Horizontal=�.+�  $
 Note=�$��32��$��32��$��Center=�$��Center=����	#DDFFFFFF$��18 0 0 0q��� $��20 0 0 0q�$
��Bold"�$��Center=�$��Center=����	#DDFFFFFF$��CharacterEllipsis=�$��18(�Actas Extraordinarios�� �� -   .���� $ 
Horizontal=�.+�  $ Numeric=�$��32��$��32��$��Center=�$��Center=����	#DDFFFFFF$��18 0 0 0q��� $��20 0 0 0q�$
��Bold"�$��Center=�$��Center=����	#DDFFFFFF$��CharacterEllipsis=�$��18(�Folios Ordinarios�� �� .���� $ 
Horizontal=�.+�  $ Printer=�$��32��$��32��$��Center=�$��Center=����	#DDFFFFFF$��18 0 0 0q��� $��20 0 0 0q�$
��Bold"�$��Center=�$��Center=����	#DDFFFFFF$��CharacterEllipsis=�$��18(�
Reportes.��]� .+�(  "MaterialDesignThemes.Wpf.ColorZone  $��16q�+  %MaterialDesignThemes.Wpf.ShadowAssist   ShadowDepth$ Depth2=�   Mode$ 
PrimaryMid=�$	��Top=����	#FF454C74.��]� .+�d� -    d�Name$ MenuToggleButton�� ' #MaterialDesignHamburgerToggleButton#��[  d� 	IsChecked$ FalseY�'  !MaterialDesignThemes.Wpf.PopupBox  $��Right=�   PlacementMode$ BottomAndAlignRightEdges=�   	StaysOpen .     PopupContent. �� .+��� $��Configuración���� �� $��Salir���� $5��/Resources/images/banner sistema trayectoria.png��$��Uniform=�$
��1024��$��45��$��Center=�� ����  �� ImageSource$6 0http://geodesia.uas.edu.mx/images/cabecera22.png�� j� TileMode$
 Tile=� j� Stretch$ UniformToFill=� � RowDefinitions �� $
��Auto ��� $��* �.+� � -     �Name$
 Main��  � NavigationUIVisibility$ Hidden=�