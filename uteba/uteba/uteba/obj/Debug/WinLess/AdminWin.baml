   M S B A M L   `   `   `  ����@  <uteba, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:uteba.WinLessuteba.WinLess  5   	       uteba.WinLess.AdminWin   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   -localclr-namespace:uteba.WinLess     5   	      winStyle#��[  5   	     � WindowStartupLocation$  CenterScreen=�5	   	    � WindowStyle$
 None=�5
   	    � SizeToContent$ Height=�5   	    � 
ResizeMode$ NoResize=�5   	    � Title$ AdminWin��5   	   $
��auto��6   $	��690��6(   .��5      �  � ColumnDefinitions 5   
   �� 5      $	��44* �6   �� 5      $
��100* �6   �� 5      $
��100* �6   �� 5      $
��100* �6   �� 5      $
��100* �6   �� 5      $
��100* �6   �� 5      $	��44* �6    � RowDefinitions 5   
   �� 5      �� 5      �� 5      �� 5      �� 5      �� 5      .+�5    
   �� -   5         ��Name$ btn_Exit��5       $��X��5!      $��30��5"      $��30��5#      $��Right=�5%      $	��Top=�5&      $��10q�5'      &   System.Windows.Controls.DataGrid  5(   
   -   5          Name$ studGrid��5(      	   AutoGenerateColumns	 .  $��25(�5+      $��1��5,      $��1��5-      $��5��5.        grStyle#��[ 50      $��4��51      
   CanUserResizeColumns
 .     CanUserResizeRows .     CanUserAddRows .     Columns 55      0  *System.Windows.Controls.DataGridTextColumn  56      ,  &System.Windows.Controls.DataGridColumn   Header$ Имя��6%      Width5  /System.Windows.Controls.DataGridLengthConverter$ * 57   E   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6%   ��  �� Path$ fName�6E     58      $ Фамилия��6%   $ * 5;   ;    59   %   �� $ lName� �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=�5;   ;   4  .System.Windows.Controls.DataGridComboBoxColumn  5<      -   5        grCB��$ Группа��5<   7      DisplayMemberPath$ 	groupName��5?   <      SelectedValuePath$ idGroup��6Z   $ * 6v      SelectedValueBinding 5=   %   �� $ group�$ TwoWay=�$ PropertyChanged=�5?   v     5@      $ Прогресс��6%   $
 auto 5C   <    5A   %   �� $ 	lessCheck�$ TwoWay=�$ PropertyChanged=�5C   <   5H      �� 5I   
   -   5        $ soft_del��5I      $��Удалить��5J      $��3��5K      $��5��5L      $��30��5M      $
��0 10q�5N      5O      5Q      5R      