package stdgo.fmt;
class T_ss_static_extension {
    static public function _doScanf(_s:T_ss, _format:String, _a:Array<stdgo.AnyInterface>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _s = (_s : stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss>);
        final _format = (_format : stdgo.GoString);
        final _a = ([for (i in _a) (i : stdgo.AnyInterface)] : stdgo.Slice<stdgo.AnyInterface>);
        return {
            final obj = stdgo._internal.fmt.Fmt_T_ss_static_extension.T_ss_static_extension._doScanf(_s, _format, _a);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _advance(_s:T_ss, _format:String):StdTypes.Int {
        final _s = (_s : stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss>);
        final _format = (_format : stdgo.GoString);
        return stdgo._internal.fmt.Fmt_T_ss_static_extension.T_ss_static_extension._advance(_s, _format);
    }
    static public function _doScan(_s:T_ss, _a:Array<stdgo.AnyInterface>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _s = (_s : stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss>);
        final _a = ([for (i in _a) (i : stdgo.AnyInterface)] : stdgo.Slice<stdgo.AnyInterface>);
        return {
            final obj = stdgo._internal.fmt.Fmt_T_ss_static_extension.T_ss_static_extension._doScan(_s, _a);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _scanOne(_s:T_ss, _verb:StdTypes.Int, _arg:stdgo.AnyInterface):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss>);
        final _verb = (_verb : stdgo.GoInt32);
        final _arg = (_arg : stdgo.AnyInterface);
        stdgo._internal.fmt.Fmt_T_ss_static_extension.T_ss_static_extension._scanOne(_s, _verb, _arg);
    }
    static public function _scanPercent(_s:T_ss):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss>);
        stdgo._internal.fmt.Fmt_T_ss_static_extension.T_ss_static_extension._scanPercent(_s);
    }
    static public function _hexString(_s:T_ss):String {
        final _s = (_s : stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss>);
        return stdgo._internal.fmt.Fmt_T_ss_static_extension.T_ss_static_extension._hexString(_s);
    }
    static public function _hexByte(_s:T_ss):stdgo.Tuple<std.UInt, Bool> {
        final _s = (_s : stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss>);
        return {
            final obj = stdgo._internal.fmt.Fmt_T_ss_static_extension.T_ss_static_extension._hexByte(_s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _quotedString(_s:T_ss):String {
        final _s = (_s : stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss>);
        return stdgo._internal.fmt.Fmt_T_ss_static_extension.T_ss_static_extension._quotedString(_s);
    }
    static public function _convertString(_s:T_ss, _verb:StdTypes.Int):String {
        final _s = (_s : stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss>);
        final _verb = (_verb : stdgo.GoInt32);
        return stdgo._internal.fmt.Fmt_T_ss_static_extension.T_ss_static_extension._convertString(_s, _verb);
    }
    static public function _scanComplex(_s:T_ss, _verb:StdTypes.Int, _n:StdTypes.Int):stdgo.GoComplex128 {
        final _s = (_s : stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss>);
        final _verb = (_verb : stdgo.GoInt32);
        final _n = (_n : stdgo.GoInt);
        return stdgo._internal.fmt.Fmt_T_ss_static_extension.T_ss_static_extension._scanComplex(_s, _verb, _n);
    }
    static public function _convertFloat(_s:T_ss, _str:String, _n:StdTypes.Int):StdTypes.Float {
        final _s = (_s : stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss>);
        final _str = (_str : stdgo.GoString);
        final _n = (_n : stdgo.GoInt);
        return stdgo._internal.fmt.Fmt_T_ss_static_extension.T_ss_static_extension._convertFloat(_s, _str, _n);
    }
    static public function _complexTokens(_s:T_ss):stdgo.Tuple<String, String> {
        final _s = (_s : stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss>);
        return {
            final obj = stdgo._internal.fmt.Fmt_T_ss_static_extension.T_ss_static_extension._complexTokens(_s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _floatToken(_s:T_ss):String {
        final _s = (_s : stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss>);
        return stdgo._internal.fmt.Fmt_T_ss_static_extension.T_ss_static_extension._floatToken(_s);
    }
    static public function _scanUint(_s:T_ss, _verb:StdTypes.Int, _bitSize:StdTypes.Int):haxe.UInt64 {
        final _s = (_s : stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss>);
        final _verb = (_verb : stdgo.GoInt32);
        final _bitSize = (_bitSize : stdgo.GoInt);
        return stdgo._internal.fmt.Fmt_T_ss_static_extension.T_ss_static_extension._scanUint(_s, _verb, _bitSize);
    }
    static public function _scanInt(_s:T_ss, _verb:StdTypes.Int, _bitSize:StdTypes.Int):haxe.Int64 {
        final _s = (_s : stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss>);
        final _verb = (_verb : stdgo.GoInt32);
        final _bitSize = (_bitSize : stdgo.GoInt);
        return stdgo._internal.fmt.Fmt_T_ss_static_extension.T_ss_static_extension._scanInt(_s, _verb, _bitSize);
    }
    static public function _scanBasePrefix(_s:T_ss):stdgo.Tuple.Tuple3<StdTypes.Int, String, Bool> {
        final _s = (_s : stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss>);
        return {
            final obj = stdgo._internal.fmt.Fmt_T_ss_static_extension.T_ss_static_extension._scanBasePrefix(_s);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function _scanRune(_s:T_ss, _bitSize:StdTypes.Int):haxe.Int64 {
        final _s = (_s : stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss>);
        final _bitSize = (_bitSize : stdgo.GoInt);
        return stdgo._internal.fmt.Fmt_T_ss_static_extension.T_ss_static_extension._scanRune(_s, _bitSize);
    }
    static public function _scanNumber(_s:T_ss, _digits:String, _haveDigits:Bool):String {
        final _s = (_s : stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss>);
        final _digits = (_digits : stdgo.GoString);
        return stdgo._internal.fmt.Fmt_T_ss_static_extension.T_ss_static_extension._scanNumber(_s, _digits, _haveDigits);
    }
    static public function _getBase(_s:T_ss, _verb:StdTypes.Int):stdgo.Tuple<StdTypes.Int, String> {
        final _s = (_s : stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss>);
        final _verb = (_verb : stdgo.GoInt32);
        return {
            final obj = stdgo._internal.fmt.Fmt_T_ss_static_extension.T_ss_static_extension._getBase(_s, _verb);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _scanBool(_s:T_ss, _verb:StdTypes.Int):Bool {
        final _s = (_s : stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss>);
        final _verb = (_verb : stdgo.GoInt32);
        return stdgo._internal.fmt.Fmt_T_ss_static_extension.T_ss_static_extension._scanBool(_s, _verb);
    }
    static public function _okVerb(_s:T_ss, _verb:StdTypes.Int, _okVerbs:String, _typ:String):Bool {
        final _s = (_s : stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss>);
        final _verb = (_verb : stdgo.GoInt32);
        final _okVerbs = (_okVerbs : stdgo.GoString);
        final _typ = (_typ : stdgo.GoString);
        return stdgo._internal.fmt.Fmt_T_ss_static_extension.T_ss_static_extension._okVerb(_s, _verb, _okVerbs, _typ);
    }
    static public function _accept(_s:T_ss, _ok:String):Bool {
        final _s = (_s : stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss>);
        final _ok = (_ok : stdgo.GoString);
        return stdgo._internal.fmt.Fmt_T_ss_static_extension.T_ss_static_extension._accept(_s, _ok);
    }
    static public function _notEOF(_s:T_ss):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss>);
        stdgo._internal.fmt.Fmt_T_ss_static_extension.T_ss_static_extension._notEOF(_s);
    }
    static public function _peek(_s:T_ss, _ok:String):Bool {
        final _s = (_s : stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss>);
        final _ok = (_ok : stdgo.GoString);
        return stdgo._internal.fmt.Fmt_T_ss_static_extension.T_ss_static_extension._peek(_s, _ok);
    }
    static public function _consume(_s:T_ss, _ok:String, _accept:Bool):Bool {
        final _s = (_s : stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss>);
        final _ok = (_ok : stdgo.GoString);
        return stdgo._internal.fmt.Fmt_T_ss_static_extension.T_ss_static_extension._consume(_s, _ok, _accept);
    }
    static public function _token(_s:T_ss, _skipSpace:Bool, _f:stdgo.GoInt32 -> Bool):Array<std.UInt> {
        final _s = (_s : stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss>);
        final _f = _f;
        return [for (i in stdgo._internal.fmt.Fmt_T_ss_static_extension.T_ss_static_extension._token(_s, _skipSpace, _f)) i];
    }
    static public function skipSpace(_s:T_ss):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss>);
        stdgo._internal.fmt.Fmt_T_ss_static_extension.T_ss_static_extension.skipSpace(_s);
    }
    static public function _free(_s:T_ss, _old:T_ssave):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss>);
        stdgo._internal.fmt.Fmt_T_ss_static_extension.T_ss_static_extension._free(_s, _old);
    }
    static public function token(_s:T_ss, _skipSpace:Bool, _f:stdgo.GoInt32 -> Bool):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _s = (_s : stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss>);
        final _f = _f;
        return {
            final obj = stdgo._internal.fmt.Fmt_T_ss_static_extension.T_ss_static_extension.token(_s, _skipSpace, _f);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function _errorString(_s:T_ss, _err:String):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss>);
        final _err = (_err : stdgo.GoString);
        stdgo._internal.fmt.Fmt_T_ss_static_extension.T_ss_static_extension._errorString(_s, _err);
    }
    static public function _error(_s:T_ss, _err:stdgo.Error):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss>);
        final _err = (_err : stdgo.Error);
        stdgo._internal.fmt.Fmt_T_ss_static_extension.T_ss_static_extension._error(_s, _err);
    }
    static public function unreadRune(_s:T_ss):stdgo.Error {
        final _s = (_s : stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss>);
        return stdgo._internal.fmt.Fmt_T_ss_static_extension.T_ss_static_extension.unreadRune(_s);
    }
    static public function _mustReadRune(_s:T_ss):StdTypes.Int {
        final _s = (_s : stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss>);
        return stdgo._internal.fmt.Fmt_T_ss_static_extension.T_ss_static_extension._mustReadRune(_s);
    }
    static public function _getRune(_s:T_ss):StdTypes.Int {
        final _s = (_s : stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss>);
        return stdgo._internal.fmt.Fmt_T_ss_static_extension.T_ss_static_extension._getRune(_s);
    }
    static public function width(_s:T_ss):stdgo.Tuple<StdTypes.Int, Bool> {
        final _s = (_s : stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss>);
        return {
            final obj = stdgo._internal.fmt.Fmt_T_ss_static_extension.T_ss_static_extension.width(_s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function readRune(_s:T_ss):stdgo.Tuple.Tuple3<StdTypes.Int, StdTypes.Int, stdgo.Error> {
        final _s = (_s : stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss>);
        return {
            final obj = stdgo._internal.fmt.Fmt_T_ss_static_extension.T_ss_static_extension.readRune(_s);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function read(_s:T_ss, _buf:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _s = (_s : stdgo.Ref<stdgo._internal.fmt.Fmt_T_ss.T_ss>);
        final _buf = ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.fmt.Fmt_T_ss_static_extension.T_ss_static_extension.read(_s, _buf);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
