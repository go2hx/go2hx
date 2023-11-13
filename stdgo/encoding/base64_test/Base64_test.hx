package stdgo.encoding.base64_test;
import stdgo.encoding.base64.Base64;
function example():Void {
        var _msg:stdgo.GoString = ("Hello, 世界" : stdgo.GoString)?.__copy__();
        var _encoded:stdgo.GoString = stdgo.encoding.base64.Base64.stdEncoding.encodeToString((_msg : stdgo.Slice<stdgo.StdGoTypes.GoByte>))?.__copy__();
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_encoded));
        var __tmp__ = stdgo.encoding.base64.Base64.stdEncoding.decodeString(_encoded?.__copy__()), _decoded:stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo.fmt.Fmt.println(stdgo.Go.toInterface(("decode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            return;
        };
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface((_decoded : stdgo.GoString)));
    }
function exampleEncoding_EncodeToString():Void {
        var _data = (("any + old & data" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>);
        var _str:stdgo.GoString = stdgo.encoding.base64.Base64.stdEncoding.encodeToString(_data)?.__copy__();
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_str));
    }
function exampleEncoding_Encode():Void {
        var _data = (("Hello, world!" : stdgo.GoString) : stdgo.Slice<stdgo.StdGoTypes.GoByte>);
        var _dst = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((stdgo.encoding.base64.Base64.stdEncoding.encodedLen((_data.length)) : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
        stdgo.encoding.base64.Base64.stdEncoding.encode(_dst, _data);
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface((_dst : stdgo.GoString)));
    }
function exampleEncoding_DecodeString():Void {
        var _str:stdgo.GoString = ("c29tZSBkYXRhIHdpdGggACBhbmQg77u/" : stdgo.GoString)?.__copy__();
        var __tmp__ = stdgo.encoding.base64.Base64.stdEncoding.decodeString(_str?.__copy__()), _data:stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo.fmt.Fmt.println(stdgo.Go.toInterface(("error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            return;
        };
        stdgo.fmt.Fmt.printf(("%q\n" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_data));
    }
function exampleEncoding_Decode():Void {
        var _str:stdgo.GoString = ("SGVsbG8sIHdvcmxkIQ==" : stdgo.GoString)?.__copy__();
        var _dst = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((stdgo.encoding.base64.Base64.stdEncoding.decodedLen((_str.length)) : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
        var __tmp__ = stdgo.encoding.base64.Base64.stdEncoding.decode(_dst, (_str : stdgo.Slice<stdgo.StdGoTypes.GoByte>)), _n:stdgo.StdGoTypes.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo.fmt.Fmt.println(stdgo.Go.toInterface(("decode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            return;
        };
        _dst = (_dst.__slice__(0, _n) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
        stdgo.fmt.Fmt.printf(("%q\n" : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_dst));
    }
function exampleNewEncoder():Void {
        var _input = (stdgo.Go.str("foo", 0, "bar") : stdgo.Slice<stdgo.StdGoTypes.GoByte>);
        var _encoder:stdgo.io.Io.WriteCloser = stdgo.encoding.base64.Base64.newEncoder(stdgo.encoding.base64.Base64.stdEncoding, stdgo.Go.asInterface(stdgo.os.Os.stdout));
        _encoder.write(_input);
        _encoder.close();
    }
