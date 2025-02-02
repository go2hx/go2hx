package stdgo._internal.regexp;
function _build(_n:stdgo.GoInt, _x:haxe.Rest<stdgo.GoInt>):stdgo.Slice<stdgo.Slice<stdgo.GoInt>> {
        var _x = new stdgo.Slice<stdgo.GoInt>(_x.length, 0, ..._x);
        var _ret = (new stdgo.Slice<stdgo.Slice<stdgo.GoInt>>((_n : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>);
        var _runLength = ((_x.length) / _n : stdgo.GoInt);
        var _j = (0 : stdgo.GoInt);
        for (_i => _ in _ret) {
            _ret[(_i : stdgo.GoInt)] = (new stdgo.Slice<stdgo.GoInt>((_runLength : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            _ret[(_i : stdgo.GoInt)].__copyTo__((_x.__slice__(_j) : stdgo.Slice<stdgo.GoInt>));
            _j = (_j + (_runLength) : stdgo.GoInt);
            if ((_j > (_x.length) : Bool)) {
                throw stdgo.Go.toInterface(("invalid build entry" : stdgo.GoString));
            };
        };
        return _ret;
    }
