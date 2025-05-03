package stdgo._internal.fmt;
function append(_b:stdgo.Slice<stdgo.GoUInt8>, _a:haxe.Rest<stdgo.AnyInterface>):stdgo.Slice<stdgo.GoUInt8> {
        var _a = new stdgo.Slice<stdgo.AnyInterface>(_a.length, 0, ..._a);
        var _p = stdgo._internal.fmt.Fmt__newprinter._newPrinter();
        //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L289"
        _p._doPrint(_a);
        _b = (_b.__append__(...((@:checkr _p ?? throw "null pointer dereference")._buf : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L291"
        _p._free();
        //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L292"
        return _b;
    }
