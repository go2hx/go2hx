package stdgo._internal.index.suffixarray;
function _recurse_64(_sa:stdgo.Slice<stdgo.GoInt64>, _oldTmp:stdgo.Slice<stdgo.GoInt64>, _numLMS:stdgo.GoInt, _maxID:stdgo.GoInt):Void {
        var __0 = (_sa.__slice__(0, _numLMS) : stdgo.Slice<stdgo.GoInt64>), __1 = (_sa.__slice__(_numLMS, ((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt64>), __2 = (_sa.__slice__(((_sa.length) - _numLMS : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt64>);
var _text = __2, _saTmp = __1, _dst = __0;
        var _tmp = _oldTmp;
        if (((_tmp.length) < (_saTmp.length) : Bool)) {
            _tmp = _saTmp;
        };
        if (((_tmp.length) < _numLMS : Bool)) {
            var _n = (_maxID : stdgo.GoInt);
            if ((_n < (_numLMS / (2 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                _n = (_numLMS / (2 : stdgo.GoInt) : stdgo.GoInt);
            };
            _tmp = (new stdgo.Slice<stdgo.GoInt64>((_n : stdgo.GoInt).toBasic(), 0).__setNumber64__() : stdgo.Slice<stdgo.GoInt64>);
        };
        for (_i => _ in _dst) {
            _dst[(_i : stdgo.GoInt)] = (0i64 : stdgo.GoInt64);
        };
        stdgo._internal.index.suffixarray.Suffixarray__sais_64._sais_64(_text, _maxID, _dst, _tmp);
    }
