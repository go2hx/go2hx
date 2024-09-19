package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
@:keep @:allow(_internal.fmt_test.Fmt_test.TwoLines_asInterface) class TwoLines_static_extension {
    @:keep
    @:pointer
    static public function scan(____:_internal.fmt_test.Fmt_test_TwoLines.TwoLines,  _t:stdgo.Pointer<_internal.fmt_test.Fmt_test_TwoLines.TwoLines>, _state:stdgo._internal.fmt.Fmt_ScanState.ScanState, _verb:stdgo.GoInt32):stdgo.Error {
        var _chars = (new stdgo.Slice<stdgo.GoInt32>((0 : stdgo.GoInt).toBasic(), (100 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        {
            var _nlCount = (0 : stdgo.GoInt);
            while ((_nlCount < (2 : stdgo.GoInt) : Bool)) {
                var __tmp__ = _state.readRune(), _c:stdgo.GoInt32 = __tmp__._0, __3:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                if (_err != null) {
                    return _err;
                };
                _chars = (_chars.__append__(_c));
                if (_c == ((10 : stdgo.GoInt32))) {
                    _nlCount++;
                };
            };
        };
        _t.value = ((_chars : stdgo.GoString) : _internal.fmt_test.Fmt_test_TwoLines.TwoLines);
        return (null : stdgo.Error);
    }
}
