package stdgo._internal.container.ring;
function _dump(_r:stdgo.Ref<stdgo._internal.container.ring.Ring_ring.Ring>):Void {
        //"file:///home/runner/.go/go1.21.3/src/container/ring/ring_test.go#L14"
        if (({
            final value = _r;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///home/runner/.go/go1.21.3/src/container/ring/ring_test.go#L15"
            stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("empty" : stdgo.GoString)));
            //"file:///home/runner/.go/go1.21.3/src/container/ring/ring_test.go#L16"
            return;
        };
        var __0 = (0 : stdgo.GoInt), __1 = (_r.len() : stdgo.GoInt);
var _n = __1, _i = __0;
        //"file:///home/runner/.go/go1.21.3/src/container/ring/ring_test.go#L19"
        {
            var _p = _r;
            while ((_i < _n : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/container/ring/ring_test.go#L20"
                stdgo._internal.fmt.Fmt_printf.printf(("%4d: %p = {<- %p | %p ->}\n" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(stdgo.Go.asInterface(_p)), stdgo.Go.toInterface(stdgo.Go.asInterface((@:checkr _p ?? throw "null pointer dereference")._prev)), stdgo.Go.toInterface(stdgo.Go.asInterface((@:checkr _p ?? throw "null pointer dereference")._next)));
//"file:///home/runner/.go/go1.21.3/src/container/ring/ring_test.go#L21"
                _i++;
                _p = (@:checkr _p ?? throw "null pointer dereference")._next;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/container/ring/ring_test.go#L23"
        stdgo._internal.fmt.Fmt_println.println();
    }
