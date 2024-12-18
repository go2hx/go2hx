package stdgo._internal.encoding.binary;
@:keep @:allow(stdgo._internal.encoding.binary.Binary.T_byteSliceReader_asInterface) class T_byteSliceReader_static_extension {
    @:keep
    static public function read( _br:stdgo.Ref<stdgo._internal.encoding.binary.Binary_T_byteSliceReader.T_byteSliceReader>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _br:stdgo.Ref<stdgo._internal.encoding.binary.Binary_T_byteSliceReader.T_byteSliceReader> = _br;
        var _n = (_p.__copyTo__(_br._remain) : stdgo.GoInt);
        _br._remain = (_br._remain.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>);
        return { _0 : _n, _1 : (null : stdgo.Error) };
    }
}
