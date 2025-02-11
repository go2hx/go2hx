package stdgo._internal.internal.diff;
function _tgs(_x:stdgo.Slice<stdgo.GoString>, _y:stdgo.Slice<stdgo.GoString>):stdgo.Slice<stdgo._internal.internal.diff.Diff_t_pair.T_pair> {
        var _m = (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoInt>();
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>) : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>);
        for (__0 => _s in _x) {
            {
                var _c = (_m[_s] ?? (0 : stdgo.GoInt) : stdgo.GoInt);
                if ((_c > (-2 : stdgo.GoInt) : Bool)) {
                    _m[_s] = (_c - (1 : stdgo.GoInt) : stdgo.GoInt);
                };
            };
        };
        for (__1 => _s in _y) {
            {
                var _c = (_m[_s] ?? (0 : stdgo.GoInt) : stdgo.GoInt);
                if ((_c > (-8 : stdgo.GoInt) : Bool)) {
                    _m[_s] = (_c - (4 : stdgo.GoInt) : stdgo.GoInt);
                };
            };
        };
        var __0:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>), __1:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>), __2:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
var _inv = __2, _yi = __1, _xi = __0;
        for (_i => _s in _y) {
            if ((_m[_s] ?? (0 : stdgo.GoInt)) == ((-5 : stdgo.GoInt))) {
                _m[_s] = (_yi.length);
                _yi = (_yi.__append__(_i));
            };
        };
        for (_i => _s in _x) {
            {
                var __tmp__ = (_m != null && _m.__exists__(_s?.__copy__()) ? { _0 : _m[_s?.__copy__()], _1 : true } : { _0 : (0 : stdgo.GoInt), _1 : false }), _j:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
                if ((_ok && (_j >= (0 : stdgo.GoInt) : Bool) : Bool)) {
                    _xi = (_xi.__append__(_i));
                    _inv = (_inv.__append__(_j));
                };
            };
        };
        var j = _inv;
        var _n = (_xi.length : stdgo.GoInt);
        var t = (new stdgo.Slice<stdgo.GoInt>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var l = (new stdgo.Slice<stdgo.GoInt>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        for (_i => _ in t) {
            t[(_i : stdgo.GoInt)] = (_n + (1 : stdgo.GoInt) : stdgo.GoInt);
        };
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _n : Bool)) {
                var _k = (stdgo._internal.sort.Sort_search.search(_n, function(_k:stdgo.GoInt):Bool {
                    return (t[(_k : stdgo.GoInt)] >= j[(_i : stdgo.GoInt)] : Bool);
                }) : stdgo.GoInt);
t[(_k : stdgo.GoInt)] = j[(_i : stdgo.GoInt)];
l[(_i : stdgo.GoInt)] = (_k + (1 : stdgo.GoInt) : stdgo.GoInt);
                _i++;
            };
        };
        var _k = (0 : stdgo.GoInt);
        for (__2 => _v in l) {
            if ((_k < _v : Bool)) {
                _k = _v;
            };
        };
        var _seq = (new stdgo.Slice<stdgo._internal.internal.diff.Diff_t_pair.T_pair>(((2 : stdgo.GoInt) + _k : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... (((2 : stdgo.GoInt) + _k : stdgo.GoInt).toBasic() > 0 ? ((2 : stdgo.GoInt) + _k : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.internal.diff.Diff_t_pair.T_pair)]) : stdgo.Slice<stdgo._internal.internal.diff.Diff_t_pair.T_pair>);
        _seq[((1 : stdgo.GoInt) + _k : stdgo.GoInt)] = (new stdgo._internal.internal.diff.Diff_t_pair.T_pair((_x.length), (_y.length)) : stdgo._internal.internal.diff.Diff_t_pair.T_pair);
        var _lastj = (_n : stdgo.GoInt);
        {
            var _i = (_n - (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                if (((l[(_i : stdgo.GoInt)] == _k) && (j[(_i : stdgo.GoInt)] < _lastj : Bool) : Bool)) {
                    _seq[(_k : stdgo.GoInt)] = (new stdgo._internal.internal.diff.Diff_t_pair.T_pair(_xi[(_i : stdgo.GoInt)], _yi[(j[(_i : stdgo.GoInt)] : stdgo.GoInt)]) : stdgo._internal.internal.diff.Diff_t_pair.T_pair);
                    _k--;
                };
                _i--;
            };
        };
        _seq[(0 : stdgo.GoInt)] = (new stdgo._internal.internal.diff.Diff_t_pair.T_pair((0 : stdgo.GoInt), (0 : stdgo.GoInt)) : stdgo._internal.internal.diff.Diff_t_pair.T_pair);
        return _seq;
    }
