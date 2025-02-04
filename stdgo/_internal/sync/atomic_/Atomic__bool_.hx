package stdgo._internal.sync.atomic_;
@:structInit @:using(stdgo._internal.sync.atomic_.Atomic__bool__static_extension.Bool__static_extension) class Bool_ {
    @:optional
    public var __1 : stdgo._internal.sync.atomic_.Atomic__t_nocopy.T_noCopy = ({} : stdgo._internal.sync.atomic_.Atomic__t_nocopy.T_noCopy);
    public var _v : stdgo.GoUInt32 = 0;
    public function new(?__1:stdgo._internal.sync.atomic_.Atomic__t_nocopy.T_noCopy, ?_v:stdgo.GoUInt32) {
        if (__1 != null) this.__1 = __1;
        if (_v != null) this._v = _v;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Bool_(__1, _v);
    }
}
