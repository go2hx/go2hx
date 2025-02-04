package stdgo._internal.sync.atomic_;
@:structInit @:using(stdgo._internal.sync.atomic_.Atomic__int32_static_extension.Int32_static_extension) class Int32 {
    @:optional
    public var __7 : stdgo._internal.sync.atomic_.Atomic__t_nocopy.T_noCopy = ({} : stdgo._internal.sync.atomic_.Atomic__t_nocopy.T_noCopy);
    public var _v : stdgo.GoInt32 = 0;
    public function new(?__7:stdgo._internal.sync.atomic_.Atomic__t_nocopy.T_noCopy, ?_v:stdgo.GoInt32) {
        if (__7 != null) this.__7 = __7;
        if (_v != null) this._v = _v;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Int32(__7, _v);
    }
}
