package _internal.encoding.base64_test;
function exampleEncoding_DecodeString():Void {
        var _str = ("c29tZSBkYXRhIHdpdGggACBhbmQg77u/" : stdgo.GoString);
        var __tmp__ = stdgo._internal.encoding.base64.Base64_stdEncoding.stdEncoding.decodeString(_str?.__copy__()), _data:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            return;
        };
        stdgo._internal.fmt.Fmt_printf.printf(("%q\n" : stdgo.GoString), stdgo.Go.toInterface(_data));
    }
