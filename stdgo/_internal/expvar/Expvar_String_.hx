package stdgo._internal.expvar;
@:structInit @:using(stdgo._internal.expvar.Expvar_String__static_extension.String__static_extension) class String_ {
    public var _s : stdgo._internal.sync.atomic_.Atomic__Value.Value = ({} : stdgo._internal.sync.atomic_.Atomic__Value.Value);
    public function new(?_s:stdgo._internal.sync.atomic_.Atomic__Value.Value) {
        if (_s != null) this._s = _s;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new String_(_s);
    }
}
