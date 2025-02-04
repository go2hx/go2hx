package stdgo._internal.compress.bzip2;
@:structInit @:using(stdgo._internal.compress.bzip2.Bzip2_t_huffmansymbollengthpair_static_extension.T_huffmanSymbolLengthPair_static_extension) class T_huffmanSymbolLengthPair {
    public var _value : stdgo.GoUInt16 = 0;
    public var _length : stdgo.GoUInt8 = 0;
    public function new(?_value:stdgo.GoUInt16, ?_length:stdgo.GoUInt8) {
        if (_value != null) this._value = _value;
        if (_length != null) this._length = _length;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_huffmanSymbolLengthPair(_value, _length);
    }
}
