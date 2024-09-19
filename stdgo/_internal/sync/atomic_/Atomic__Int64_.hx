package stdgo._internal.sync.atomic_;
@:structInit @:using(stdgo._internal.sync.atomic_.Atomic__Int64__static_extension.Int64__static_extension) class Int64_ {
    @:optional
    public var __11 : stdgo._internal.sync.atomic_.Atomic__T_noCopy.T_noCopy = ({} : stdgo._internal.sync.atomic_.Atomic__T_noCopy.T_noCopy);
    @:optional
    public var __12 : stdgo._internal.sync.atomic_.Atomic__T_align64.T_align64 = ({} : stdgo._internal.sync.atomic_.Atomic__T_align64.T_align64);
    public var _v : stdgo.GoInt64 = 0;
    public function new(?__11:stdgo._internal.sync.atomic_.Atomic__T_noCopy.T_noCopy, ?__12:stdgo._internal.sync.atomic_.Atomic__T_align64.T_align64, ?_v:stdgo.GoInt64) {
        if (__11 != null) this.__11 = __11;
        if (__12 != null) this.__12 = __12;
        if (_v != null) this._v = _v;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Int64_(__11, __12, _v);
    }
}
