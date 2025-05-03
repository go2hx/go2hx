package stdgo._internal.index.suffixarray;
function _induceSubL_8_64(_text:stdgo.Slice<stdgo.GoUInt8>, _sa:stdgo.Slice<stdgo.GoInt64>, _freq:stdgo.Slice<stdgo.GoInt64>, _bucket:stdgo.Slice<stdgo.GoInt64>):Void {
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L510"
        stdgo._internal.index.suffixarray.Suffixarray__bucketmin_8_64._bucketMin_8_64(_text, _freq, _bucket);
        _bucket = (_bucket.__slice__(0, (256 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt64>);
        var _k = ((_text.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
        var __0 = (_text[(_k - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt8), __1 = (_text[(_k : stdgo.GoInt)] : stdgo.GoUInt8);
var _c1 = __1, _c0 = __0;
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L538"
        if ((_c0 < _c1 : Bool)) {
            _k = -_k;
        };
        var _cB = (_c1 : stdgo.GoUInt8);
        var _b = (_bucket[(_cB : stdgo.GoInt)] : stdgo.GoInt64);
        _sa[(_b : stdgo.GoInt)] = (_k : stdgo.GoInt64);
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L551"
        _b++;
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L553"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_sa.length) : Bool)) {
                var _j = (_sa[(_i : stdgo.GoInt)] : stdgo.GoInt);
//"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L555"
                if (_j == ((0 : stdgo.GoInt))) {
                    //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L557"
                    {
                        _i++;
                        continue;
                    };
                };
//"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L559"
                if ((_j < (0 : stdgo.GoInt) : Bool)) {
                    _sa[(_i : stdgo.GoInt)] = (-_j : stdgo.GoInt64);
                    //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L562"
                    {
                        _i++;
                        continue;
                    };
                };
_sa[(_i : stdgo.GoInt)] = (0i64 : stdgo.GoInt64);
var _k = (_j - (1 : stdgo.GoInt) : stdgo.GoInt);
var __0 = (_text[(_k - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt8), __1 = (_text[(_k : stdgo.GoInt)] : stdgo.GoUInt8);
var _c1 = __1, _c0 = __0;
//"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L572"
                if ((_c0 < _c1 : Bool)) {
                    _k = -_k;
                };
//"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L576"
                if (_cB != (_c1)) {
                    _bucket[(_cB : stdgo.GoInt)] = _b;
                    _cB = _c1;
                    _b = _bucket[(_cB : stdgo.GoInt)];
                };
_sa[(_b : stdgo.GoInt)] = (_k : stdgo.GoInt64);
//"file:///home/runner/.go/go1.21.3/src/index/suffixarray/sais2.go#L582"
                _b++;
                _i++;
            };
        };
    }
