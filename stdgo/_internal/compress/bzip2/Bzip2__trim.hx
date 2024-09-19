package stdgo._internal.compress.bzip2;
function _trim(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoString {
        {};
        if (((_b.length) < (1024 : stdgo.GoInt) : Bool)) {
            return stdgo._internal.fmt.Fmt_sprintf.sprintf(("%q" : stdgo.GoString), stdgo.Go.toInterface(_b))?.__copy__();
        };
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("%q..." : stdgo.GoString), stdgo.Go.toInterface((_b.__slice__(0, (1024 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)))?.__copy__();
    }
