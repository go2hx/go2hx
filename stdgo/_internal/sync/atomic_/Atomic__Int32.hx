package stdgo._internal.sync.atomic_;
@:structInit @:using(stdgo._internal.sync.atomic_.Atomic__Int32_static_extension.Int32_static_extension) class Int32 {
    @:optional
    public var __8 : stdgo._internal.sync.atomic_.Atomic__T_noCopy.T_noCopy = ({} : stdgo._internal.sync.atomic_.Atomic__T_noCopy.T_noCopy);
    public var _v : stdgo.GoInt32 = 0;
    public function new(?__8:stdgo._internal.sync.atomic_.Atomic__T_noCopy.T_noCopy, ?_v:stdgo.GoInt32) {
        if (__8 != null) this.__8 = __8;
        if (_v != null) this._v = _v;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Int32(__8, _v);
    }
}
