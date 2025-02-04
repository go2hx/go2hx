package stdgo._internal.expvar;
@:structInit @:using(stdgo._internal.expvar.Expvar_float__static_extension.Float__static_extension) class Float_ {
    public var _f : stdgo._internal.sync.atomic_.Atomic__uint64.Uint64 = ({} : stdgo._internal.sync.atomic_.Atomic__uint64.Uint64);
    public function new(?_f:stdgo._internal.sync.atomic_.Atomic__uint64.Uint64) {
        if (_f != null) this._f = _f;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Float_(_f);
    }
}
