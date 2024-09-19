package _internal.encoding.base64_test;
function exampleEncoding_EncodeToString():Void {
        var _data = (("any + old & data" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        var _str = (stdgo._internal.encoding.base64.Base64_stdEncoding.stdEncoding.encodeToString(_data)?.__copy__() : stdgo.GoString);
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_str));
    }
