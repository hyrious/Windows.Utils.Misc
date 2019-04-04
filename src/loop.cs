// csc /nologo /t:winexe /win32icon:loop.ico /o loop.cs
using System;
using System.Drawing;
using System.Windows.Forms;
using System.IO;
using System.Reflection;

class Loop : Form {
    [STAThread]
    static void Main() {
        Application.Run(new Loop());
    }
    public Loop() {
        this.WindowState = FormWindowState.Minimized;
        this.ShowInTaskbar = false;
        NotifyIcon icon = new NotifyIcon {
            Icon = Icon.ExtractAssociatedIcon(Assembly.GetExecutingAssembly().Location),
            Text = "Double click me to close me.",
            Visible = true
        };
        icon.DoubleClick += (s, e) => this.Close();
        Timer timer = new Timer {
            Interval = 5000,
            Enabled = true
        };
        int counter = 0;
        timer.Tick += (s, e) => {
            using (StreamWriter writer = File.AppendText(@".\loop.txt")) {
                writer.WriteLine(++counter);
            }
        };
        timer.Start();
    }
}
