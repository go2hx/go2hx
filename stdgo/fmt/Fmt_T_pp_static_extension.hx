package stdgo.fmt;
class T_pp_static_extension {
    static public function _doPrintln(_p:T_pp, _a:Array<stdgo.AnyInterface>):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.fmt.Fmt_T_pp.T_pp>);
        final _a = ([for (i in _a) (i : stdgo.AnyInterface)] : stdgo.Slice<stdgo.AnyInterface>);
        stdgo._internal.fmt.Fmt_T_pp_static_extension.T_pp_static_extension._doPrintln(_p, _a);
    }
    static public function _doPrint(_p:T_pp, _a:Array<stdgo.AnyInterface>):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.fmt.Fmt_T_pp.T_pp>);
        final _a = ([for (i in _a) (i : stdgo.AnyInterface)] : stdgo.Slice<stdgo.AnyInterface>);
        stdgo._internal.fmt.Fmt_T_pp_static_extension.T_pp_static_extension._doPrint(_p, _a);
    }
    static public function _doPrintf(_p:T_pp, _format:String, _a:Array<stdgo.AnyInterface>):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.fmt.Fmt_T_pp.T_pp>);
        final _format = (_format : stdgo.GoString);
        final _a = ([for (i in _a) (i : stdgo.AnyInterface)] : stdgo.Slice<stdgo.AnyInterface>);
        stdgo._internal.fmt.Fmt_T_pp_static_extension.T_pp_static_extension._doPrintf(_p, _format, _a);
    }
    static public function _missingArg(_p:T_pp, _verb:StdTypes.Int):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.fmt.Fmt_T_pp.T_pp>);
        final _verb = (_verb : stdgo.GoInt32);
        stdgo._internal.fmt.Fmt_T_pp_static_extension.T_pp_static_extension._missingArg(_p, _verb);
    }
    static public function _badArgNum(_p:T_pp, _verb:StdTypes.Int):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.fmt.Fmt_T_pp.T_pp>);
        final _verb = (_verb : stdgo.GoInt32);
        stdgo._internal.fmt.Fmt_T_pp_static_extension.T_pp_static_extension._badArgNum(_p, _verb);
    }
    static public function _argNumber(_p:T_pp, _argNum:StdTypes.Int, _format:String, _i:StdTypes.Int, _numArgs:StdTypes.Int):stdgo.Tuple.Tuple3<StdTypes.Int, StdTypes.Int, Bool> {
        final _p = (_p : stdgo.Ref<stdgo._internal.fmt.Fmt_T_pp.T_pp>);
        final _argNum = (_argNum : stdgo.GoInt);
        final _format = (_format : stdgo.GoString);
        final _i = (_i : stdgo.GoInt);
        final _numArgs = (_numArgs : stdgo.GoInt);
        return {
            final obj = stdgo._internal.fmt.Fmt_T_pp_static_extension.T_pp_static_extension._argNumber(_p, _argNum, _format, _i, _numArgs);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function _printValue(_p:T_pp, _value:stdgo._internal.reflect.Reflect_Value.Value, _verb:StdTypes.Int, _depth:StdTypes.Int):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.fmt.Fmt_T_pp.T_pp>);
        final _verb = (_verb : stdgo.GoInt32);
        final _depth = (_depth : stdgo.GoInt);
        stdgo._internal.fmt.Fmt_T_pp_static_extension.T_pp_static_extension._printValue(_p, _value, _verb, _depth);
    }
    static public function _printArg(_p:T_pp, _arg:stdgo.AnyInterface, _verb:StdTypes.Int):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.fmt.Fmt_T_pp.T_pp>);
        final _arg = (_arg : stdgo.AnyInterface);
        final _verb = (_verb : stdgo.GoInt32);
        stdgo._internal.fmt.Fmt_T_pp_static_extension.T_pp_static_extension._printArg(_p, _arg, _verb);
    }
    static public function _handleMethods(_p:T_pp, _verb:StdTypes.Int):Bool {
        final _p = (_p : stdgo.Ref<stdgo._internal.fmt.Fmt_T_pp.T_pp>);
        final _verb = (_verb : stdgo.GoInt32);
        return stdgo._internal.fmt.Fmt_T_pp_static_extension.T_pp_static_extension._handleMethods(_p, _verb);
    }
    static public function _catchPanic(_p:T_pp, _arg:stdgo.AnyInterface, _verb:StdTypes.Int, _method:String):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.fmt.Fmt_T_pp.T_pp>);
        final _arg = (_arg : stdgo.AnyInterface);
        final _verb = (_verb : stdgo.GoInt32);
        final _method = (_method : stdgo.GoString);
        stdgo._internal.fmt.Fmt_T_pp_static_extension.T_pp_static_extension._catchPanic(_p, _arg, _verb, _method);
    }
    static public function _fmtPointer(_p:T_pp, _value:stdgo._internal.reflect.Reflect_Value.Value, _verb:StdTypes.Int):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.fmt.Fmt_T_pp.T_pp>);
        final _verb = (_verb : stdgo.GoInt32);
        stdgo._internal.fmt.Fmt_T_pp_static_extension.T_pp_static_extension._fmtPointer(_p, _value, _verb);
    }
    static public function _fmtBytes(_p:T_pp, _v:Array<std.UInt>, _verb:StdTypes.Int, _typeString:String):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.fmt.Fmt_T_pp.T_pp>);
        final _v = ([for (i in _v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _verb = (_verb : stdgo.GoInt32);
        final _typeString = (_typeString : stdgo.GoString);
        stdgo._internal.fmt.Fmt_T_pp_static_extension.T_pp_static_extension._fmtBytes(_p, _v, _verb, _typeString);
    }
    static public function _fmtString(_p:T_pp, _v:String, _verb:StdTypes.Int):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.fmt.Fmt_T_pp.T_pp>);
        final _v = (_v : stdgo.GoString);
        final _verb = (_verb : stdgo.GoInt32);
        stdgo._internal.fmt.Fmt_T_pp_static_extension.T_pp_static_extension._fmtString(_p, _v, _verb);
    }
    static public function _fmtComplex(_p:T_pp, _v:stdgo.GoComplex128, _size:StdTypes.Int, _verb:StdTypes.Int):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.fmt.Fmt_T_pp.T_pp>);
        final _v = (_v : stdgo.GoComplex128);
        final _size = (_size : stdgo.GoInt);
        final _verb = (_verb : stdgo.GoInt32);
        stdgo._internal.fmt.Fmt_T_pp_static_extension.T_pp_static_extension._fmtComplex(_p, _v, _size, _verb);
    }
    static public function _fmtFloat(_p:T_pp, _v:StdTypes.Float, _size:StdTypes.Int, _verb:StdTypes.Int):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.fmt.Fmt_T_pp.T_pp>);
        final _v = (_v : stdgo.GoFloat64);
        final _size = (_size : stdgo.GoInt);
        final _verb = (_verb : stdgo.GoInt32);
        stdgo._internal.fmt.Fmt_T_pp_static_extension.T_pp_static_extension._fmtFloat(_p, _v, _size, _verb);
    }
    static public function _fmtInteger(_p:T_pp, _v:haxe.UInt64, _isSigned:Bool, _verb:StdTypes.Int):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.fmt.Fmt_T_pp.T_pp>);
        final _v = (_v : stdgo.GoUInt64);
        final _verb = (_verb : stdgo.GoInt32);
        stdgo._internal.fmt.Fmt_T_pp_static_extension.T_pp_static_extension._fmtInteger(_p, _v, _isSigned, _verb);
    }
    static public function _fmt0x64(_p:T_pp, _v:haxe.UInt64, _leading0x:Bool):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.fmt.Fmt_T_pp.T_pp>);
        final _v = (_v : stdgo.GoUInt64);
        stdgo._internal.fmt.Fmt_T_pp_static_extension.T_pp_static_extension._fmt0x64(_p, _v, _leading0x);
    }
    static public function _fmtBool(_p:T_pp, _v:Bool, _verb:StdTypes.Int):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.fmt.Fmt_T_pp.T_pp>);
        final _verb = (_verb : stdgo.GoInt32);
        stdgo._internal.fmt.Fmt_T_pp_static_extension.T_pp_static_extension._fmtBool(_p, _v, _verb);
    }
    static public function _badVerb(_p:T_pp, _verb:StdTypes.Int):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.fmt.Fmt_T_pp.T_pp>);
        final _verb = (_verb : stdgo.GoInt32);
        stdgo._internal.fmt.Fmt_T_pp_static_extension.T_pp_static_extension._badVerb(_p, _verb);
    }
    static public function _unknownType(_p:T_pp, _v:stdgo._internal.reflect.Reflect_Value.Value):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.fmt.Fmt_T_pp.T_pp>);
        stdgo._internal.fmt.Fmt_T_pp_static_extension.T_pp_static_extension._unknownType(_p, _v);
    }
    static public function writeString(_p:T_pp, _s:String):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = (_p : stdgo.Ref<stdgo._internal.fmt.Fmt_T_pp.T_pp>);
        final _s = (_s : stdgo.GoString);
        return {
            final obj = stdgo._internal.fmt.Fmt_T_pp_static_extension.T_pp_static_extension.writeString(_p, _s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function write(_p:T_pp, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = (_p : stdgo.Ref<stdgo._internal.fmt.Fmt_T_pp.T_pp>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.fmt.Fmt_T_pp_static_extension.T_pp_static_extension.write(_p, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function flag(_p:T_pp, _b:StdTypes.Int):Bool {
        final _p = (_p : stdgo.Ref<stdgo._internal.fmt.Fmt_T_pp.T_pp>);
        final _b = (_b : stdgo.GoInt);
        return stdgo._internal.fmt.Fmt_T_pp_static_extension.T_pp_static_extension.flag(_p, _b);
    }
    static public function precision(_p:T_pp):stdgo.Tuple<StdTypes.Int, Bool> {
        final _p = (_p : stdgo.Ref<stdgo._internal.fmt.Fmt_T_pp.T_pp>);
        return {
            final obj = stdgo._internal.fmt.Fmt_T_pp_static_extension.T_pp_static_extension.precision(_p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function width(_p:T_pp):stdgo.Tuple<StdTypes.Int, Bool> {
        final _p = (_p : stdgo.Ref<stdgo._internal.fmt.Fmt_T_pp.T_pp>);
        return {
            final obj = stdgo._internal.fmt.Fmt_T_pp_static_extension.T_pp_static_extension.width(_p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _free(_p:T_pp):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.fmt.Fmt_T_pp.T_pp>);
        stdgo._internal.fmt.Fmt_T_pp_static_extension.T_pp_static_extension._free(_p);
    }
}
