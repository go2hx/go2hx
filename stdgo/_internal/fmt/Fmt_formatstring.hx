package stdgo._internal.fmt;
function formatString(_state:stdgo._internal.fmt.Fmt_state.State, _verb:stdgo.GoInt32):stdgo.GoString {
        var _tmp:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(16, 16).__setNumber32__();
        var _b = ((_tmp.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__append__((37 : stdgo.GoUInt8)));
        for (__0 => _c in (" +-#0" : stdgo.GoString)) {
            if (_state.flag((_c : stdgo.GoInt))) {
                _b = (_b.__append__((_c : stdgo.GoUInt8)));
            };
        };
        {
            var __tmp__ = _state.width(), _w:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                _b = stdgo._internal.strconv.Strconv_appendint.appendInt(_b, (_w : stdgo.GoInt64), (10 : stdgo.GoInt));
            };
        };
        {
            var __tmp__ = _state.precision(), _p:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                _b = (_b.__append__((46 : stdgo.GoUInt8)));
                _b = stdgo._internal.strconv.Strconv_appendint.appendInt(_b, (_p : stdgo.GoInt64), (10 : stdgo.GoInt));
            };
        };
        _b = stdgo._internal.unicode.utf8.Utf8_appendrune.appendRune(_b, _verb);
        return (_b : stdgo.GoString)?.__copy__();
    }
