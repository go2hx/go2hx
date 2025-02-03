package stdgo.runtime;
class ProfBuf_static_extension {
    static public function close(_p:ProfBuf):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.runtime.Runtime_ProfBuf.ProfBuf>);
        stdgo._internal.runtime.Runtime_ProfBuf_static_extension.ProfBuf_static_extension.close(_p);
    }
    static public function read(_p:ProfBuf, _mode:T_profBufReadMode):stdgo.Tuple.Tuple3<Array<haxe.UInt64>, Array<stdgo._internal.unsafe.Unsafe.UnsafePointer>, Bool> {
        final _p = (_p : stdgo.Ref<stdgo._internal.runtime.Runtime_ProfBuf.ProfBuf>);
        return {
            final obj = stdgo._internal.runtime.Runtime_ProfBuf_static_extension.ProfBuf_static_extension.read(_p, _mode);
            { _0 : [for (i in obj._0) i], _1 : [for (i in obj._1) i], _2 : obj._2 };
        };
    }
    static public function write(_p:ProfBuf, _tag:stdgo.Pointer<stdgo._internal.unsafe.Unsafe.UnsafePointer>, _now:haxe.Int64, _hdr:Array<haxe.UInt64>, _stk:Array<stdgo.GoUIntptr>):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.runtime.Runtime_ProfBuf.ProfBuf>);
        final _now = (_now : stdgo.GoInt64);
        final _hdr = ([for (i in _hdr) (i : stdgo.GoUInt64)] : stdgo.Slice<stdgo.GoUInt64>);
        final _stk = ([for (i in _stk) (i : stdgo.GoUIntptr)] : stdgo.Slice<stdgo.GoUIntptr>);
        stdgo._internal.runtime.Runtime_ProfBuf_static_extension.ProfBuf_static_extension.write(_p, _tag, _now, _hdr, _stk);
    }
}
