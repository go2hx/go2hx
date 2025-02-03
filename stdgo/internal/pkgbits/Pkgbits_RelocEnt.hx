package stdgo.internal.pkgbits;
@:structInit @:using(stdgo.internal.pkgbits.Pkgbits.RelocEnt_static_extension) abstract RelocEnt(stdgo._internal.internal.pkgbits.Pkgbits_RelocEnt.RelocEnt) from stdgo._internal.internal.pkgbits.Pkgbits_RelocEnt.RelocEnt to stdgo._internal.internal.pkgbits.Pkgbits_RelocEnt.RelocEnt {
    public var kind(get, set) : RelocKind;
    function get_kind():RelocKind return this.kind;
    function set_kind(v:RelocKind):RelocKind {
        this.kind = v;
        return v;
    }
    public var idx(get, set) : Index;
    function get_idx():Index return this.idx;
    function set_idx(v:Index):Index {
        this.idx = v;
        return v;
    }
    public function new(?kind:RelocKind, ?idx:Index) this = new stdgo._internal.internal.pkgbits.Pkgbits_RelocEnt.RelocEnt(kind, idx);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
