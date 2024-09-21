package _internal.crypto.sha1_test;
function exampleNew():Void {
        var _h = (stdgo._internal.crypto.sha1.Sha1_new_.new_() : stdgo._internal.hash.Hash_Hash.Hash);
        stdgo._internal.io.Io_writeString.writeString(_h, ("His money is twice tainted:" : stdgo.GoString));
        stdgo._internal.io.Io_writeString.writeString(_h, (" \'taint yours and \'taint mine." : stdgo.GoString));
        stdgo._internal.fmt.Fmt_printf.printf(("% x" : stdgo.GoString), stdgo.Go.toInterface(_h.sum((null : stdgo.Slice<stdgo.GoUInt8>))));
    }
