   M S B A M L   `   `   `  ����@  <uteba, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:utebauteba  5   	       uteba.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   %localclr-namespace:uteba     5   	     � 
ResizeMode$  NoResize=�5   	    � Title$ Autoriz��5	   	   $	��600��5
   	   $	��400��5   	    � WindowStartupLocation$ CenterScreen=�5   	      winStyle#��[  5   	   .��5      �  � RowDefinitions 5   
   �� 5      �� 5      �� 5      �� 5      �� 5      �� 5      �� 5      .+�5   
   G� -   5         G�Name$ 	pass_psbx��5      $��4��6)     psbStyle#��[ 66   �� 5   
   -   5         ��Name$ 	log_txtbx��5      $��2��6%     
txtbxStyle#��[ 62   �� 5   
   $��Авторизация��6   $��2��5      $��Center=�5      $��50(�5      $��Center=�5       ���	#FFFFF2F2$��Book Antiqua)�5"      $
��Bold"�6*   �� 5#   
   $��Login��6   $��1��6    $�� 65,0q�6-   $��Bottom=�6<    	 Label#��[ 6W   �� 5$   
   $��Password��6   $��3��6#   $
��65 0q�60   #��[ 6?   � 5%   
   $��5��6   .+�5&      �� -   5         ��Name$ bt_ent��5&      $��16(�6%    �� 	IsDefault . $��Enter��6D   $��50��6i   $	��100��6u   $��65 10q�6�   �� 5(      -   5        $ bt_reg��5(      $��16(�6%   $��5��63   $��Registration��6@   $��50��6l   $	��100��6x   5)      5*      5+      