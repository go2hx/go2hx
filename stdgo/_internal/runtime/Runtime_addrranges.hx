package stdgo._internal.runtime;
@:structInit @:using(stdgo._internal.runtime.Runtime_addrranges_static_extension.AddrRanges_static_extension) class AddrRanges {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var _add(get, never) : stdgo._internal.runtime.Runtime_t_addrrange.T_addrRange -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__add():stdgo._internal.runtime.Runtime_t_addrrange.T_addrRange -> Void return @:check32 this.new._add;
    public var _cloneInto(get, never) : stdgo.Ref<stdgo._internal.runtime.Runtime_t_addrranges.T_addrRanges> -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__cloneInto():stdgo.Ref<stdgo._internal.runtime.Runtime_t_addrranges.T_addrRanges> -> Void return @:check32 this.new._cloneInto;
    public var _contains(get, never) : stdgo.GoUIntptr -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get__contains():stdgo.GoUIntptr -> Bool return @:check32 this.new._contains;
    public var _findAddrGreaterEqual(get, never) : stdgo.GoUIntptr -> { var _0 : stdgo.GoUIntptr; var _1 : Bool; };
    @:embedded
    @:embeddededffieldsffun
    public function get__findAddrGreaterEqual():stdgo.GoUIntptr -> { var _0 : stdgo.GoUIntptr; var _1 : Bool; } return @:check32 this.new._findAddrGreaterEqual;
    public var _findSucc(get, never) : stdgo.GoUIntptr -> stdgo.GoInt;
    @:embedded
    @:embeddededffieldsffun
    public function get__findSucc():stdgo.GoUIntptr -> stdgo.GoInt return @:check32 this.new._findSucc;
    public var _init(get, never) : stdgo.Pointer<stdgo._internal.runtime.Runtime_t_sysmemstat.T_sysMemStat> -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__init():stdgo.Pointer<stdgo._internal.runtime.Runtime_t_sysmemstat.T_sysMemStat> -> Void return @:check32 this.new._init;
    public var _removeGreaterEqual(get, never) : stdgo.GoUIntptr -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__removeGreaterEqual():stdgo.GoUIntptr -> Void return @:check32 this.new._removeGreaterEqual;
    public var _removeLast(get, never) : stdgo.GoUIntptr -> stdgo._internal.runtime.Runtime_t_addrrange.T_addrRange;
    @:embedded
    @:embeddededffieldsffun
    public function get__removeLast():stdgo.GoUIntptr -> stdgo._internal.runtime.Runtime_t_addrrange.T_addrRange return @:check32 this.new._removeLast;
    public function __copy__() {
        return new AddrRanges();
    }
}
