package stdgo._internal.internal.xcoff;
function openArchive(_name:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_archive.Archive>; var _1 : stdgo.Error; } {
        var __tmp__ = stdgo._internal.os.Os_open.open(_name?.__copy__()), _f:stdgo.Ref<stdgo._internal.os.Os_file.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/ar.go#L78"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/ar.go#L79"
            return { _0 : null, _1 : _err };
        };
        var __tmp__ = stdgo._internal.internal.xcoff.Xcoff_newarchive.newArchive(stdgo.Go.asInterface(_f)), _arch:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_archive.Archive> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/ar.go#L82"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/ar.go#L83"
            _f.close();
            //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/ar.go#L84"
            return { _0 : null, _1 : _err };
        };
        (@:checkr _arch ?? throw "null pointer dereference")._closer = stdgo.Go.asInterface(_f);
        //"file:///home/runner/.go/go1.21.3/src/internal/xcoff/ar.go#L87"
        return { _0 : _arch, _1 : (null : stdgo.Error) };
    }
