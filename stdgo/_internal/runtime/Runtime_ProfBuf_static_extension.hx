package stdgo._internal.runtime;
@:keep @:allow(stdgo._internal.runtime.Runtime.ProfBuf_asInterface) class ProfBuf_static_extension {
    @:keep
    static public function close( _p:stdgo.Ref<stdgo._internal.runtime.Runtime_ProfBuf.ProfBuf>):Void throw "ProfBuf:runtime.close is not yet implemented";
    @:keep
    static public function read( _p:stdgo.Ref<stdgo._internal.runtime.Runtime_ProfBuf.ProfBuf>, _mode:stdgo._internal.runtime.Runtime_T_profBufReadMode.T_profBufReadMode):{ var _0 : stdgo.Slice<stdgo.GoUInt64>; var _1 : stdgo.Slice<stdgo._internal.unsafe.Unsafe.UnsafePointer>; var _2 : Bool; } throw "ProfBuf:runtime.read is not yet implemented";
    @:keep
    static public function write( _p:stdgo.Ref<stdgo._internal.runtime.Runtime_ProfBuf.ProfBuf>, _tag:stdgo.Pointer<stdgo._internal.unsafe.Unsafe.UnsafePointer>, _now:stdgo.GoInt64, _hdr:stdgo.Slice<stdgo.GoUInt64>, _stk:stdgo.Slice<stdgo.GoUIntptr>):Void throw "ProfBuf:runtime.write is not yet implemented";
}
