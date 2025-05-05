package stdgo._internal.fmt;
function sprintf(_format:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):stdgo.GoString {
        var _a = new stdgo.Slice<stdgo.AnyInterface>(_a.length, 0, ..._a);
        var _p = stdgo._internal.fmt.Fmt__newprinter._newPrinter();
        //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L239"
        _p._doPrintf(_format?.__copy__(), _a);
        var _s = (((@:checkr _p ?? throw "null pointer dereference")._buf : stdgo.GoString)?.__copy__() : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L241"
        _p._free();
        //"file:///home/runner/.go/go1.21.3/src/fmt/print.go#L242"
        return _s?.__copy__();
    }
