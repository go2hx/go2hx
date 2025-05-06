package stdgo._internal.go.constant;
function _reverse(_x:stdgo.Slice<stdgo.GoString>):stdgo.Slice<stdgo.GoString> {
        var _n = (_x.length : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L154"
        {
            var _i = (0 : stdgo.GoInt);
            while (((_i + _i : stdgo.GoInt) < _n : Bool)) {
                {
                    final __tmp__0 = _x[((_n - (1 : stdgo.GoInt) : stdgo.GoInt) - _i : stdgo.GoInt)].__copy__();
                    final __tmp__1 = _x[(_i : stdgo.GoInt)].__copy__();
                    final __tmp__2 = _x;
                    final __tmp__3 = (_i : stdgo.GoInt);
                    final __tmp__4 = _x;
                    final __tmp__5 = ((_n - (1 : stdgo.GoInt) : stdgo.GoInt) - _i : stdgo.GoInt);
                    __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
                    __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
                };
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/constant/value.go#L157"
        return _x;
    }
