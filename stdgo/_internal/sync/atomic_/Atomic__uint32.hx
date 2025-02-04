package stdgo._internal.sync.atomic_;
@:structInit @:using(stdgo._internal.sync.atomic_.Atomic__uint32_static_extension.Uint32_static_extension) class Uint32 {
    @:optional
    public var __12 : stdgo._internal.sync.atomic_.Atomic__t_nocopy.T_noCopy = ({} : stdgo._internal.sync.atomic_.Atomic__t_nocopy.T_noCopy);
    public var _v : stdgo.GoUInt32 = 0;
    public function new(?__12:stdgo._internal.sync.atomic_.Atomic__t_nocopy.T_noCopy, ?_v:stdgo.GoUInt32) {
        if (__12 != null) this.__12 = __12;
        if (_v != null) this._v = _v;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Uint32(__12, _v);
    }
}
