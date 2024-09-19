package stdgo._internal.index.suffixarray;
function _assignID_8_64(_text:stdgo.Slice<stdgo.GoUInt8>, _sa:stdgo.Slice<stdgo.GoInt64>, _numLMS:stdgo.GoInt):stdgo.GoInt {
        stdgo._internal.internal.Macro.controlFlow({
            var _id = (0 : stdgo.GoInt);
            var _lastLen = ((-1i64 : stdgo.GoInt64) : stdgo.GoInt64);
            var _lastPos = ((0i64 : stdgo.GoInt64) : stdgo.GoInt64);
            for (__0 => _j in (_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt64>)) {
                var _n = (_sa[((_j / (2i64 : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoInt)] : stdgo.GoInt64);
                if (_n != (_lastLen)) {
                    @:goto "New";
                };
                if (((_n : stdgo.GoUInt64) >= (_text.length : stdgo.GoUInt64) : Bool)) {
                    @:goto "Same";
                };
                {
                    var _n = (_n : stdgo.GoInt);
                    var _this = ((_text.__slice__(_j) : stdgo.Slice<stdgo.GoUInt8>).__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>);
                    var _last = ((_text.__slice__(_lastPos) : stdgo.Slice<stdgo.GoUInt8>).__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>);
                    {
                        var _i = (0 : stdgo.GoInt);
                        stdgo.Go.cfor((_i < _n : Bool), _i++, {
                            if (_this[(_i : stdgo.GoInt)] != (_last[(_i : stdgo.GoInt)])) {
                                @:goto "New";
                            };
                        });
                    };
                    @:goto "Same";
                };
                @:label("New") _id++;
                _lastPos = _j;
                _lastLen = _n;
                @:label("Same") _sa[((_j / (2i64 : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoInt)] = (_id : stdgo.GoInt64);
            };
            return _id;
        });
    }
