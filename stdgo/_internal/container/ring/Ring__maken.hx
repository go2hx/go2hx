package stdgo._internal.container.ring;
function _makeN(_n:stdgo.GoInt):stdgo.Ref<stdgo._internal.container.ring.Ring_ring.Ring> {
        var _r = stdgo._internal.container.ring.Ring_new_.new_(_n);
        //"file:///home/runner/.go/go1.21.3/src/container/ring/ring_test.go#L120"
        {
            var _i = (1 : stdgo.GoInt);
            while ((_i <= _n : Bool)) {
                (@:checkr _r ?? throw "null pointer dereference").value = stdgo.Go.toInterface(_i);
_r = _r.next();
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/container/ring/ring_test.go#L124"
        return _r;
    }
