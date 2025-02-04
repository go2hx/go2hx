package stdgo._internal.runtime;
@:structInit @:using(stdgo._internal.runtime.Runtime_t_pallocdata_static_extension.T_pallocData_static_extension) class T_pallocData {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var _allocPages64(get, never) : (stdgo.GoUInt, stdgo.GoUInt64) -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__allocPages64():(stdgo.GoUInt, stdgo.GoUInt64) -> Void return @:check32 this.new._allocPages64;
    public var _find(get, never) : (stdgo.GoUIntptr, stdgo.GoUInt) -> { var _0 : stdgo.GoUInt; var _1 : stdgo.GoUInt; };
    @:embedded
    @:embeddededffieldsffun
    public function get__find():(stdgo.GoUIntptr, stdgo.GoUInt) -> { var _0 : stdgo.GoUInt; var _1 : stdgo.GoUInt; } return @:check32 this.new._find;
    public var _find1(get, never) : stdgo.GoUInt -> stdgo.GoUInt;
    @:embedded
    @:embeddededffieldsffun
    public function get__find1():stdgo.GoUInt -> stdgo.GoUInt return @:check32 this.new._find1;
    public var _findLargeN(get, never) : (stdgo.GoUIntptr, stdgo.GoUInt) -> { var _0 : stdgo.GoUInt; var _1 : stdgo.GoUInt; };
    @:embedded
    @:embeddededffieldsffun
    public function get__findLargeN():(stdgo.GoUIntptr, stdgo.GoUInt) -> { var _0 : stdgo.GoUInt; var _1 : stdgo.GoUInt; } return @:check32 this.new._findLargeN;
    public var _findSmallN(get, never) : (stdgo.GoUIntptr, stdgo.GoUInt) -> { var _0 : stdgo.GoUInt; var _1 : stdgo.GoUInt; };
    @:embedded
    @:embeddededffieldsffun
    public function get__findSmallN():(stdgo.GoUIntptr, stdgo.GoUInt) -> { var _0 : stdgo.GoUInt; var _1 : stdgo.GoUInt; } return @:check32 this.new._findSmallN;
    public var _free(get, never) : (stdgo.GoUInt, stdgo.GoUInt) -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__free():(stdgo.GoUInt, stdgo.GoUInt) -> Void return @:check32 this.new._free;
    public var _free1(get, never) : stdgo.GoUInt -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__free1():stdgo.GoUInt -> Void return @:check32 this.new._free1;
    public var _freeAll(get, never) : () -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__freeAll():() -> Void return @:check32 this.new._freeAll;
    public var _pages64(get, never) : stdgo.GoUInt -> stdgo.GoUInt64;
    @:embedded
    @:embeddededffieldsffun
    public function get__pages64():stdgo.GoUInt -> stdgo.GoUInt64 return @:check32 this.new._pages64;
    public var _summarize(get, never) : () -> stdgo._internal.runtime.Runtime_t_pallocsum.T_pallocSum;
    @:embedded
    @:embeddededffieldsffun
    public function get__summarize():() -> stdgo._internal.runtime.Runtime_t_pallocsum.T_pallocSum return @:check32 this.new._summarize;
    public function __copy__() {
        return new T_pallocData();
    }
}
