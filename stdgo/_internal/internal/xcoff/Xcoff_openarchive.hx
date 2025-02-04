package stdgo._internal.internal.xcoff;
function openArchive(_name:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_archive.Archive>; var _1 : stdgo.Error; } {
        var __tmp__ = stdgo._internal.os.Os_open.open(_name?.__copy__()), _f:stdgo.Ref<stdgo._internal.os.Os_file.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        var __tmp__ = stdgo._internal.internal.xcoff.Xcoff_newarchive.newArchive(stdgo.Go.asInterface(_f)), _arch:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_archive.Archive> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            @:check2r _f.close();
            return { _0 : null, _1 : _err };
        };
        (@:checkr _arch ?? throw "null pointer dereference")._closer = stdgo.Go.asInterface(_f);
        return { _0 : _arch, _1 : (null : stdgo.Error) };
    }
