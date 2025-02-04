package stdgo._internal.encoding.gob;
@:structInit @:using(stdgo._internal.encoding.gob.Gob_t_encbuffer_static_extension.T_encBuffer_static_extension) class T_encBuffer {
    public var _data : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _scratch : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(64, 64).__setNumber32__();
    public function new(?_data:stdgo.Slice<stdgo.GoUInt8>, ?_scratch:stdgo.GoArray<stdgo.GoUInt8>) {
        if (_data != null) this._data = _data;
        if (_scratch != null) this._scratch = _scratch;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_encBuffer(_data, _scratch);
    }
}
