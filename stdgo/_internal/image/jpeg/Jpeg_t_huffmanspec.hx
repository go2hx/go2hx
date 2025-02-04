package stdgo._internal.image.jpeg;
@:structInit @:using(stdgo._internal.image.jpeg.Jpeg_t_huffmanspec_static_extension.T_huffmanSpec_static_extension) class T_huffmanSpec {
    public var _count : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(16, 16).__setNumber32__();
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
