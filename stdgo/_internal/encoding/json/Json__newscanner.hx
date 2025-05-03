package stdgo._internal.encoding.json;
function _newScanner():stdgo.Ref<stdgo._internal.encoding.json.Json_t_scanner.T_scanner> {
        var _scan = (stdgo.Go.typeAssert((stdgo._internal.encoding.json.Json__scannerpool._scannerPool.get() : stdgo.Ref<stdgo._internal.encoding.json.Json_t_scanner.T_scanner>)) : stdgo.Ref<stdgo._internal.encoding.json.Json_t_scanner.T_scanner>);
        (@:checkr _scan ?? throw "null pointer dereference")._bytes = (0i64 : stdgo.GoInt64);
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner.go#L97"
        _scan._reset();
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner.go#L98"
        return _scan;
    }
