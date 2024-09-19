package stdgo._internal.sync.atomic_;
@:structInit @:using(stdgo._internal.sync.atomic_.Atomic__Uint32_static_extension.Uint32_static_extension) class Uint32 {
    @:optional
    public var __13 : stdgo._internal.sync.atomic_.Atomic__T_noCopy.T_noCopy = ({} : stdgo._internal.sync.atomic_.Atomic__T_noCopy.T_noCopy);
    public var _v : stdgo.GoUInt32 = 0;
    public function new(?__13:stdgo._internal.sync.atomic_.Atomic__T_noCopy.T_noCopy, ?_v:stdgo.GoUInt32) {
        if (__13 != null) this.__13 = __13;
        if (_v != null) this._v = _v;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Uint32(__13, _v);
    }
}
