package stdgo._internal.runtime.pprof;
@:structInit @:using(stdgo._internal.runtime.pprof.Pprof_t_protobuf_static_extension.T_protobuf_static_extension) class T_protobuf {
    public var _data : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _tmp : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(16, 16).__setNumber32__();
    public var _nest : stdgo.GoInt = 0;
    public function new(?_data:stdgo.Slice<stdgo.GoUInt8>, ?_tmp:stdgo.GoArray<stdgo.GoUInt8>, ?_nest:stdgo.GoInt) {
        if (_data != null) this._data = _data;
        if (_tmp != null) this._tmp = _tmp;
        if (_nest != null) this._nest = _nest;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_protobuf(_data, _tmp, _nest);
    }
}
