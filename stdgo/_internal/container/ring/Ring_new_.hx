package stdgo._internal.container.ring;
function new_(_n:stdgo.GoInt):stdgo.Ref<stdgo._internal.container.ring.Ring_ring.Ring> {
        if ((_n <= (0 : stdgo.GoInt) : Bool)) {
            return null;
        };
        var _r = (stdgo.Go.setRef(({} : stdgo._internal.container.ring.Ring_ring.Ring)) : stdgo.Ref<stdgo._internal.container.ring.Ring_ring.Ring>);
        var _p = _r;
        {
            var _i = (1 : stdgo.GoInt);
            while ((_i < _n : Bool)) {
                (@:checkr _p ?? throw "null pointer dereference")._next = (stdgo.Go.setRef(({ _prev : _p } : stdgo._internal.container.ring.Ring_ring.Ring)) : stdgo.Ref<stdgo._internal.container.ring.Ring_ring.Ring>);
_p = (@:checkr _p ?? throw "null pointer dereference")._next;
                _i++;
            };
        };
        (@:checkr _p ?? throw "null pointer dereference")._next = _r;
        (@:checkr _r ?? throw "null pointer dereference")._prev = _p;
        return _r;
    }
