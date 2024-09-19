package stdgo._internal.container.ring;
function new_(_n:stdgo.GoInt):stdgo.Ref<stdgo._internal.container.ring.Ring_Ring.Ring> {
        if ((_n <= (0 : stdgo.GoInt) : Bool)) {
            return null;
        };
        var _r = (stdgo.Go.setRef(({} : stdgo._internal.container.ring.Ring_Ring.Ring)) : stdgo.Ref<stdgo._internal.container.ring.Ring_Ring.Ring>);
        var _p = _r;
        {
            var _i = (1 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _n : Bool), _i++, {
                _p._next = (stdgo.Go.setRef(({ _prev : _p } : stdgo._internal.container.ring.Ring_Ring.Ring)) : stdgo.Ref<stdgo._internal.container.ring.Ring_Ring.Ring>);
                _p = _p._next;
            });
        };
        _p._next = _r;
        _r._prev = _p;
        return _r;
    }
