package stdgo._internal.index.suffixarray;
function _induceSubL_8_32(_text:stdgo.Slice<stdgo.GoUInt8>, _sa:stdgo.Slice<stdgo.GoInt32>, _freq:stdgo.Slice<stdgo.GoInt32>, _bucket:stdgo.Slice<stdgo.GoInt32>):Void {
        stdgo._internal.index.suffixarray.Suffixarray__bucketmin_8_32._bucketMin_8_32(_text, _freq, _bucket);
        _bucket = (_bucket.__slice__(0, (256 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>);
        var _k = ((_text.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
        var __0 = (_text[(_k - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt8), __1 = (_text[(_k : stdgo.GoInt)] : stdgo.GoUInt8);
var _c1 = __1, _c0 = __0;
        if ((_c0 < _c1 : Bool)) {
            _k = -_k;
        };
        var _cB = (_c1 : stdgo.GoUInt8);
        var _b = (_bucket[(_cB : stdgo.GoInt)] : stdgo.GoInt32);
        _sa[(_b : stdgo.GoInt)] = (_k : stdgo.GoInt32);
        _b++;
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_sa.length) : Bool)) {
                var _j = (_sa[(_i : stdgo.GoInt)] : stdgo.GoInt);
if (_j == ((0 : stdgo.GoInt))) {
                    {
                        _i++;
                        continue;
                    };
                };
if ((_j < (0 : stdgo.GoInt) : Bool)) {
                    _sa[(_i : stdgo.GoInt)] = (-_j : stdgo.GoInt32);
                    {
                        _i++;
                        continue;
                    };
                };
_sa[(_i : stdgo.GoInt)] = (0 : stdgo.GoInt32);
var _k = (_j - (1 : stdgo.GoInt) : stdgo.GoInt);
var __0 = (_text[(_k - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt8), __1 = (_text[(_k : stdgo.GoInt)] : stdgo.GoUInt8);
var _c1 = __1, _c0 = __0;
if ((_c0 < _c1 : Bool)) {
                    _k = -_k;
                };
if (_cB != (_c1)) {
                    _bucket[(_cB : stdgo.GoInt)] = _b;
                    _cB = _c1;
                    _b = _bucket[(_cB : stdgo.GoInt)];
                };
_sa[(_b : stdgo.GoInt)] = (_k : stdgo.GoInt32);
_b++;
                _i++;
            };
        };
    }
