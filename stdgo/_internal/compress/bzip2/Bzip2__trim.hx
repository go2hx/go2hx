package stdgo._internal.compress.bzip2;
function _trim(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoString {
        {};
        //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2_test.go#L34"
        if (((_b.length) < (1024 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2_test.go#L35"
            return stdgo._internal.fmt.Fmt_sprintf.sprintf(("%q" : stdgo.GoString), stdgo.Go.toInterface(_b))?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/compress/bzip2/bzip2_test.go#L37"
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("%q..." : stdgo.GoString), stdgo.Go.toInterface((_b.__slice__(0, (1024 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)))?.__copy__();
    }
