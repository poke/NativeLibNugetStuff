using System.Runtime.InteropServices;

namespace NativeLibNugetStuff.Wrapper
{
    public static class NativeLibrary
    {
        [DllImport("native.dll")]
        public static extern int do_stuff(int num);
    }
}
