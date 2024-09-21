package _internal.encoding.base64_test;
function exampleEncoding_Encode():Void {
        var _data = (("Hello, world!" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        var _dst = (new stdgo.Slice<stdgo.GoUInt8>((stdgo._internal.encoding.base64.Base64_stdEncoding.stdEncoding.encodedLen((_data.length)) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.encoding.base64.Base64_stdEncoding.stdEncoding.encode(_dst, _data);
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface((_dst : stdgo.GoString)));
    }
