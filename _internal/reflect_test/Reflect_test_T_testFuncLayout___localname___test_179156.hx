package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
@:structInit class T_testFuncLayout___localname___test_179156 {
    public var _rcvr : stdgo._internal.reflect.Reflect_Type_.Type_ = (null : stdgo._internal.reflect.Reflect_Type_.Type_);
    public var _typ : stdgo._internal.reflect.Reflect_Type_.Type_ = (null : stdgo._internal.reflect.Reflect_Type_.Type_);
    public var _size : stdgo.GoUIntptr = 0;
    public var _argsize : stdgo.GoUIntptr = 0;
    public var _retOffset : stdgo.GoUIntptr = 0;
    public var _stack : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _gc : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _inRegs : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _outRegs : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _intRegs : stdgo.GoInt = 0;
    public var _floatRegs : stdgo.GoInt = 0;
    public var _floatRegSize : stdgo.GoUIntptr = 0;
    public function new(?_rcvr:stdgo._internal.reflect.Reflect_Type_.Type_, ?_typ:stdgo._internal.reflect.Reflect_Type_.Type_, ?_size:stdgo.GoUIntptr, ?_argsize:stdgo.GoUIntptr, ?_retOffset:stdgo.GoUIntptr, ?_stack:stdgo.Slice<stdgo.GoUInt8>, ?_gc:stdgo.Slice<stdgo.GoUInt8>, ?_inRegs:stdgo.Slice<stdgo.GoUInt8>, ?_outRegs:stdgo.Slice<stdgo.GoUInt8>, ?_intRegs:stdgo.GoInt, ?_floatRegs:stdgo.GoInt, ?_floatRegSize:stdgo.GoUIntptr) {
        if (_rcvr != null) this._rcvr = _rcvr;
        if (_typ != null) this._typ = _typ;
        if (_size != null) this._size = _size;
        if (_argsize != null) this._argsize = _argsize;
        if (_retOffset != null) this._retOffset = _retOffset;
        if (_stack != null) this._stack = _stack;
        if (_gc != null) this._gc = _gc;
        if (_inRegs != null) this._inRegs = _inRegs;
        if (_outRegs != null) this._outRegs = _outRegs;
        if (_intRegs != null) this._intRegs = _intRegs;
        if (_floatRegs != null) this._floatRegs = _floatRegs;
        if (_floatRegSize != null) this._floatRegSize = _floatRegSize;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testFuncLayout___localname___test_179156(
_rcvr,
_typ,
_size,
_argsize,
_retOffset,
_stack,
_gc,
_inRegs,
_outRegs,
_intRegs,
_floatRegs,
_floatRegSize);
    }
}
