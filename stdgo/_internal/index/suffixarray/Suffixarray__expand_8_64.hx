package stdgo._internal.index.suffixarray;
function _expand_8_64(_text:stdgo.Slice<stdgo.GoUInt8>, _freq:stdgo.Slice<stdgo.GoInt64>, _bucket:stdgo.Slice<stdgo.GoInt64>, _sa:stdgo.Slice<stdgo.GoInt64>, _numLMS:stdgo.GoInt):Void {
        stdgo._internal.index.suffixarray.Suffixarray__bucketMax_8_64._bucketMax_8_64(_text, _freq, _bucket);
        _bucket = (_bucket.__slice__(0, (256 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt64>);
        var _x = (_numLMS - (1 : stdgo.GoInt) : stdgo.GoInt);
        var _saX = (_sa[(_x : stdgo.GoInt)] : stdgo.GoInt64);
        var _c = (_text[(_saX : stdgo.GoInt)] : stdgo.GoUInt8);
        var _b = (_bucket[(_c : stdgo.GoInt)] - (1i64 : stdgo.GoInt64) : stdgo.GoInt64);
        _bucket[(_c : stdgo.GoInt)] = _b;
        {
            var _i = ((_sa.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
            stdgo.Go.cfor((_i >= (0 : stdgo.GoInt) : Bool), _i--, {
                if (_i != ((_b : stdgo.GoInt))) {
                    _sa[(_i : stdgo.GoInt)] = (0i64 : stdgo.GoInt64);
                    continue;
                };
                _sa[(_i : stdgo.GoInt)] = _saX;
                if ((_x > (0 : stdgo.GoInt) : Bool)) {
                    _x--;
                    _saX = _sa[(_x : stdgo.GoInt)];
                    _c = _text[(_saX : stdgo.GoInt)];
                    _b = (_bucket[(_c : stdgo.GoInt)] - (1i64 : stdgo.GoInt64) : stdgo.GoInt64);
                    _bucket[(_c : stdgo.GoInt)] = _b;
                };
            });
        };
    }