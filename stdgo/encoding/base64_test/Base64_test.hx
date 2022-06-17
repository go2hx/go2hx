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
function example():Void {
        var _msg:GoString = ((("Hello, 世界" : GoString)));
        var _encoded:GoString = stdgo.encoding.base64.Base64.stdEncoding.encodeToString(((_msg : Slice<GoByte>)));
        stdgo.fmt.Fmt.println(_encoded);
        var __tmp__ = stdgo.encoding.base64.Base64.stdEncoding.decodeString(_encoded), _decoded:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo.fmt.Fmt.println(((("decode error:" : GoString))), _err);
            return;
        };
        stdgo.fmt.Fmt.println(((_decoded : GoString)));
    }
function exampleEncoding_EncodeToString():Void {
        var _data:Slice<GoUInt8> = ((((("any + old & data" : GoString))) : Slice<GoByte>));
        var _str:GoString = stdgo.encoding.base64.Base64.stdEncoding.encodeToString(_data);
        stdgo.fmt.Fmt.println(_str);
    }
function exampleEncoding_Encode():Void {
        var _data:Slice<GoUInt8> = ((((("Hello, world!" : GoString))) : Slice<GoByte>));
        var _dst:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((stdgo.encoding.base64.Base64.stdEncoding.encodedLen((_data != null ? _data.length : ((0 : GoInt)))) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        stdgo.encoding.base64.Base64.stdEncoding.encode(_dst, _data);
        stdgo.fmt.Fmt.println(((_dst : GoString)));
    }
function exampleEncoding_DecodeString():Void {
        var _str:GoString = ((("c29tZSBkYXRhIHdpdGggACBhbmQg77u/" : GoString)));
        var __tmp__ = stdgo.encoding.base64.Base64.stdEncoding.decodeString(_str), _data:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo.fmt.Fmt.println(((("error:" : GoString))), _err);
            return;
        };
        stdgo.fmt.Fmt.printf(((("%q\n" : GoString))), Go.toInterface(_data));
    }
function exampleEncoding_Decode():Void {
        var _str:GoString = ((("SGVsbG8sIHdvcmxkIQ==" : GoString)));
        var _dst:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((stdgo.encoding.base64.Base64.stdEncoding.decodedLen((_str != null ? _str.length : ((0 : GoInt)))) : GoInt)).toBasic()) ((0 : GoUInt8))]);
        var __tmp__ = stdgo.encoding.base64.Base64.stdEncoding.decode(_dst, ((_str : Slice<GoByte>))), _n:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo.fmt.Fmt.println(((("decode error:" : GoString))), _err);
            return;
        };
        _dst = ((_dst.__slice__(0, _n) : Slice<GoUInt8>));
        stdgo.fmt.Fmt.printf(((("%q\n" : GoString))), Go.toInterface(_dst));
    }
function exampleNewEncoder():Void {
        var _input:Slice<GoUInt8> = ((((("foo" : GoString)) + ((haxe.io.Bytes.ofHex("00") : GoString)) + (("bar" : GoString))) : Slice<GoByte>));
        var _encoder:stdgo.io.Io.WriteCloser = stdgo.encoding.base64.Base64.newEncoder(stdgo.encoding.base64.Base64.stdEncoding, stdgo.os.Os.stdout);
        _encoder.write(_input);
        _encoder.close();
    }
