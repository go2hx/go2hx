package stdgo._internal.encoding.base64_test;
import stdgo._internal.encoding.base64.Base64;
function example():Void {
        var _msg = ("Hello, 世界" : stdgo.GoString);
        var _encoded = stdgo._internal.encoding.base64.Base64.stdEncoding.encodeToString((_msg : stdgo.Slice<stdgo.GoByte>))?.__copy__();
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_encoded));
        var __tmp__ = stdgo._internal.encoding.base64.Base64.stdEncoding.decodeString(_encoded?.__copy__()), _decoded:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("decode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            return;
        };
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface((_decoded : stdgo.GoString)));
    }
function exampleEncoding_EncodeToString():Void {
        var _data = (("any + old & data" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        var _str = stdgo._internal.encoding.base64.Base64.stdEncoding.encodeToString(_data)?.__copy__();
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_str));
    }
function exampleEncoding_Encode():Void {
        var _data = (("Hello, world!" : stdgo.GoString) : stdgo.Slice<stdgo.GoByte>);
        var _dst = (new stdgo.Slice<stdgo.GoUInt8>((stdgo._internal.encoding.base64.Base64.stdEncoding.encodedLen((_data.length)) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.encoding.base64.Base64.stdEncoding.encode(_dst, _data);
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface((_dst : stdgo.GoString)));
    }
function exampleEncoding_DecodeString():Void {
        var _str = ("c29tZSBkYXRhIHdpdGggACBhbmQg77u/" : stdgo.GoString);
        var __tmp__ = stdgo._internal.encoding.base64.Base64.stdEncoding.decodeString(_str?.__copy__()), _data:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            return;
        };
        stdgo._internal.fmt.Fmt.printf(("%q\n" : stdgo.GoString), stdgo.Go.toInterface(_data));
    }
function exampleEncoding_Decode():Void {
        var _str = ("SGVsbG8sIHdvcmxkIQ==" : stdgo.GoString);
        var _dst = (new stdgo.Slice<stdgo.GoUInt8>((stdgo._internal.encoding.base64.Base64.stdEncoding.decodedLen((_str.length)) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var __tmp__ = stdgo._internal.encoding.base64.Base64.stdEncoding.decode(_dst, (_str : stdgo.Slice<stdgo.GoByte>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("decode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            return;
        };
        _dst = (_dst.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.fmt.Fmt.printf(("%q\n" : stdgo.GoString), stdgo.Go.toInterface(_dst));
    }
function exampleNewEncoder():Void {
        var _input = (stdgo.Go.str("foo", 0, "bar") : stdgo.Slice<stdgo.GoByte>);
        var _encoder = stdgo._internal.encoding.base64.Base64.newEncoder(stdgo._internal.encoding.base64.Base64.stdEncoding, stdgo.Go.asInterface(stdgo._internal.os.Os.stdout));
        _encoder.write(_input);
        _encoder.close();
    }
