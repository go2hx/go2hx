package _internal.vendor.golang_dot_org.x.crypto.internal.poly1305;
@:structInit @:using(_internal.vendor.golang_dot_org.x.crypto.internal.poly1305.Poly1305_T_macGeneric_static_extension.T_macGeneric_static_extension) class T_macGeneric {
    @:embedded
    public var _macState : _internal.vendor.golang_dot_org.x.crypto.internal.poly1305.Poly1305_T_macState.T_macState = ({} : _internal.vendor.golang_dot_org.x.crypto.internal.poly1305.Poly1305_T_macState.T_macState);
    public var _buffer : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(16, 16, ...[for (i in 0 ... 16) (0 : stdgo.GoUInt8)]);
    public var _offset : stdgo.GoInt = 0;
    public function new(?_macState:_internal.vendor.golang_dot_org.x.crypto.internal.poly1305.Poly1305_T_macState.T_macState, ?_buffer:stdgo.GoArray<stdgo.GoUInt8>, ?_offset:stdgo.GoInt) {
        if (_macState != null) this._macState = _macState;
        if (_buffer != null) this._buffer = _buffer;
        if (_offset != null) this._offset = _offset;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_macGeneric(_macState, _buffer, _offset);
    }
}
