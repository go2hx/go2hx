package stdgo.compress.bzip2;
@:structInit @:using(stdgo.compress.bzip2.Bzip2.T_huffmanSymbolLengthPair_static_extension) abstract T_huffmanSymbolLengthPair(stdgo._internal.compress.bzip2.Bzip2_T_huffmanSymbolLengthPair.T_huffmanSymbolLengthPair) from stdgo._internal.compress.bzip2.Bzip2_T_huffmanSymbolLengthPair.T_huffmanSymbolLengthPair to stdgo._internal.compress.bzip2.Bzip2_T_huffmanSymbolLengthPair.T_huffmanSymbolLengthPair {
    public var _value(get, set) : std.UInt;
    function get__value():std.UInt return this._value;
    function set__value(v:std.UInt):std.UInt {
        this._value = (v : stdgo.GoUInt16);
        return v;
    }
    public var _length(get, set) : std.UInt;
    function get__length():std.UInt return this._length;
    function set__length(v:std.UInt):std.UInt {
        this._length = (v : stdgo.GoUInt8);
        return v;
    }
    public function new(?_value:std.UInt, ?_length:std.UInt) this = new stdgo._internal.compress.bzip2.Bzip2_T_huffmanSymbolLengthPair.T_huffmanSymbolLengthPair((_value : stdgo.GoUInt16), (_length : stdgo.GoUInt8));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
