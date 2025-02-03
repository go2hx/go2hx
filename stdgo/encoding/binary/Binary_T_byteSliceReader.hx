package stdgo.encoding.binary;
@:structInit @:using(stdgo.encoding.binary.Binary.T_byteSliceReader_static_extension) abstract T_byteSliceReader(stdgo._internal.encoding.binary.Binary_T_byteSliceReader.T_byteSliceReader) from stdgo._internal.encoding.binary.Binary_T_byteSliceReader.T_byteSliceReader to stdgo._internal.encoding.binary.Binary_T_byteSliceReader.T_byteSliceReader {
    public var _remain(get, set) : Array<std.UInt>;
    function get__remain():Array<std.UInt> return [for (i in this._remain) i];
    function set__remain(v:Array<std.UInt>):Array<std.UInt> {
        this._remain = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_remain:Array<std.UInt>) this = new stdgo._internal.encoding.binary.Binary_T_byteSliceReader.T_byteSliceReader(([for (i in _remain) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
