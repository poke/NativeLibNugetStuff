using NativeLibNugetStuff.Wrapper;

namespace NativeLibNugetStuff.Lib
{
    public class Utility
    {
        public int DoStuff(int num)
        {
            return NativeLibrary.do_stuff(num);
        }
    }
}
