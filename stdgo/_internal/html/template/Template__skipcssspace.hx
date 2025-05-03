package stdgo._internal.html.template;
function _skipCSSSpace(_c:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        //"file:///home/runner/.go/go1.21.3/src/html/template/css.go#L129"
        if ((_c.length) == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/html/template/css.go#L130"
            return _c;
        };
        //"file:///home/runner/.go/go1.21.3/src/html/template/css.go#L133"
        {
            final __value__ = _c[(0 : stdgo.GoInt)];
            if (__value__ == ((9 : stdgo.GoUInt8)) || __value__ == ((10 : stdgo.GoUInt8)) || __value__ == ((12 : stdgo.GoUInt8)) || __value__ == ((32 : stdgo.GoUInt8))) {
                //"file:///home/runner/.go/go1.21.3/src/html/template/css.go#L135"
                return (_c.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            } else if (__value__ == ((13 : stdgo.GoUInt8))) {
                //"file:///home/runner/.go/go1.21.3/src/html/template/css.go#L140"
                if ((((_c.length) >= (2 : stdgo.GoInt) : Bool) && (_c[(1 : stdgo.GoInt)] == (10 : stdgo.GoUInt8)) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/html/template/css.go#L141"
                    return (_c.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                };
                //"file:///home/runner/.go/go1.21.3/src/html/template/css.go#L143"
                return (_c.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/html/template/css.go#L145"
        return _c;
    }
