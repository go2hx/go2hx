package stdgo._internal.path.filepath;
function _readDirNames(_dirname:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } {
        var __tmp__ = stdgo._internal.os.Os_open.open(_dirname?.__copy__()), _f:stdgo.Ref<stdgo._internal.os.Os_file.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/path/filepath/path.go#L615"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/path/filepath/path.go#L616"
            return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : _err };
        };
        var __tmp__ = _f.readdirnames((-1 : stdgo.GoInt)), _names:stdgo.Slice<stdgo.GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/path/filepath/path.go#L619"
        _f.close();
        //"file:///home/runner/.go/go1.21.3/src/path/filepath/path.go#L620"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/path/filepath/path.go#L621"
            return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : _err };
        };
        //"file:///home/runner/.go/go1.21.3/src/path/filepath/path.go#L623"
        stdgo._internal.sort.Sort_strings.strings(_names);
        //"file:///home/runner/.go/go1.21.3/src/path/filepath/path.go#L624"
        return { _0 : _names, _1 : (null : stdgo.Error) };
    }
