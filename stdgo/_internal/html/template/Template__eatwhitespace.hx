package stdgo._internal.html.template;
function _eatWhiteSpace(_s:stdgo.Slice<stdgo.GoUInt8>, _i:stdgo.GoInt):stdgo.GoInt {
        //"file:///home/runner/.go/go1.21.3/src/html/template/transition.go#L625"
        {
            var _j = (_i : stdgo.GoInt);
            while ((_j < (_s.length) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/html/template/transition.go#L626"
                {
                    final __value__ = _s[(_j : stdgo.GoInt)];
                    if (__value__ == ((32 : stdgo.GoUInt8)) || __value__ == ((9 : stdgo.GoUInt8)) || __value__ == ((10 : stdgo.GoUInt8)) || __value__ == ((12 : stdgo.GoUInt8)) || __value__ == ((13 : stdgo.GoUInt8))) {} else {
                        //"file:///home/runner/.go/go1.21.3/src/html/template/transition.go#L630"
                        return _j;
                    };
                };
                _j++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/html/template/transition.go#L633"
        return (_s.length);
    }
