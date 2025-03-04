package stdgo._internal.container.ring;
function testMoveEmptyRing(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _r:stdgo._internal.container.ring.Ring_ring.Ring = ({} : stdgo._internal.container.ring.Ring_ring.Ring);
        @:check2 _r.move((1 : stdgo.GoInt));
        stdgo._internal.container.ring.Ring__verify._verify(_t, (stdgo.Go.setRef(_r) : stdgo.Ref<stdgo._internal.container.ring.Ring_ring.Ring>), (1 : stdgo.GoInt), (0 : stdgo.GoInt));
    }
