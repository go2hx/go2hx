package stdgo._internal.expvar;
@:structInit @:using(stdgo._internal.expvar.Expvar_string__static_extension.String__static_extension) class String_ {
    public var _s : stdgo._internal.sync.atomic_.Atomic__value.Value = ({} : stdgo._internal.sync.atomic_.Atomic__value.Value);
    public function new(?_s:stdgo._internal.sync.atomic_.Atomic__value.Value) {
        if (_s != null) this._s = _s;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new String_(_s);
    }
}
