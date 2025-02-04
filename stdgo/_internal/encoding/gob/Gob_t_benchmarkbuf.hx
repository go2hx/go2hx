package stdgo._internal.encoding.gob;
@:structInit @:using(stdgo._internal.encoding.gob.Gob_t_benchmarkbuf_static_extension.T_benchmarkBuf_static_extension) class T_benchmarkBuf {
    public var _offset : stdgo.GoInt = 0;
    public var _data : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public function new(?_offset:stdgo.GoInt, ?_data:stdgo.Slice<stdgo.GoUInt8>) {
        if (_offset != null) this._offset = _offset;
        if (_data != null) this._data = _data;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_benchmarkBuf(_offset, _data);
    }
}
