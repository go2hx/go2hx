package stdgo._internal.image.jpeg;
@:structInit class T_huffmanSpec {
    public var _count : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(16, 16, ...[for (i in 0 ... 16) (0 : stdgo.GoUInt8)]);
    public var _value : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public function new(?_count:stdgo.GoArray<stdgo.GoUInt8>, ?_value:stdgo.Slice<stdgo.GoUInt8>) {
        if (_count != null) this._count = _count;
        if (_value != null) this._value = _value;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_huffmanSpec(_count, _value);
    }
}
