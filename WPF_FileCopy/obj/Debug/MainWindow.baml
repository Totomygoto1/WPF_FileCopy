   M S B A M L   `   `   `  ����G  CWPF_FileCopy, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:WPF_FileCopyWPF_FileCopy  5   	       WPF_FileCopy.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ,localclr-namespace:WPF_FileCopy     5   	     � Title$  File Copy Facility��5   	   $	��450��6$   $	��800��61   ��5	      �� 5
   
    �� ImageSource$  Resources/blue_pattern.jpg��6   6@   .��5      �  � ColumnDefinitions 5   
   �� 5      $
��197* �6   �� 5      $
��200* �6   .+�5   
   �� -   5         ��Name$ 	txtSource��5      $
��Left=�6%   $��23��6@   $��	76,75,0,0q�6L    �� TextWrapping$
 Wrap=�6_   $�� ��6s   $	��Top=�6{   $	��223��6�   4  .System.Windows.Automation.AutomationProperties   Name$ txtSouce��6�   �� 5   
   -   5        $ txtDestination��5      $
��Left=�6*   $��23��6E   $��
323,75,0,0q�6Q   $
 Wrap=�6e   $��C:\CopiedFiles��6y   $	��Top=�6�   $	��223��6�   $ txtDestination��6�   $��2��6�   �� 5   
   $��Choose a source path:��6   $
��Left=�60   $��	76,27,0,0q�6K   $	��Top=�6^   $ 	lblSource��6v    J� RenderTransformOrigin$ -0.569,0.693&�6�   �� 5   
   -   5         ��Name$ lblDestination��5      $ ��Choose a destination path:��6(   $
��Left=�6M   $��
323,27,0,0q�6h   $	��Top=�6|   $ -3.885,0.508&�6�   $��2��6�   �� 5   
   -   5         ��Name$ btnCopyFiles��5      $��
Copy Files��6B   $
��Left=�6W   $��
76,130,0,0q�6r   $	��Top=�6�   $��75��6�   �� 5   
   -   5        $ 
lblMessage��5      $�� ��6$   $
��Left=�6/   $��199,124,0,0q�6J   $	��Top=�6_   $ -0.158,0.647&�6w   $��2��6�   $	��509��6�   �� 5   
   -   5        $ lblFileList��5      $��File Copy Information��6%   $
��Left=�6E   $��
79,185,0,0q�6`   $	��Top=�6t   �� 5   
   -   5        	 ��Name$	 lsbFileInfo��5      $
��Left=�6'   $	��160��6B   $��
79,216,0,0q�6O   $	��Top=�6c   $	��559��6{   $��2��6�   5      5      