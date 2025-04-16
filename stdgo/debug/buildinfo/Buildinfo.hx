package stdgo.debug.buildinfo;
typedef BuildInfo = stdgo._internal.debug.buildinfo.Buildinfo_buildinfo.BuildInfo;
typedef BuildInfoPointer = stdgo._internal.debug.buildinfo.Buildinfo_buildinfopointer.BuildInfoPointer;
/**
    * Package buildinfo provides access to information embedded in a Go binary
    * about how it was built. This includes the Go toolchain version, and the
    * set of modules used (for binaries built in module mode).
    * 
    * Build information is available for the currently running binary in
    * runtime/debug.ReadBuildInfo.
**/
class Buildinfo {
    /**
        * ReadFile returns build information embedded in a Go binary
        * file at the given path. Most information is only available for binaries built
        * with module support.
    **/
    static public inline function readFile(_name:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.runtime.debug.Debug_buildinfo.BuildInfo>; var _1 : stdgo.Error; } return stdgo._internal.debug.buildinfo.Buildinfo_readfile.readFile(_name);
    /**
        * Read returns build information embedded in a Go binary file
        * accessed through the given ReaderAt. Most information is only available for
        * binaries built with module support.
    **/
    static public inline function read(_r:stdgo._internal.io.Io_readerat.ReaderAt):{ var _0 : stdgo.Ref<stdgo._internal.runtime.debug.Debug_buildinfo.BuildInfo>; var _1 : stdgo.Error; } return stdgo._internal.debug.buildinfo.Buildinfo_read.read(_r);
}
