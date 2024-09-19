package _internal.vendor.golang_dot_org.x.crypto.cryptobyte;
@:structInit @:using(_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder_static_extension.Builder_static_extension) class Builder {
    public var _err : stdgo.Error = (null : stdgo.Error);
    public var _result : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _fixedSize : Bool = false;
    public var _child : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder> = (null : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>);
    public var _offset : stdgo.GoInt = 0;
    public var _pendingLenLen : stdgo.GoInt = 0;
    public var _pendingIsASN1 : Bool = false;
    public var _inContinuation : stdgo.Pointer<Bool> = (null : stdgo.Pointer<Bool>);
    public function new(?_err:stdgo.Error, ?_result:stdgo.Slice<stdgo.GoUInt8>, ?_fixedSize:Bool, ?_child:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>, ?_offset:stdgo.GoInt, ?_pendingLenLen:stdgo.GoInt, ?_pendingIsASN1:Bool, ?_inContinuation:stdgo.Pointer<Bool>) {
        if (_err != null) this._err = _err;
        if (_result != null) this._result = _result;
        if (_fixedSize != null) this._fixedSize = _fixedSize;
        if (_child != null) this._child = _child;
        if (_offset != null) this._offset = _offset;
        if (_pendingLenLen != null) this._pendingLenLen = _pendingLenLen;
        if (_pendingIsASN1 != null) this._pendingIsASN1 = _pendingIsASN1;
        if (_inContinuation != null) this._inContinuation = _inContinuation;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Builder(_err, _result, _fixedSize, _child, _offset, _pendingLenLen, _pendingIsASN1, _inContinuation);
    }
}
