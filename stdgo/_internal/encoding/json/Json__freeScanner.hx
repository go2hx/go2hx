package stdgo._internal.encoding.json;
function _freeScanner(_scan:stdgo.Ref<stdgo._internal.encoding.json.Json_T_scanner.T_scanner>):Void {
        if (((_scan._parseState.length) > (1024 : stdgo.GoInt) : Bool)) {
            _scan._parseState = (null : stdgo.Slice<stdgo.GoInt>);
        };
        stdgo._internal.encoding.json.Json__scannerPool._scannerPool.put(stdgo.Go.toInterface(stdgo.Go.asInterface(_scan)));
    }
