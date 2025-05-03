package stdgo._internal.fmt;
function sprint(_a:haxe.Rest<stdgo.AnyInterface>):stdgo.GoString {
        var _a = new stdgo.Slice<stdgo.AnyInterface>(_a.length, 0, ..._a);
        var _p = stdgo._internal.fmt.Fmt__newprinter._newPrinter();
        //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L279"
        _p._doPrint(_a);
        var _s = (((@:checkr _p ?? throw "null pointer dereference")._buf : stdgo.GoString)?.__copy__() : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L281"
        _p._free();
        //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L282"
        return _s?.__copy__();
    }
