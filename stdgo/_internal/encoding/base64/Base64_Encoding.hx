package stdgo._internal.encoding.base64;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
import stdgo._internal.runtime.debug.Debug;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.errors.Errors;
import stdgo._internal.time.Time;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.strconv.Strconv;
@:structInit @:using(stdgo._internal.encoding.base64.Base64_Encoding_static_extension.Encoding_static_extension) class Encoding {
    public var _encode : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(64, 64).__setNumber32__();
    public var _decodeMap : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(256, 256).__setNumber32__();
    public var _padChar : stdgo.GoInt32 = 0;
    public var _strict : Bool = false;
    public function new(?_encode:stdgo.GoArray<stdgo.GoUInt8>, ?_decodeMap:stdgo.GoArray<stdgo.GoUInt8>, ?_padChar:stdgo.GoInt32, ?_strict:Bool) {
        if (_encode != null) this._encode = _encode;
        if (_decodeMap != null) this._decodeMap = _decodeMap;
        if (_padChar != null) this._padChar = _padChar;
        if (_strict != null) this._strict = _strict;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Encoding(_encode, _decodeMap, _padChar, _strict);
    }
}
