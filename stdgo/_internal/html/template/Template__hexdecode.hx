package stdgo._internal.html.template;
function _hexDecode(_s:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt32 {
        var _n = (0 : stdgo.GoInt32);
        //"file:///home/runner/.go/go1.21.3/src/html/template/css.go#L111"
        for (__6 => _c in _s) {
            _n = (_n << ((4i64 : stdgo.GoUInt64)) : stdgo.GoInt32);
            //"file:///home/runner/.go/go1.21.3/src/html/template/css.go#L113"
            if ((((48 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                _n = (_n | (((_c - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt32)) : stdgo.GoInt32);
            } else if ((((97 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (102 : stdgo.GoUInt8) : Bool) : Bool)) {
                _n = (_n | ((((_c - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt32) + (10 : stdgo.GoInt32) : stdgo.GoInt32)) : stdgo.GoInt32);
            } else if ((((65 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (70 : stdgo.GoUInt8) : Bool) : Bool)) {
                _n = (_n | ((((_c - (65 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt32) + (10 : stdgo.GoInt32) : stdgo.GoInt32)) : stdgo.GoInt32);
            } else {
                //"file:///home/runner/.go/go1.21.3/src/html/template/css.go#L121"
                throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("Bad hex digit in %q" : stdgo.GoString), stdgo.Go.toInterface(_s)));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/html/template/css.go#L124"
        return _n;
    }
