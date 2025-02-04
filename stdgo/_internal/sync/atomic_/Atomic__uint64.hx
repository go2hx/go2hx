package stdgo._internal.sync.atomic_;
@:structInit @:using(stdgo._internal.sync.atomic_.Atomic__uint64_static_extension.Uint64_static_extension) class Uint64 {
    @:optional
    public var __15 : stdgo._internal.sync.atomic_.Atomic__t_nocopy.T_noCopy = ({} : stdgo._internal.sync.atomic_.Atomic__t_nocopy.T_noCopy);
    @:optional
    public var __16 : stdgo._internal.sync.atomic_.Atomic__t_align64.T_align64 = ({} : stdgo._internal.sync.atomic_.Atomic__t_align64.T_align64);
    public var _v : stdgo.GoUInt64 = 0;
    public function new(?__15:stdgo._internal.sync.atomic_.Atomic__t_nocopy.T_noCopy, ?__16:stdgo._internal.sync.atomic_.Atomic__t_align64.T_align64, ?_v:stdgo.GoUInt64) {
        if (__15 != null) this.__15 = __15;
        if (__16 != null) this.__16 = __16;
        if (_v != null) this._v = _v;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Uint64(__15, __16, _v);
    }
}
