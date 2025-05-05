package stdgo._internal.encoding.json;
function _freeScanner(_scan:stdgo.Ref<stdgo._internal.encoding.json.Json_t_scanner.T_scanner>):Void {
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner.go#L103"
        if ((((@:checkr _scan ?? throw "null pointer dereference")._parseState.length) > (1024 : stdgo.GoInt) : Bool)) {
            (@:checkr _scan ?? throw "null pointer dereference")._parseState = (null : stdgo.Slice<stdgo.GoInt>);
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner.go#L106"
        stdgo._internal.encoding.json.Json__scannerpool._scannerPool.put(stdgo.Go.toInterface(stdgo.Go.asInterface(_scan)));
    }
