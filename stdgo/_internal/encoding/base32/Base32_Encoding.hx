package stdgo._internal.encoding.base32;
@:structInit @:using(stdgo._internal.encoding.base32.Base32_Encoding_static_extension.Encoding_static_extension) class Encoding {
    public var _encode : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(32, 32, ...[for (i in 0 ... 32) (0 : stdgo.GoUInt8)]);
    public var _decodeMap : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(256, 256, ...[for (i in 0 ... 256) (0 : stdgo.GoUInt8)]);
    public var _padChar : stdgo.GoInt32 = 0;
    public function new(?_encode:stdgo.GoArray<stdgo.GoUInt8>, ?_decodeMap:stdgo.GoArray<stdgo.GoUInt8>, ?_padChar:stdgo.GoInt32) {
        if (_encode != null) this._encode = _encode;
        if (_decodeMap != null) this._decodeMap = _decodeMap;
        if (_padChar != null) this._padChar = _padChar;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Encoding(_encode, _decodeMap, _padChar);
    }
}
