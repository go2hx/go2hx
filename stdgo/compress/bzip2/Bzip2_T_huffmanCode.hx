package stdgo.compress.bzip2;
@:structInit @:using(stdgo.compress.bzip2.Bzip2.T_huffmanCode_static_extension) abstract T_huffmanCode(stdgo._internal.compress.bzip2.Bzip2_T_huffmanCode.T_huffmanCode) from stdgo._internal.compress.bzip2.Bzip2_T_huffmanCode.T_huffmanCode to stdgo._internal.compress.bzip2.Bzip2_T_huffmanCode.T_huffmanCode {
    public var _code(get, set) : std.UInt;
    function get__code():std.UInt return this._code;
    function set__code(v:std.UInt):std.UInt {
        this._code = (v : stdgo.GoUInt32);
        return v;
    }
    public var _codeLen(get, set) : std.UInt;
    function get__codeLen():std.UInt return this._codeLen;
    function set__codeLen(v:std.UInt):std.UInt {
        this._codeLen = (v : stdgo.GoUInt8);
        return v;
    }
    public var _value(get, set) : std.UInt;
    function get__value():std.UInt return this._value;
    function set__value(v:std.UInt):std.UInt {
        this._value = (v : stdgo.GoUInt16);
        return v;
    }
    public function new(?_code:std.UInt, ?_codeLen:std.UInt, ?_value:std.UInt) this = new stdgo._internal.compress.bzip2.Bzip2_T_huffmanCode.T_huffmanCode((_code : stdgo.GoUInt32), (_codeLen : stdgo.GoUInt8), (_value : stdgo.GoUInt16));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
