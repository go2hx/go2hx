package stdgo._internal.container.ring;
function _verify(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _r:stdgo.Ref<stdgo._internal.container.ring.Ring_ring.Ring>, n:stdgo.GoInt, _sum:stdgo.GoInt):Void {
        var _n = (@:check2r _r.len() : stdgo.GoInt);
        if (_n != (n)) {
            @:check2r _t.errorf(("r.Len() == %d; expected %d" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(n));
        };
        _n = (0 : stdgo.GoInt);
        var _s = (0 : stdgo.GoInt);
        @:check2r _r.do_(function(_p:stdgo.AnyInterface):Void {
            _n++;
            if (_p != null) {
                _s = (_s + ((stdgo.Go.typeAssert((_p : stdgo.GoInt)) : stdgo.GoInt)) : stdgo.GoInt);
            };
        });
        if (_n != (n)) {
            @:check2r _t.errorf(("number of forward iterations == %d; expected %d" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(n));
        };
        if (((_sum >= (0 : stdgo.GoInt) : Bool) && (_s != _sum) : Bool)) {
            @:check2r _t.errorf(("forward ring sum = %d; expected %d" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_sum));
        };
        if (({
            final value = _r;
            (value == null || (value : Dynamic).__nil__);
        })) {
            return;
        };
        if (({
            final value = (@:checkr _r ?? throw "null pointer dereference")._next;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            var _p:stdgo.Ref<stdgo._internal.container.ring.Ring_ring.Ring> = (null : stdgo.Ref<stdgo._internal.container.ring.Ring_ring.Ring>);
            {
                var _q = _r;
                while ((({
                    final value = _p;
                    (value == null || (value : Dynamic).__nil__);
                }) || (_q != _r) : Bool)) {
                    if ((({
                        final value = _p;
                        (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                    }) && (_p != (@:checkr _q ?? throw "null pointer dereference")._prev) : Bool)) {
                        @:check2r _t.errorf(("prev = %p, expected q.prev = %p\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_p)), stdgo.Go.toInterface(stdgo.Go.asInterface((@:checkr _q ?? throw "null pointer dereference")._prev)));
                    };
_p = _q;
                    _q = (@:checkr _q ?? throw "null pointer dereference")._next;
                };
            };
            if (_p != ((@:checkr _r ?? throw "null pointer dereference")._prev)) {
                @:check2r _t.errorf(("prev = %p, expected r.prev = %p\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_p)), stdgo.Go.toInterface(stdgo.Go.asInterface((@:checkr _r ?? throw "null pointer dereference")._prev)));
            };
        };
        if (@:check2r _r.next() != ((@:checkr _r ?? throw "null pointer dereference")._next)) {
            @:check2r _t.errorf(("r.Next() != r.next" : stdgo.GoString));
        };
        if (@:check2r _r.prev() != ((@:checkr _r ?? throw "null pointer dereference")._prev)) {
            @:check2r _t.errorf(("r.Prev() != r.prev" : stdgo.GoString));
        };
        if (@:check2r _r.move((0 : stdgo.GoInt)) != (_r)) {
            @:check2r _t.errorf(("r.Move(0) != r" : stdgo.GoString));
        };
        if (@:check2r _r.move(n) != (_r)) {
            @:check2r _t.errorf(("r.Move(%d) != r" : stdgo.GoString), stdgo.Go.toInterface(n));
        };
        if (@:check2r _r.move(-n) != (_r)) {
            @:check2r _t.errorf(("r.Move(%d) != r" : stdgo.GoString), stdgo.Go.toInterface(-n));
        };
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (10 : stdgo.GoInt) : Bool)) {
                var _ni = (n + _i : stdgo.GoInt);
var _mi = (_ni % n : stdgo.GoInt);
if (@:check2r _r.move(_ni) != (@:check2r _r.move(_mi))) {
                    @:check2r _t.errorf(("r.Move(%d) != r.Move(%d)" : stdgo.GoString), stdgo.Go.toInterface(_ni), stdgo.Go.toInterface(_mi));
                };
if (@:check2r _r.move(-_ni) != (@:check2r _r.move(-_mi))) {
                    @:check2r _t.errorf(("r.Move(%d) != r.Move(%d)" : stdgo.GoString), stdgo.Go.toInterface(-_ni), stdgo.Go.toInterface(-_mi));
                };
                _i++;
            };
        };
    }
