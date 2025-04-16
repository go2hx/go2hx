package stdgo._internal.runtime;
@:structInit @:using(stdgo._internal.runtime.Runtime_t_pallocdata_static_extension.T_pallocData_static_extension) class T_pallocData {
    @:embedded
    public var _pallocBits : stdgo._internal.runtime.Runtime_t_pallocbits.T_pallocBits = new stdgo._internal.runtime.Runtime_t_pallocbits.T_pallocBits(8, 8, ...[for (i in 0 ... 8) (0 : stdgo.GoUInt64)]);
    public function new(?_pallocBits:stdgo._internal.runtime.Runtime_t_pallocbits.T_pallocBits) {
        if (_pallocBits != null) this._pallocBits = _pallocBits;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var _allocPages64(get, never) : (stdgo.GoUInt, stdgo.GoUInt64) -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__allocPages64():(stdgo.GoUInt, stdgo.GoUInt64) -> Void return @:check32 this._pallocBits._allocPages64;
    public var _find(get, never) : (stdgo.GoUIntptr, stdgo.GoUInt) -> { var _0 : stdgo.GoUInt; var _1 : stdgo.GoUInt; };
    @:embedded
    @:embeddededffieldsffun
    public function get__find():(stdgo.GoUIntptr, stdgo.GoUInt) -> { var _0 : stdgo.GoUInt; var _1 : stdgo.GoUInt; } return @:check32 this._pallocBits._find;
    public var _find1(get, never) : stdgo.GoUInt -> stdgo.GoUInt;
    @:embedded
    @:embeddededffieldsffun
    public function get__find1():stdgo.GoUInt -> stdgo.GoUInt return @:check32 this._pallocBits._find1;
    public var _findLargeN(get, never) : (stdgo.GoUIntptr, stdgo.GoUInt) -> { var _0 : stdgo.GoUInt; var _1 : stdgo.GoUInt; };
    @:embedded
    @:embeddededffieldsffun
    public function get__findLargeN():(stdgo.GoUIntptr, stdgo.GoUInt) -> { var _0 : stdgo.GoUInt; var _1 : stdgo.GoUInt; } return @:check32 this._pallocBits._findLargeN;
    public var _findSmallN(get, never) : (stdgo.GoUIntptr, stdgo.GoUInt) -> { var _0 : stdgo.GoUInt; var _1 : stdgo.GoUInt; };
    @:embedded
    @:embeddededffieldsffun
    public function get__findSmallN():(stdgo.GoUIntptr, stdgo.GoUInt) -> { var _0 : stdgo.GoUInt; var _1 : stdgo.GoUInt; } return @:check32 this._pallocBits._findSmallN;
    public var _free(get, never) : (stdgo.GoUInt, stdgo.GoUInt) -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__free():(stdgo.GoUInt, stdgo.GoUInt) -> Void return @:check32 this._pallocBits._free;
    public var _free1(get, never) : stdgo.GoUInt -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__free1():stdgo.GoUInt -> Void return @:check32 this._pallocBits._free1;
    public var _freeAll(get, never) : () -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__freeAll():() -> Void return @:check32 this._pallocBits._freeAll;
    public var _pages64(get, never) : stdgo.GoUInt -> stdgo.GoUInt64;
    @:embedded
    @:embeddededffieldsffun
    public function get__pages64():stdgo.GoUInt -> stdgo.GoUInt64 return @:check32 this._pallocBits._pages64;
    public var _summarize(get, never) : () -> stdgo._internal.runtime.Runtime_t_pallocsum.T_pallocSum;
    @:embedded
    @:embeddededffieldsffun
    public function get__summarize():() -> stdgo._internal.runtime.Runtime_t_pallocsum.T_pallocSum return @:check32 this._pallocBits._summarize;
    public function __copy__() {
        return new T_pallocData(_pallocBits);
    }
}
