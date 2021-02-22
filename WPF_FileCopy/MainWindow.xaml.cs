using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using CopyDirectory;

namespace WPF_FileCopy
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void btnCopyFiles_Click(object sender, RoutedEventArgs e)
        {
            // txtDestination.Text = " C:\\CopiedFiles ";

            lblMessage.Content = "";
            string source = txtSource.Text;
            string destination = txtDestination.Text;

            CopyDirectory.FileCopyFacility cf = new CopyDirectory.FileCopyFacility();
            int result = cf.DirectoryCopy(@source, @destination, true);

            if (result == 0)
            {
                lblMessage.Content += "File Copy successfull ..";

                lsbFileInfo.Items.Clear();
                lsbFileInfo.ItemsSource = cf._listFiles;

            }
            else
            {
                lblMessage.Content += cf.message;

            }

        }

    }
}
