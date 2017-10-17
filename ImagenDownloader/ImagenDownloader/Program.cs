using System;
using System.Drawing;
using System.Drawing.Imaging;
using System.IO;
using System.Net;

namespace ImagenDownloader
{
    class Program
    {
        
        static void Main(string[] args)
        {
            for (int i = 1; i < 167; i++)
            {
                /*try
                {
                    DownloadImage di = new DownloadImage("https://image.slidesharecdn.com/material-didctico-de-base-de-datos-i-final-1234384652325142-3/95/material-didctico-de-base-de-datos-i-final-" + i + "-1024.jpg");
                    di.Download();
                    di.SaveImage(i.ToString(), ImageFormat.Jpeg);
                    Console.WriteLine(i.ToString() + ".Jpg guardado...");
                }
                catch (Exception ee)
                {
                    Console.WriteLine(ee.Message);
                }  */

                try
                {
                    string oldFilePath = @"C:\Users\LaMasPerrona\Documents\TRAYECTORIA ESCOLAR\ImagenDownloader\ImagenDownloader\bin\Debug\"+i.ToString(); // Full path of old file
                    string newFilePath = @"C:\Users\LaMasPerrona\Documents\Abel\Tratamiento de la Informacion 2017\2017\" + i.ToString() + ".jpg"; // Full path of new file
                    if (File.Exists(newFilePath))
                    {
                        File.Delete(newFilePath);
                    }
                    File.Move(oldFilePath, newFilePath);
                }
                catch (Exception ee)
                {

                    Console.WriteLine(ee.Message);
                }

            }
            Console.ReadKey();
        }
    }
}
