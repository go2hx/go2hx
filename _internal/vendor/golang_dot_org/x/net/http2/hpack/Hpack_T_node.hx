package _internal.vendor.golang_dot_org.x.net.http2.hpack;
@:structInit class T_node {
    @:optional
    public var __1 : _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_incomparable.T_incomparable = new _internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_incomparable.T_incomparable(0, 0, ...[for (i in 0 ... 0) null]);
    public var _children : stdgo.Ref<stdgo.GoArray<stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_node.T_node>>> = (null : stdgo.Ref<stdgo.GoArray<stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_node.T_node>>>);
    public var _codeLen : stdgo.GoUInt8 = 0;
    public var _sym : stdgo.GoUInt8 = 0;
    public function new(?__1:_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_incomparable.T_incomparable, ?_children:stdgo.Ref<stdgo.GoArray<stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_T_node.T_node>>>, ?_codeLen:stdgo.GoUInt8, ?_sym:stdgo.GoUInt8) {
        if (__1 != null) this.__1 = __1;
        if (_children != null) this._children = _children;
        if (_codeLen != null) this._codeLen = _codeLen;
        if (_sym != null) this._sym = _sym;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_node(__1, _children, _codeLen, _sym);
    }
}
