package stdgo._internal.fmt;
function sprintln(_a:haxe.Rest<stdgo.AnyInterface>):stdgo.GoString {
        var _a = new stdgo.Slice<stdgo.AnyInterface>(_a.length, 0, ..._a);
        var _p = stdgo._internal.fmt.Fmt__newprinter._newPrinter();
        @:check2r _p._doPrintln(_a);
        var _s = (((@:checkr _p ?? throw "null pointer dereference")._buf : stdgo.GoString)?.__copy__() : stdgo.GoString);
        @:check2r _p._free();
        return _s?.__copy__();
    }
