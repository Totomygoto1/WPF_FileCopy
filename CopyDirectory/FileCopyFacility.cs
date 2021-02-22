using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CopyDirectory
{
    public class FileCopyFacility 
    {
        public List<string> _listFiles = new List<string>();
        public string message = "";


        public int DirectoryCopy(string sourceDirName, string destDirName, bool copySubDirs)
        {

            try
            {
                DirectoryInfo dir = new DirectoryInfo(sourceDirName);
                DirectoryInfo[] dirs = dir.GetDirectories();

                FileInfo[] files = dir.GetFiles();

                if (!Directory.Exists(destDirName))
                {
                    try
                    {
                        Directory.CreateDirectory(destDirName);

                    }
                    catch (Exception e)
                    {
                        message = "Please make sure drive and folder path is correct for destination folder";
                        return 1;
                    }
                }

                foreach (FileInfo file in files)
                {
                    string temppathfrom = Path.Combine(sourceDirName, file.Name);
                    string temppath = Path.Combine(destDirName, file.Name);
                    file.CopyTo(temppath, false);
                    _listFiles.Add("Copy from: " + temppathfrom + " Copy to: " + temppath);
                }

                if (copySubDirs)
                {

                    foreach (DirectoryInfo subdir in dirs)
                    {
                        string temppathfrom = Path.Combine(sourceDirName, subdir.Name);
                        string temppath = Path.Combine(destDirName, subdir.Name);
                        DirectoryCopy(subdir.FullName, temppath, copySubDirs);
                        _listFiles.Add("Copy from: " + temppathfrom + " Copy to: " + temppath);
                    }
                }

            }
            catch (Exception e)
            {
                message = "Please make sure drive and folder path is correct for source folder";
                return 1;
            }

            return 0;

        }


    }
}
