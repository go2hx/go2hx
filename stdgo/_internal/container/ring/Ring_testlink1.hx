package stdgo._internal.container.ring;
function testLink1(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _r1a = stdgo._internal.container.ring.Ring__maken._makeN((1 : stdgo.GoInt));
        var _r1b:stdgo._internal.container.ring.Ring_ring.Ring = ({} : stdgo._internal.container.ring.Ring_ring.Ring);
        var _r2a = _r1a.link((stdgo.Go.setRef(_r1b) : stdgo.Ref<stdgo._internal.container.ring.Ring_ring.Ring>));
        //"file:///home/runner/.go/go1.21.3/src/container/ring/ring_test.go#L144"
        stdgo._internal.container.ring.Ring__verify._verify(_t, _r2a, (2 : stdgo.GoInt), (1 : stdgo.GoInt));
        //"file:///home/runner/.go/go1.21.3/src/container/ring/ring_test.go#L145"
        if (_r2a != (_r1a)) {
            //"file:///home/runner/.go/go1.21.3/src/container/ring/ring_test.go#L146"
            _t.errorf(("a) 2-element link failed" : stdgo.GoString));
        };
        var _r2b = _r2a.link(_r2a.next());
        //"file:///home/runner/.go/go1.21.3/src/container/ring/ring_test.go#L150"
        stdgo._internal.container.ring.Ring__verify._verify(_t, _r2b, (2 : stdgo.GoInt), (1 : stdgo.GoInt));
        //"file:///home/runner/.go/go1.21.3/src/container/ring/ring_test.go#L151"
        if (_r2b != (_r2a.next())) {
            //"file:///home/runner/.go/go1.21.3/src/container/ring/ring_test.go#L152"
            _t.errorf(("b) 2-element link failed" : stdgo.GoString));
        };
        var _r1c = _r2b.link(_r2b);
        //"file:///home/runner/.go/go1.21.3/src/container/ring/ring_test.go#L156"
        stdgo._internal.container.ring.Ring__verify._verify(_t, _r1c, (1 : stdgo.GoInt), (1 : stdgo.GoInt));
        //"file:///home/runner/.go/go1.21.3/src/container/ring/ring_test.go#L157"
        stdgo._internal.container.ring.Ring__verify._verify(_t, _r2b, (1 : stdgo.GoInt), (0 : stdgo.GoInt));
    }
