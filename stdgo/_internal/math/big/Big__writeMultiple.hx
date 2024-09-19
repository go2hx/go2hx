package stdgo._internal.math.big;
function _writeMultiple(_s:stdgo._internal.fmt.Fmt_State.State, _text:stdgo.GoString, _count:stdgo.GoInt):Void {
        if (((_text.length) > (0 : stdgo.GoInt) : Bool)) {
            var _b = (_text : stdgo.Slice<stdgo.GoUInt8>);
            stdgo.Go.cfor((_count > (0 : stdgo.GoInt) : Bool), _count--, {
                _s.write(_b);
            });
        };
    }
