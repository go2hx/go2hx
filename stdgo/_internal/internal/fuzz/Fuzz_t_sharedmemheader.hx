package stdgo._internal.internal.fuzz;
@:structInit @:using(stdgo._internal.internal.fuzz.Fuzz_t_sharedmemheader_static_extension.T_sharedMemHeader_static_extension) class T_sharedMemHeader {
    public var _count : stdgo.GoInt64 = 0;
    public var _valueLen : stdgo.GoInt = 0;
    public var _randState : stdgo.GoUInt64 = 0;
    public var _randInc : stdgo.GoUInt64 = 0;
    public var _rawInMem : Bool = false;
    public function new(?_count:stdgo.GoInt64, ?_valueLen:stdgo.GoInt, ?_randState:stdgo.GoUInt64, ?_randInc:stdgo.GoUInt64, ?_rawInMem:Bool) {
        if (_count != null) this._count = _count;
        if (_valueLen != null) this._valueLen = _valueLen;
        if (_randState != null) this._randState = _randState;
        if (_randInc != null) this._randInc = _randInc;
        if (_rawInMem != null) this._rawInMem = _rawInMem;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_sharedMemHeader(_count, _valueLen, _randState, _randInc, _rawInMem);
    }
}
