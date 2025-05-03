package stdgo._internal.debug.pe;
function open(_name:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.debug.pe.Pe_file.File>; var _1 : stdgo.Error; } {
        var __tmp__ = stdgo._internal.os.Os_open.open(_name?.__copy__()), _f:stdgo.Ref<stdgo._internal.os.Os_file.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/debug/pe/file.go#L48"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/debug/pe/file.go#L49"
            return { _0 : null, _1 : _err };
        };
        var __tmp__ = stdgo._internal.debug.pe.Pe_newfile.newFile(stdgo.Go.asInterface(_f)), _ff:stdgo.Ref<stdgo._internal.debug.pe.Pe_file.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/debug/pe/file.go#L52"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/debug/pe/file.go#L53"
            _f.close();
            //"file:///home/runner/.go/go1.21.3/src/debug/pe/file.go#L54"
            return { _0 : null, _1 : _err };
        };
        (@:checkr _ff ?? throw "null pointer dereference")._closer = stdgo.Go.asInterface(_f);
        //"file:///home/runner/.go/go1.21.3/src/debug/pe/file.go#L57"
        return { _0 : _ff, _1 : (null : stdgo.Error) };
    }
