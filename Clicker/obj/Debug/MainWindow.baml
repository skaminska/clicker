   M S B A M L   `   `   `  ����B  >Clicker, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:ClickerClicker  5   	       Clicker.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   'localclr-namespace:Clicker     5   	     � Title$  
MainWindow��5   	   $	��450��6   $	��800��6)    � 	Resources 5	         FocusVisual �� Property �� Value J� SnapsToDevicePixels �� StrokeDashArray  Button.Static.Background �� Color  Button.Static.Border  Button.MouseOver.Background  Button.MouseOver.Border  Button.Pressed.Background  Button.Pressed.Border  Button.Disabled.Background  Button.Disabled.Border 	 Button.Disabled.Foreground 
 ButtonStyle1 �� 
TargetType �� 
TargetType	 �Name
 J� RenderTransformOrigin A�Name �� Triggers P� Property P� Value �� 
TargetName �� ScaleX �� ScaleY��%^  &	        &	 �     &	 �     &	 �     &	     &	 6    &	 Y    &	 |    &	 �    &		 �    &	
 �    7   7  7  �� 5
   
   .�5      ��  � �� 5      �� 5      .R�5      �� $��2q�6$    . #��� ��6J   $��1��6�   $	 1 2R�6�   5      5      5      �� 5   
   $ 	#FFDDDDDD��6;   �� 5   
   $ 	#FF707070��67   �� 5   
   $ 	#FFBEE6FD��6>   �� 5   
   $ 	#FF3C7FB1��6:   �� 5   
   $ 	#FFC4E5F6��6<   �� 5   
   $ 	#FF2C628B��68   �� 5   
   $ 	#FFF4F4F4��6=   �� 5   
   $ 	#FFADB2B5��69   �� 5   
   $ 	#FF838383��6=   �� 5   
   " ��6%   .�5      ��  �@�FocusVisualStyle8   61   �� 5       � ��8  6+   �� 5       � ��8  6,   �� 5        � ��# � ��6+   �� 5!       � ��$ 0q�60   �� 5"       � ��$ Center=�6;   �� 5#       � ��$ Center=�69   �� 5$       � ��$ 1q�6(   �� 5%       � �� 5&      �� 5'      " ��6&   .R�5(      � $	 RootGrid��6?   $
 0.5,0.5&�6   .+�5)      A� $ 	OuterRing��6&   $	��200��6:   $	��200��6G   #��z��6U   �� 5*      $��Center=�6/   $��Center=�6L   5+       5,      P� 5-       � �� . . �5.   "   �� $ RootGrid��6)    � z� 5/   &   �� 50   *   $	 0.9Q�69   $	 0.9Q�6F   52   #   53      55      57      58      59      .��5;      � .+�5<   
   �� $��Kliknięcie��6   $
��Left=�6%   $��	74,37,0,0q�6@   $	��Top=�6S   $��18(�6k   $
��Bold"�6y   �� 5=   
   $��Monety na sekundę��6   $
��Left=�6,   $��
270,37,0,0q�6G   $	��Top=�6[   $��18(�6s   $
��Bold"�6�   �� 5>   
   -   5         ��Name$ clickUpgradeButton��5>      $��Ulepsz��6-   $
��Left=�6>   $��
50,100,0,0q�6Y   $	��Top=�6m   $	��141��6�   $��40��6�   $��15(�6�   {�.  6�   �� 5?   
   -   5        $ moneyPerSecUpgradeButton��5?      $��Ulepsz��63   $
��Left=�6D   $��289,101,0,0q�6_   $	��Top=�6t   $	��141��6�   $��40��6�   $��15(�6�   {�.  6�   �� 5@   
   $��Monety��6   $
��Left=�6!   $��
522,26,0,0q�6<   $	��Top=�6P   �� 5A   
   $��Monety za kliknięcie��6   $
��Left=�6/   $��
522,73,0,0q�6J   $	��Top=�6^   �� 5B   
   $��Monety na sekundę��6   $
��Left=�6,   $��522,122,0,0q�6G   $	��Top=�6\   �� 5C   
   -   5         ��Name$ 
moneyLabel��5C      $��Label��6$   $
��Left=�64   $��
680,26,0,0q�6O   $	��Top=�6c   �� 5D   
   -   5        $ moneyPerClickLabel��5D      $��Label��6,   $
��Left=�6<   $��
680,73,0,0q�6W   $	��Top=�6k   �� 5E   
   -   5        $ moneyPerSecLabel��5E      $��Label��6*   $
��Left=�6:   $��680,122,0,0q�6U   $	��Top=�6j   �� 5F   
   -   5        $ clickUpgradeCostLabel��5F      $��Label��6/   $
��Left=�6?   $��
105,69,0,0q�6Z   $	��Top=�6n   �� 5G   
   -   5        $! moneyPerSecUpgradeCostLabel��5G      $��Label��65   $
��Left=�6E   $��
342,70,0,0q�6`   $	��Top=�6t   �� 5H   
   -   5        $ ClickButton��5H      $
��Left=�6&   $	��245��6A   $��
10,165,0,0q�6N   $	��Top=�6b   $	��774��6z   $��20(�6�   4  .System.Windows.Automation.AutomationProperties   IsOffscreenBehavior$ 	Offscreen=�6�   #��� 
 6�   ��5I      �� 5J       �� ImageSource$ coin.png��6    j� Stretch$ Uniform=�64   5L      5N      5O      