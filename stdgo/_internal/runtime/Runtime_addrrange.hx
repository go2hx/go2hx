package stdgo._internal.runtime;
@:structInit @:using(stdgo._internal.runtime.Runtime_addrrange_static_extension.AddrRange_static_extension) class AddrRange {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var _contains(get, never) : stdgo.GoUIntptr -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get__contains():stdgo.GoUIntptr -> Bool return @:check31 (this.new ?? throw "null pointer dereference")._contains;
    public var _removeGreaterEqual(get, never) : stdgo.GoUIntptr -> stdgo._internal.runtime.Runtime_t_addrrange.T_addrRange;
    @:embedded
    @:embeddededffieldsffun
    public function get__removeGreaterEqual():stdgo.GoUIntptr -> stdgo._internal.runtime.Runtime_t_addrrange.T_addrRange return @:check31 (this.new ?? throw "null pointer dereference")._removeGreaterEqual;
    public var _size(get, never) : () -> stdgo.GoUIntptr;
    @:embedded
    @:embeddededffieldsffun
    public function get__size():() -> stdgo.GoUIntptr return @:check31 (this.new ?? throw "null pointer dereference")._size;
    public var _subtract(get, never) : stdgo._internal.runtime.Runtime_t_addrrange.T_addrRange -> stdgo._internal.runtime.Runtime_t_addrrange.T_addrRange;
    @:embedded
    @:embeddededffieldsffun
    public function get__subtract():stdgo._internal.runtime.Runtime_t_addrrange.T_addrRange -> stdgo._internal.runtime.Runtime_t_addrrange.T_addrRange return @:check31 (this.new ?? throw "null pointer dereference")._subtract;
    public var _takeFromBack(get, never) : (stdgo.GoUIntptr, stdgo.GoUInt8) -> { var _0 : stdgo.GoUIntptr; var _1 : Bool; };
    @:embedded
    @:embeddededffieldsffun
    public function get__takeFromBack():(stdgo.GoUIntptr, stdgo.GoUInt8) -> { var _0 : stdgo.GoUIntptr; var _1 : Bool; } return @:check32 this.new._takeFromBack;
    public var _takeFromFront(get, never) : (stdgo.GoUIntptr, stdgo.GoUInt8) -> { var _0 : stdgo.GoUIntptr; var _1 : Bool; };
    @:embedded
    @:embeddededffieldsffun
    public function get__takeFromFront():(stdgo.GoUIntptr, stdgo.GoUInt8) -> { var _0 : stdgo.GoUIntptr; var _1 : Bool; } return @:check32 this.new._takeFromFront;
    public function __copy__() {
        return new AddrRange();
    }
}
