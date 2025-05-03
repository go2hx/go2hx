package stdgo._internal.container.ring;
function testCornerCases(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _r0:stdgo.Ref<stdgo._internal.container.ring.Ring_ring.Ring> = (null : stdgo.Ref<stdgo._internal.container.ring.Ring_ring.Ring>), _r1:stdgo._internal.container.ring.Ring_ring.Ring = ({} : stdgo._internal.container.ring.Ring_ring.Ring);
        //"file:///home/runner/.go/go1.21.3/src/container/ring/ring_test.go#L103"
        stdgo._internal.container.ring.Ring__verify._verify(_t, _r0, (0 : stdgo.GoInt), (0 : stdgo.GoInt));
        //"file:///home/runner/.go/go1.21.3/src/container/ring/ring_test.go#L104"
        stdgo._internal.container.ring.Ring__verify._verify(_t, (stdgo.Go.setRef(_r1) : stdgo.Ref<stdgo._internal.container.ring.Ring_ring.Ring>), (1 : stdgo.GoInt), (0 : stdgo.GoInt));
        //"file:///home/runner/.go/go1.21.3/src/container/ring/ring_test.go#L106"
        _r1.link(_r0);
        //"file:///home/runner/.go/go1.21.3/src/container/ring/ring_test.go#L107"
        stdgo._internal.container.ring.Ring__verify._verify(_t, _r0, (0 : stdgo.GoInt), (0 : stdgo.GoInt));
        //"file:///home/runner/.go/go1.21.3/src/container/ring/ring_test.go#L108"
        stdgo._internal.container.ring.Ring__verify._verify(_t, (stdgo.Go.setRef(_r1) : stdgo.Ref<stdgo._internal.container.ring.Ring_ring.Ring>), (1 : stdgo.GoInt), (0 : stdgo.GoInt));
        //"file:///home/runner/.go/go1.21.3/src/container/ring/ring_test.go#L110"
        _r1.link(_r0);
        //"file:///home/runner/.go/go1.21.3/src/container/ring/ring_test.go#L111"
        stdgo._internal.container.ring.Ring__verify._verify(_t, _r0, (0 : stdgo.GoInt), (0 : stdgo.GoInt));
        //"file:///home/runner/.go/go1.21.3/src/container/ring/ring_test.go#L112"
        stdgo._internal.container.ring.Ring__verify._verify(_t, (stdgo.Go.setRef(_r1) : stdgo.Ref<stdgo._internal.container.ring.Ring_ring.Ring>), (1 : stdgo.GoInt), (0 : stdgo.GoInt));
        //"file:///home/runner/.go/go1.21.3/src/container/ring/ring_test.go#L114"
        _r1.unlink((0 : stdgo.GoInt));
        //"file:///home/runner/.go/go1.21.3/src/container/ring/ring_test.go#L115"
        stdgo._internal.container.ring.Ring__verify._verify(_t, (stdgo.Go.setRef(_r1) : stdgo.Ref<stdgo._internal.container.ring.Ring_ring.Ring>), (1 : stdgo.GoInt), (0 : stdgo.GoInt));
    }
