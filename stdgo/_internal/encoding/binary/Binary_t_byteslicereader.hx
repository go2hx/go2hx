package stdgo._internal.encoding.binary;
@:structInit @:using(stdgo._internal.encoding.binary.Binary_t_byteslicereader_static_extension.T_byteSliceReader_static_extension) class T_byteSliceReader {
    public var _remain : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public function new(?_remain:stdgo.Slice<stdgo.GoUInt8>) {
        if (_remain != null) this._remain = _remain;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_byteSliceReader(_remain);
    }
}
