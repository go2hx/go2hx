package stdgo._internal.encoding.json;
function _newScanner():stdgo.Ref<stdgo._internal.encoding.json.Json_t_scanner.T_scanner> {
        var _scan = (stdgo.Go.typeAssert((@:check2 stdgo._internal.encoding.json.Json__scannerpool._scannerPool.get() : stdgo.Ref<stdgo._internal.encoding.json.Json_t_scanner.T_scanner>)) : stdgo.Ref<stdgo._internal.encoding.json.Json_t_scanner.T_scanner>);
        (@:checkr _scan ?? throw "null pointer dereference")._bytes = (0i64 : stdgo.GoInt64);
        @:check2r _scan._reset();
        return _scan;
    }
