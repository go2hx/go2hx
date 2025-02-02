package stdgo._internal.debug.buildinfo;
function read(_r:stdgo._internal.io.Io_ReaderAt.ReaderAt):{ var _0 : stdgo.Ref<stdgo._internal.runtime.debug.Debug_BuildInfo.BuildInfo>; var _1 : stdgo.Error; } {
        var __tmp__ = stdgo._internal.debug.buildinfo.Buildinfo__readRawBuildInfo._readRawBuildInfo(_r), _vers:stdgo.GoString = __tmp__._0, _mod:stdgo.GoString = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        var __tmp__ = stdgo._internal.runtime.debug.Debug_parseBuildInfo.parseBuildInfo(_mod?.__copy__()), _bi:stdgo.Ref<stdgo._internal.runtime.debug.Debug_BuildInfo.BuildInfo> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        (@:checkr _bi ?? throw "null pointer dereference").goVersion = _vers?.__copy__();
        return { _0 : _bi, _1 : (null : stdgo.Error) };
    }
