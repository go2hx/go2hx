package _internal.sync.atomic_test;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.sync.atomic_.Atomic_;
@:structInit class T_testStoreLoadRelAcq32___localname___Data_56337 {
    public var _signal : stdgo.GoInt32 = 0;
    public var _pad1 : stdgo.GoArray<stdgo.GoInt8> = new stdgo.GoArray<stdgo.GoInt8>(128, 128, ...[for (i in 0 ... 128) (0 : stdgo.GoInt8)]);
    public var _data1 : stdgo.GoInt32 = 0;
    public var _pad2 : stdgo.GoArray<stdgo.GoInt8> = new stdgo.GoArray<stdgo.GoInt8>(128, 128, ...[for (i in 0 ... 128) (0 : stdgo.GoInt8)]);
    public var _data2 : stdgo.GoFloat32 = 0;
    public function new(?_signal:stdgo.GoInt32, ?_pad1:stdgo.GoArray<stdgo.GoInt8>, ?_data1:stdgo.GoInt32, ?_pad2:stdgo.GoArray<stdgo.GoInt8>, ?_data2:stdgo.GoFloat32) {
        if (_signal != null) this._signal = _signal;
        if (_pad1 != null) this._pad1 = _pad1;
        if (_data1 != null) this._data1 = _data1;
        if (_pad2 != null) this._pad2 = _pad2;
        if (_data2 != null) this._data2 = _data2;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testStoreLoadRelAcq32___localname___Data_56337(_signal, _pad1, _data1, _pad2, _data2);
    }
}
