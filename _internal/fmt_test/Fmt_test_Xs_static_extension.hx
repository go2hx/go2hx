package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
@:keep @:allow(_internal.fmt_test.Fmt_test.Xs_asInterface) class Xs_static_extension {
    @:keep
    @:pointer
    static public function scan(____:_internal.fmt_test.Fmt_test_Xs.Xs,  _x:stdgo.Pointer<_internal.fmt_test.Fmt_test_Xs.Xs>, _state:stdgo._internal.fmt.Fmt_ScanState.ScanState, _verb:stdgo.GoInt32):stdgo.Error {
        var __tmp__ = _state.token(true, function(_r:stdgo.GoInt32):Bool {
            return _r == (_verb);
        }), _tok:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        var _s = ((_tok : stdgo.GoString)?.__copy__() : stdgo.GoString);
        if (!stdgo._internal.regexp.Regexp_mustCompile.mustCompile(((("^" : stdgo.GoString) + (_verb : stdgo.GoString)?.__copy__() : stdgo.GoString) + ("+$" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__()).matchString(_s?.__copy__())) {
            return stdgo._internal.errors.Errors_new_.new_(("syntax error for xs" : stdgo.GoString));
        };
        _x.value = (_s : _internal.fmt_test.Fmt_test_Xs.Xs);
        return (null : stdgo.Error);
    }
}
