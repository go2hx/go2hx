package stdgo._internal.container.ring;
function _verify(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _r:stdgo.Ref<stdgo._internal.container.ring.Ring_ring.Ring>, n:stdgo.GoInt, _sum:stdgo.GoInt):Void {
        var _n = (_r.len() : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/container/ring/ring_test.go#L29"
        if (_n != (n)) {
            //"file:///home/runner/.go/go1.21.3/src/container/ring/ring_test.go#L30"
            _t.errorf(("r.Len() == %d; expected %d" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(n));
        };
        _n = (0 : stdgo.GoInt);
        var _s = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/container/ring/ring_test.go#L36"
        _r.do_(function(_p:stdgo.AnyInterface):Void {
            //"file:///home/runner/.go/go1.21.3/src/container/ring/ring_test.go#L37"
            _n++;
            //"file:///home/runner/.go/go1.21.3/src/container/ring/ring_test.go#L38"
            if (_p != null) {
                _s = (_s + ((stdgo.Go.typeAssert((_p : stdgo.GoInt)) : stdgo.GoInt)) : stdgo.GoInt);
            };
        });
        //"file:///home/runner/.go/go1.21.3/src/container/ring/ring_test.go#L42"
        if (_n != (n)) {
            //"file:///home/runner/.go/go1.21.3/src/container/ring/ring_test.go#L43"
            _t.errorf(("number of forward iterations == %d; expected %d" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(n));
        };
        //"file:///home/runner/.go/go1.21.3/src/container/ring/ring_test.go#L45"
        if (((_sum >= (0 : stdgo.GoInt) : Bool) && (_s != _sum) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/container/ring/ring_test.go#L46"
            _t.errorf(("forward ring sum = %d; expected %d" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_sum));
        };
        //"file:///home/runner/.go/go1.21.3/src/container/ring/ring_test.go#L49"
        if (({
            final value = _r;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///home/runner/.go/go1.21.3/src/container/ring/ring_test.go#L50"
            return;
        };
        //"file:///home/runner/.go/go1.21.3/src/container/ring/ring_test.go#L54"
        if (({
            final value = (@:checkr _r ?? throw "null pointer dereference")._next;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            var _p:stdgo.Ref<stdgo._internal.container.ring.Ring_ring.Ring> = (null : stdgo.Ref<stdgo._internal.container.ring.Ring_ring.Ring>);
            //"file:///home/runner/.go/go1.21.3/src/container/ring/ring_test.go#L56"
            {
                var _q = _r;
                while ((({
                    final value = _p;
                    (value == null || (value : Dynamic).__nil__);
                }) || (_q != _r) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/container/ring/ring_test.go#L57"
                    if ((({
                        final value = _p;
                        (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                    }) && (_p != (@:checkr _q ?? throw "null pointer dereference")._prev) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/container/ring/ring_test.go#L58"
                        _t.errorf(("prev = %p, expected q.prev = %p\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_p)), stdgo.Go.toInterface(stdgo.Go.asInterface((@:checkr _q ?? throw "null pointer dereference")._prev)));
                    };
_p = _q;
                    _q = (@:checkr _q ?? throw "null pointer dereference")._next;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/container/ring/ring_test.go#L62"
            if (_p != ((@:checkr _r ?? throw "null pointer dereference")._prev)) {
                //"file:///home/runner/.go/go1.21.3/src/container/ring/ring_test.go#L63"
                _t.errorf(("prev = %p, expected r.prev = %p\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_p)), stdgo.Go.toInterface(stdgo.Go.asInterface((@:checkr _r ?? throw "null pointer dereference")._prev)));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/container/ring/ring_test.go#L68"
        if (_r.next() != ((@:checkr _r ?? throw "null pointer dereference")._next)) {
            //"file:///home/runner/.go/go1.21.3/src/container/ring/ring_test.go#L69"
            _t.errorf(("r.Next() != r.next" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/container/ring/ring_test.go#L71"
        if (_r.prev() != ((@:checkr _r ?? throw "null pointer dereference")._prev)) {
            //"file:///home/runner/.go/go1.21.3/src/container/ring/ring_test.go#L72"
            _t.errorf(("r.Prev() != r.prev" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/container/ring/ring_test.go#L76"
        if (_r.move((0 : stdgo.GoInt)) != (_r)) {
            //"file:///home/runner/.go/go1.21.3/src/container/ring/ring_test.go#L77"
            _t.errorf(("r.Move(0) != r" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/container/ring/ring_test.go#L79"
        if (_r.move(n) != (_r)) {
            //"file:///home/runner/.go/go1.21.3/src/container/ring/ring_test.go#L80"
            _t.errorf(("r.Move(%d) != r" : stdgo.GoString), stdgo.Go.toInterface(n));
        };
        //"file:///home/runner/.go/go1.21.3/src/container/ring/ring_test.go#L82"
        if (_r.move(-n) != (_r)) {
            //"file:///home/runner/.go/go1.21.3/src/container/ring/ring_test.go#L83"
            _t.errorf(("r.Move(%d) != r" : stdgo.GoString), stdgo.Go.toInterface(-n));
        };
        //"file:///home/runner/.go/go1.21.3/src/container/ring/ring_test.go#L85"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (10 : stdgo.GoInt) : Bool)) {
                var _ni = (n + _i : stdgo.GoInt);
var _mi = (_ni % n : stdgo.GoInt);
//"file:///home/runner/.go/go1.21.3/src/container/ring/ring_test.go#L88"
                if (_r.move(_ni) != (_r.move(_mi))) {
                    //"file:///home/runner/.go/go1.21.3/src/container/ring/ring_test.go#L89"
                    _t.errorf(("r.Move(%d) != r.Move(%d)" : stdgo.GoString), stdgo.Go.toInterface(_ni), stdgo.Go.toInterface(_mi));
                };
//"file:///home/runner/.go/go1.21.3/src/container/ring/ring_test.go#L91"
                if (_r.move(-_ni) != (_r.move(-_mi))) {
                    //"file:///home/runner/.go/go1.21.3/src/container/ring/ring_test.go#L92"
                    _t.errorf(("r.Move(%d) != r.Move(%d)" : stdgo.GoString), stdgo.Go.toInterface(-_ni), stdgo.Go.toInterface(-_mi));
                };
                _i++;
            };
        };
    }
