package stdgo._internal.index.suffixarray;
function _assignID_8_32(_text:stdgo.Slice<stdgo.GoUInt8>, _sa:stdgo.Slice<stdgo.GoInt32>, _numLMS:stdgo.GoInt):stdgo.GoInt {
        stdgo._internal.internal.Macro.controlFlow({
            var _id = (0 : stdgo.GoInt);
            var _lastLen = ((-1 : stdgo.GoInt32) : stdgo.GoInt32);
            var _lastPos = ((0 : stdgo.GoInt32) : stdgo.GoInt32);
            for (__0 => _j in (_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>)) {
                var _n = (_sa[((_j / (2 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt)] : stdgo.GoInt32);
                if (_n != (_lastLen)) {
                    @:goto "New";
                };
                if (((_n : stdgo.GoUInt32) >= (_text.length : stdgo.GoUInt32) : Bool)) {
                    @:goto "Same";
                };
                {
                    var _n = (_n : stdgo.GoInt);
                    var _this = ((_text.__slice__(_j) : stdgo.Slice<stdgo.GoUInt8>).__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>);
                    var _last = ((_text.__slice__(_lastPos) : stdgo.Slice<stdgo.GoUInt8>).__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>);
                    {
                        var _i = (0 : stdgo.GoInt);
                        while ((_i < _n : Bool)) {
                            if (_this[(_i : stdgo.GoInt)] != (_last[(_i : stdgo.GoInt)])) {
                                @:goto "New";
                            };
                            _i++;
                        };
                    };
                    @:goto "Same";
                };
                @:label("New") _id++;
                _lastPos = _j;
                _lastLen = _n;
                @:label("Same") _sa[((_j / (2 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt)] = (_id : stdgo.GoInt32);
            };
            return _id;
        });
    }
