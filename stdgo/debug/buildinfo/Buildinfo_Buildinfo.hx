package stdgo.debug.buildinfo;
/**
    Package buildinfo provides access to information embedded in a Go binary
    about how it was built. This includes the Go toolchain version, and the
    set of modules used (for binaries built in module mode).
    
    Build information is available for the currently running binary in
    runtime/debug.ReadBuildInfo.
**/
class Buildinfo {
    /**
        ReadFile returns build information embedded in a Go binary
        file at the given path. Most information is only available for binaries built
        with module support.
    **/
    static public inline function readFile(_name:String):stdgo.Tuple<stdgo._internal.runtime.debug.Debug_BuildInfo.BuildInfo, stdgo.Error> {
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.debug.buildinfo.Buildinfo_readFile.readFile(_name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Read returns build information embedded in a Go binary file
        accessed through the given ReaderAt. Most information is only available for
        binaries built with module support.
    **/
    static public inline function read(_r:stdgo._internal.io.Io_ReaderAt.ReaderAt):stdgo.Tuple<stdgo._internal.runtime.debug.Debug_BuildInfo.BuildInfo, stdgo.Error> {
        return {
            final obj = stdgo._internal.debug.buildinfo.Buildinfo_read.read(_r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
