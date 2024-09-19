package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
@:keep @:allow(_internal.fmt_test.Fmt_test.T_testState_asInterface) class T_testState_static_extension {
    @:keep
    static public function flag( _s:_internal.fmt_test.Fmt_test_T_testState.T_testState, _c:stdgo.GoInt):Bool {
        @:recv var _s:_internal.fmt_test.Fmt_test_T_testState.T_testState = _s?.__copy__();
        return (_s._flag[_c] ?? false);
    }
    @:keep
    static public function precision( _s:_internal.fmt_test.Fmt_test_T_testState.T_testState):{ var _0 : stdgo.GoInt; var _1 : Bool; } {
        @:recv var _s:_internal.fmt_test.Fmt_test_T_testState.T_testState = _s?.__copy__();
        var _prec = (0 : stdgo.GoInt), _ok = false;
        return { _0 : _s._prec, _1 : _s._precOK };
    }
    @:keep
    static public function width( _s:_internal.fmt_test.Fmt_test_T_testState.T_testState):{ var _0 : stdgo.GoInt; var _1 : Bool; } {
        @:recv var _s:_internal.fmt_test.Fmt_test_T_testState.T_testState = _s?.__copy__();
        var _wid = (0 : stdgo.GoInt), _ok = false;
        return { _0 : _s._width, _1 : _s._widthOK };
    }
    @:keep
    static public function write( _s:_internal.fmt_test.Fmt_test_T_testState.T_testState, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _s:_internal.fmt_test.Fmt_test_T_testState.T_testState = _s?.__copy__();
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        throw stdgo.Go.toInterface(("unimplemented" : stdgo.GoString));
    }
}
