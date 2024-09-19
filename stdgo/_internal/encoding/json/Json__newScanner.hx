package stdgo._internal.encoding.json;
function _newScanner():stdgo.Ref<stdgo._internal.encoding.json.Json_T_scanner.T_scanner> {
        var _scan = (stdgo.Go.typeAssert((stdgo._internal.encoding.json.Json__scannerPool._scannerPool.get() : stdgo.Ref<stdgo._internal.encoding.json.Json_T_scanner.T_scanner>)) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_scanner.T_scanner>);
        _scan._bytes = (0i64 : stdgo.GoInt64);
        _scan._reset();
        return _scan;
    }
