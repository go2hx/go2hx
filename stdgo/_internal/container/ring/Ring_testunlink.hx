package stdgo._internal.container.ring;
function testUnlink(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _r10 = stdgo._internal.container.ring.Ring__maken._makeN((10 : stdgo.GoInt));
        var _s10 = _r10.move((6 : stdgo.GoInt));
        var _sum10 = (stdgo._internal.container.ring.Ring__sumn._sumN((10 : stdgo.GoInt)) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/container/ring/ring_test.go#L194"
        stdgo._internal.container.ring.Ring__verify._verify(_t, _r10, (10 : stdgo.GoInt), _sum10);
        //"file:///home/runner/.go/go1.21.3/src/container/ring/ring_test.go#L195"
        stdgo._internal.container.ring.Ring__verify._verify(_t, _s10, (10 : stdgo.GoInt), _sum10);
        var _r0 = _r10.unlink((0 : stdgo.GoInt));
        //"file:///home/runner/.go/go1.21.3/src/container/ring/ring_test.go#L198"
        stdgo._internal.container.ring.Ring__verify._verify(_t, _r0, (0 : stdgo.GoInt), (0 : stdgo.GoInt));
        var _r1 = _r10.unlink((1 : stdgo.GoInt));
        //"file:///home/runner/.go/go1.21.3/src/container/ring/ring_test.go#L201"
        stdgo._internal.container.ring.Ring__verify._verify(_t, _r1, (1 : stdgo.GoInt), (2 : stdgo.GoInt));
        //"file:///home/runner/.go/go1.21.3/src/container/ring/ring_test.go#L202"
        stdgo._internal.container.ring.Ring__verify._verify(_t, _r10, (9 : stdgo.GoInt), (_sum10 - (2 : stdgo.GoInt) : stdgo.GoInt));
        var _r9 = _r10.unlink((9 : stdgo.GoInt));
        //"file:///home/runner/.go/go1.21.3/src/container/ring/ring_test.go#L205"
        stdgo._internal.container.ring.Ring__verify._verify(_t, _r9, (9 : stdgo.GoInt), (_sum10 - (2 : stdgo.GoInt) : stdgo.GoInt));
        //"file:///home/runner/.go/go1.21.3/src/container/ring/ring_test.go#L206"
        stdgo._internal.container.ring.Ring__verify._verify(_t, _r10, (9 : stdgo.GoInt), (_sum10 - (2 : stdgo.GoInt) : stdgo.GoInt));
    }
