package stdgo._internal.go.printer;
@:keep @:allow(stdgo._internal.go.printer.Printer.T_sizeCounter_asInterface) class T_sizeCounter_static_extension {
    @:keep
    @:tdfield
    static public function write( _c:stdgo.Ref<stdgo._internal.go.printer.Printer_t_sizecounter.T_sizeCounter>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.go.printer.Printer_t_sizecounter.T_sizeCounter> = _c;
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1789"
        if (!(@:checkr _c ?? throw "null pointer dereference")._hasNewline) {
            //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1790"
            for (__0 => _b in _p) {
                //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1791"
                if (((_b == (10 : stdgo.GoUInt8)) || (_b == (12 : stdgo.GoUInt8)) : Bool)) {
                    (@:checkr _c ?? throw "null pointer dereference")._hasNewline = true;
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1793"
                    break;
                };
            };
        };
        (@:checkr _c ?? throw "null pointer dereference")._size = ((@:checkr _c ?? throw "null pointer dereference")._size + ((_p.length)) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/go/printer/nodes.go#L1798"
        return { _0 : (_p.length), _1 : (null : stdgo.Error) };
    }
}
