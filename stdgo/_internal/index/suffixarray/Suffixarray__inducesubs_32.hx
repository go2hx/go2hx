package stdgo._internal.index.suffixarray;
function _induceSubS_32(_text:stdgo.Slice<stdgo.GoInt32>, _sa:stdgo.Slice<stdgo.GoInt32>, _freq:stdgo.Slice<stdgo.GoInt32>, _bucket:stdgo.Slice<stdgo.GoInt32>):Void {
        stdgo._internal.index.suffixarray.Suffixarray__bucketmax_32._bucketMax_32(_text, _freq, _bucket);
        var _cB = ((0 : stdgo.GoInt32) : stdgo.GoInt32);
        var _b = (_bucket[(_cB : stdgo.GoInt)] : stdgo.GoInt32);
        var _top = (_sa.length : stdgo.GoInt);
        {
            var _i = ((_sa.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                var _j = (_sa[(_i : stdgo.GoInt)] : stdgo.GoInt);
if (_j == ((0 : stdgo.GoInt))) {
                    {
                        _i--;
                        continue;
                    };
                };
_sa[(_i : stdgo.GoInt)] = (0 : stdgo.GoInt32);
if ((_j < (0 : stdgo.GoInt) : Bool)) {
                    _top--;
                    _sa[(_top : stdgo.GoInt)] = (-_j : stdgo.GoInt32);
                    {
                        _i--;
                        continue;
                    };
                };
var _k = (_j - (1 : stdgo.GoInt) : stdgo.GoInt);
var _c1 = (_text[(_k : stdgo.GoInt)] : stdgo.GoInt32);
var _c0 = (_text[(_k - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt32);
if ((_c0 > _c1 : Bool)) {
                    _k = -_k;
                };
if (_cB != (_c1)) {
                    _bucket[(_cB : stdgo.GoInt)] = _b;
                    _cB = _c1;
                    _b = _bucket[(_cB : stdgo.GoInt)];
                };
_b--;
_sa[(_b : stdgo.GoInt)] = (_k : stdgo.GoInt32);
                _i--;
            };
        };
    }
