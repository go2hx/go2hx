package stdgo._internal.internal.pkgbits;
@:structInit @:using(stdgo._internal.internal.pkgbits.Pkgbits_relocent_static_extension.RelocEnt_static_extension) class RelocEnt {
    public var kind : stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind = ((0 : stdgo.GoInt32) : stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind);
    public var idx : stdgo._internal.internal.pkgbits.Pkgbits_index.Index = ((0 : stdgo.GoInt32) : stdgo._internal.internal.pkgbits.Pkgbits_index.Index);
    public function new(?kind:stdgo._internal.internal.pkgbits.Pkgbits_relockind.RelocKind, ?idx:stdgo._internal.internal.pkgbits.Pkgbits_index.Index) {
        if (kind != null) this.kind = kind;
        if (idx != null) this.idx = idx;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new RelocEnt(kind, idx);
    }
}
