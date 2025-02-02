package stdgo._internal.internal.pkgbits;
@:structInit @:using(stdgo._internal.internal.pkgbits.Pkgbits_RelocEnt_static_extension.RelocEnt_static_extension) class RelocEnt {
    public var kind : stdgo._internal.internal.pkgbits.Pkgbits_RelocKind.RelocKind = ((0 : stdgo.GoInt32) : stdgo._internal.internal.pkgbits.Pkgbits_RelocKind.RelocKind);
    public var idx : stdgo._internal.internal.pkgbits.Pkgbits_Index.Index = ((0 : stdgo.GoInt32) : stdgo._internal.internal.pkgbits.Pkgbits_Index.Index);
    public function new(?kind:stdgo._internal.internal.pkgbits.Pkgbits_RelocKind.RelocKind, ?idx:stdgo._internal.internal.pkgbits.Pkgbits_Index.Index) {
        if (kind != null) this.kind = kind;
        if (idx != null) this.idx = idx;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new RelocEnt(kind, idx);
    }
}
