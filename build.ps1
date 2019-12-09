Write-Host 'NativeLibNugetStuff' -ForegroundColor Blue
Write-Host 'Building native library (Rust)' -ForegroundColor Cyan
cargo build --manifest-path=native/Cargo.toml --release

Write-Host 'Copying native library to wrapper project' -ForegroundColor Cyan
cp .\native\target\release\native.dll .\NativeLibNugetStuff.Wrapper\

Write-Host 'Building NativeLibNugetStuff.Wrapper' -ForegroundColor Cyan
dotnet pack .\NativeLibNugetStuff.Wrapper\ -o .\nugets

Write-Host 'Building NativeLibNugetStuff.Lib' -ForegroundColor Cyan
dotnet pack .\NativeLibNugetStuff.Lib\ -o .\nugets

Write-Host 'Publishing NativeLibNugetStuff.Consumer' -ForegroundColor Cyan
dotnet publish .\NativeLibNugetStuff.Consumer\ -o .\output

Write-Host 'Running published NativeLibNugetStuff.Consumer' -ForegroundColor Cyan
Write-Host
.\output\NativeLibNugetStuff.Consumer.exe
