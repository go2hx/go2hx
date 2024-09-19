package _internal.vendor.golang_dot_org.x.net.idna;
@:structInit @:using(_internal.vendor.golang_dot_org.x.net.idna.Idna_T_labelIter_static_extension.T_labelIter_static_extension) class T_labelIter {
    public var _orig : stdgo.GoString = "";
    public var _slice : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var _curStart : stdgo.GoInt = 0;
    public var _curEnd : stdgo.GoInt = 0;
    public var _i : stdgo.GoInt = 0;
    public function new(?_orig:stdgo.GoString, ?_slice:stdgo.Slice<stdgo.GoString>, ?_curStart:stdgo.GoInt, ?_curEnd:stdgo.GoInt, ?_i:stdgo.GoInt) {
        if (_orig != null) this._orig = _orig;
        if (_slice != null) this._slice = _slice;
        if (_curStart != null) this._curStart = _curStart;
        if (_curEnd != null) this._curEnd = _curEnd;
        if (_i != null) this._i = _i;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_labelIter(_orig, _slice, _curStart, _curEnd, _i);
    }
}
