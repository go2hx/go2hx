package stdgo._internal.internal.xcoff;
function openArchive(_name:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_Archive.Archive>; var _1 : stdgo.Error; } {
        var __tmp__ = stdgo._internal.os.Os_open.open(_name?.__copy__()), _f:stdgo.Ref<stdgo._internal.os.Os_File.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        var __tmp__ = stdgo._internal.internal.xcoff.Xcoff_newArchive.newArchive(stdgo.Go.asInterface(_f)), _arch:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_Archive.Archive> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _f.close();
            return { _0 : null, _1 : _err };
        };
        _arch._closer = stdgo.Go.asInterface(_f);
        return { _0 : _arch, _1 : (null : stdgo.Error) };
    }