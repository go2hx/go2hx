package _internal.crypto.sha1_test;
function exampleSum():Void {
        var _data = (("This page intentionally left blank." : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.fmt.Fmt_printf.printf(("% x" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.crypto.sha1.Sha1_sum.sum(_data)));
    }
