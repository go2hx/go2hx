package _internal.encoding.base64_test;
function exampleEncoding_Decode():Void {
        var _str = ("SGVsbG8sIHdvcmxkIQ==" : stdgo.GoString);
        var _dst = (new stdgo.Slice<stdgo.GoUInt8>((stdgo._internal.encoding.base64.Base64_stdEncoding.stdEncoding.decodedLen((_str.length)) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var __tmp__ = stdgo._internal.encoding.base64.Base64_stdEncoding.stdEncoding.decode(_dst, (_str : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("decode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            return;
        };
        _dst = (_dst.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.fmt.Fmt_printf.printf(("%q\n" : stdgo.GoString), stdgo.Go.toInterface(_dst));
    }
