package stdgo._internal.math.big;
function _writeMultiple(_s:stdgo._internal.fmt.Fmt_state.State, _text:stdgo.GoString, _count:stdgo.GoInt):Void {
        //"file:///home/runner/.go/go1.21.3/src/math/big/intconv.go#L45"
        if (((_text.length) > (0 : stdgo.GoInt) : Bool)) {
            var _b = (_text : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///home/runner/.go/go1.21.3/src/math/big/intconv.go#L47"
            while ((_count > (0 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/intconv.go#L48"
                _s.write(_b);
                _count--;
            };
        };
    }
