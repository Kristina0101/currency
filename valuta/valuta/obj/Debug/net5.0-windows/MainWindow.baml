   M S B A M L   `   `   `  ����A  =valuta, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:valutavaluta  5   	       valuta.MainWindow   5   	   W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   &localclr-namespace:valuta     5   	     � Title$  
MainWindow��5   	   $	��271��6   $	��323��6)   .��5	      � .+�5
   
   �� $ ��Введите сумму:��6   $	��Top=�6)   $��	20,20,0,0q�6A   �� 5   
   -   5         ��Name$ Amount��5      $	��Top=�6"   $
��Left=�6:   $	��150��6U   $��
150,20,0,0q�6a   6u   �� 5   
   $$��Исходная валюта:��6   $	��Top=�6+   $��	20,60,0,0q�6C   �� 5   
   -   5         ��Name$ FromCurrency��5      $	��Top=�6)   $
��Left=�6A   $	��150��6\   $��
150,60,0,0q�6h   �� 5   
   $"��Целевая валюта:��6   $	��Top=�6*   $��
20,100,0,0q�6B   �� 5   
   -   5        $ 
ToCurrency��5      $	��Top=�6'   $
��Left=�6?   $	��150��6Z   $��150,100,0,0q�6f   �� 5   
   -   5        $"��Конвертировать��5      $	��Top=�6*   $
��Left=�6B   $	��150��6]   $��
20,140,0,0q�6i   6}   �� 5   
   $��Результат:��6   $	��Top=�6%   $��
20,180,0,0q�6=   �� 5   
   -   5         ��Name$ Result��5      $	��Top=�6$   $
��Left=�6<   $	��150��6W   $��150,180,0,0q�6c   5      5      