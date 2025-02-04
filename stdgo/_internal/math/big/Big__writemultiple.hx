package stdgo._internal.math.big;
function _writeMultiple(_s:stdgo._internal.fmt.Fmt_state.State, _text:stdgo.GoString, _count:stdgo.GoInt):Void {
        if (((_text.length) > (0 : stdgo.GoInt) : Bool)) {
            var _b = (_text : stdgo.Slice<stdgo.GoUInt8>);
            while ((_count > (0 : stdgo.GoInt) : Bool)) {
                _s.write(_b);
                _count--;
            };
        };
    }
