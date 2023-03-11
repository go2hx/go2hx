package stdgo.encoding.base64_test;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
import stdgo.encoding.base64.Base64;
function example():Void {
        var _msg:GoString = ("Hello, 世界" : GoString);
        var _encoded:GoString = stdgo.encoding.base64.Base64.stdEncoding.encodeToString((_msg : Slice<GoByte>));
        stdgo.fmt.Fmt.println(Go.toInterface(_encoded));
        var __tmp__ = stdgo.encoding.base64.Base64.stdEncoding.decodeString(_encoded), _decoded:Slice<GoUInt8> = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            stdgo.fmt.Fmt.println(Go.toInterface(("decode error:" : GoString)), Go.toInterface(_err));
            return;
        };
        stdgo.fmt.Fmt.println(Go.toInterface((_decoded : GoString)));
    }
function exampleEncoding_EncodeToString():Void {
        var _data = (("any + old & data" : GoString) : Slice<GoByte>);
        var _str:GoString = stdgo.encoding.base64.Base64.stdEncoding.encodeToString(_data);
        stdgo.fmt.Fmt.println(Go.toInterface(_str));
    }
function exampleEncoding_Encode():Void {
        var _data = (("Hello, world!" : GoString) : Slice<GoByte>);
        var _dst = new Slice<GoUInt8>((stdgo.encoding.base64.Base64.stdEncoding.encodedLen((_data.length)) : GoInt).toBasic(), 0, ...[for (i in 0 ... (stdgo.encoding.base64.Base64.stdEncoding.encodedLen((_data.length)) : GoInt).toBasic()) (0 : GoUInt8)]);
        stdgo.encoding.base64.Base64.stdEncoding.encode(_dst, _data);
        stdgo.fmt.Fmt.println(Go.toInterface((_dst : GoString)));
    }
function exampleEncoding_DecodeString():Void {
        var _str:GoString = ("c29tZSBkYXRhIHdpdGggACBhbmQg77u/" : GoString);
        var __tmp__ = stdgo.encoding.base64.Base64.stdEncoding.decodeString(_str), _data:Slice<GoUInt8> = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            stdgo.fmt.Fmt.println(Go.toInterface(("error:" : GoString)), Go.toInterface(_err));
            return;
        };
        stdgo.fmt.Fmt.printf(("%q\n" : GoString), Go.toInterface(_data));
    }
function exampleEncoding_Decode():Void {
        var _str:GoString = ("SGVsbG8sIHdvcmxkIQ==" : GoString);
        var _dst = new Slice<GoUInt8>((stdgo.encoding.base64.Base64.stdEncoding.decodedLen((_str.length)) : GoInt).toBasic(), 0, ...[for (i in 0 ... (stdgo.encoding.base64.Base64.stdEncoding.decodedLen((_str.length)) : GoInt).toBasic()) (0 : GoUInt8)]);
        var __tmp__ = stdgo.encoding.base64.Base64.stdEncoding.decode(_dst, (_str : Slice<GoByte>)), _n:GoInt = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            stdgo.fmt.Fmt.println(Go.toInterface(("decode error:" : GoString)), Go.toInterface(_err));
            return;
        };
        _dst = (_dst.__slice__(0, _n) : Slice<GoUInt8>);
        stdgo.fmt.Fmt.printf(("%q\n" : GoString), Go.toInterface(_dst));
    }
function exampleNewEncoder():Void {
        var _input = (Go.str("foo", 0, "bar") : Slice<GoByte>);
        var _encoder:stdgo.io.Io.WriteCloser = stdgo.encoding.base64.Base64.newEncoder(stdgo.encoding.base64.Base64.stdEncoding, Go.asInterface(stdgo.os.Os.stdout));
        _encoder.write(_input);
        _encoder.close();
    }
