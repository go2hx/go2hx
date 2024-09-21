package _internal.encoding.base64_test;
function example():Void {
        var _msg = ("Hello, 世界" : stdgo.GoString);
        var _encoded = (stdgo._internal.encoding.base64.Base64_stdEncoding.stdEncoding.encodeToString((_msg : stdgo.Slice<stdgo.GoUInt8>))?.__copy__() : stdgo.GoString);
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_encoded));
        var __tmp__ = stdgo._internal.encoding.base64.Base64_stdEncoding.stdEncoding.decodeString(_encoded?.__copy__()), _decoded:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("decode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            return;
        };
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface((_decoded : stdgo.GoString)));
    }
