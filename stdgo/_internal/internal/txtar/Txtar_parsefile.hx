package stdgo._internal.internal.txtar;
function parseFile(_file:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.internal.txtar.Txtar_archive.Archive>; var _1 : stdgo.Error; } {
        var __tmp__ = stdgo._internal.os.Os_readfile.readFile(_file?.__copy__()), _data:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/internal/txtar/archive.go#L70"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/internal/txtar/archive.go#L71"
            return { _0 : null, _1 : _err };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/txtar/archive.go#L73"
        return { _0 : stdgo._internal.internal.txtar.Txtar_parse.parse(_data), _1 : (null : stdgo.Error) };
    }
