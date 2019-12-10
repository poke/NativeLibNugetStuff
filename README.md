# NativeLibNugetStuff

This is an example .NET solution that shows how to bundle a native library inside a NuGet package. The solution contains the following parts:

- A native library, written in Rust, that exports a function.
- A .NET wrapper library that consumes that native library, and is published as a NuGet package.
- A .NET library that consumes the wrapper library NuGet, and is published as a NuGet package.
- A .NET Core console application that consumes the library NuGet and indirectly calls the native library.

## Build

To build and run the solution, execute `./build.ps1` in PowerShell. The script will automatically build and package the projects in the right order, and finally run the consumer application.

### Prerequisites

- .NET Core 3.1
- A current Rust/Cargo compiler toolchain to build the native library.
