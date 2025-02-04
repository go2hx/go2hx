package stdgo._internal.sync.atomic_;
@:structInit @:using(stdgo._internal.sync.atomic_.Atomic__int64__static_extension.Int64__static_extension) class Int64_ {
    @:optional
    public var __10 : stdgo._internal.sync.atomic_.Atomic__t_nocopy.T_noCopy = ({} : stdgo._internal.sync.atomic_.Atomic__t_nocopy.T_noCopy);
    @:optional
    public var __11 : stdgo._internal.sync.atomic_.Atomic__t_align64.T_align64 = ({} : stdgo._internal.sync.atomic_.Atomic__t_align64.T_align64);
    public var _v : stdgo.GoInt64 = 0;
    public function new(?__10:stdgo._internal.sync.atomic_.Atomic__t_nocopy.T_noCopy, ?__11:stdgo._internal.sync.atomic_.Atomic__t_align64.T_align64, ?_v:stdgo.GoInt64) {
        if (__10 != null) this.__10 = __10;
        if (__11 != null) this.__11 = __11;
        if (_v != null) this._v = _v;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Int64_(__10, __11, _v);
    }
}
