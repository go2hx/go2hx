package stdgo._internal.fmt;
import stdgo._internal.errors.Errors;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.os.Os;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.io.Io;
import stdgo._internal.internal.fmtsort.Fmtsort;
import stdgo._internal.math.Math;
function appendf(_b:stdgo.Slice<stdgo.GoUInt8>, _format:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):stdgo.Slice<stdgo.GoUInt8> {
        var _a = new stdgo.Slice<stdgo.AnyInterface>(_a.length, 0, ..._a);
        var _p = stdgo._internal.fmt.Fmt__newPrinter._newPrinter();
        @:check2r _p._doPrintf(_format?.__copy__(), _a);
        _b = (_b.__append__(...((@:checkr _p ?? throw "null pointer dereference")._buf : Array<stdgo.GoUInt8>)));
        @:check2r _p._free();
        return _b;
    }
