package stdgo._internal.regexp;
function _build(_n:stdgo.GoInt, _x:haxe.Rest<stdgo.GoInt>):stdgo.Slice<stdgo.Slice<stdgo.GoInt>> {
        var _x = new stdgo.Slice<stdgo.GoInt>(_x.length, 0, ..._x);
        var _ret = (new stdgo.Slice<stdgo.Slice<stdgo.GoInt>>((_n : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>);
        var _runLength = ((_x.length) / _n : stdgo.GoInt);
        var _j = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/regexp/find_test.go#L143"
        for (_i => _ in _ret) {
            _ret[(_i : stdgo.GoInt)] = (new stdgo.Slice<stdgo.GoInt>((_runLength : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            //"file:///home/runner/.go/go1.21.3/src/regexp/find_test.go#L145"
            _ret[(_i : stdgo.GoInt)].__copyTo__((_x.__slice__(_j) : stdgo.Slice<stdgo.GoInt>));
            _j = (_j + (_runLength) : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/regexp/find_test.go#L147"
            if ((_j > (_x.length) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/regexp/find_test.go#L148"
                throw stdgo.Go.toInterface(("invalid build entry" : stdgo.GoString));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/regexp/find_test.go#L151"
        return _ret;
    }
