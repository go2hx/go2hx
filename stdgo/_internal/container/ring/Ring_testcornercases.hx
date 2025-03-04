package stdgo._internal.container.ring;
function testCornerCases(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _r0:stdgo.Ref<stdgo._internal.container.ring.Ring_ring.Ring> = (null : stdgo.Ref<stdgo._internal.container.ring.Ring_ring.Ring>), _r1:stdgo._internal.container.ring.Ring_ring.Ring = ({} : stdgo._internal.container.ring.Ring_ring.Ring);
        stdgo._internal.container.ring.Ring__verify._verify(_t, _r0, (0 : stdgo.GoInt), (0 : stdgo.GoInt));
        stdgo._internal.container.ring.Ring__verify._verify(_t, (stdgo.Go.setRef(_r1) : stdgo.Ref<stdgo._internal.container.ring.Ring_ring.Ring>), (1 : stdgo.GoInt), (0 : stdgo.GoInt));
        @:check2 _r1.link(_r0);
        stdgo._internal.container.ring.Ring__verify._verify(_t, _r0, (0 : stdgo.GoInt), (0 : stdgo.GoInt));
        stdgo._internal.container.ring.Ring__verify._verify(_t, (stdgo.Go.setRef(_r1) : stdgo.Ref<stdgo._internal.container.ring.Ring_ring.Ring>), (1 : stdgo.GoInt), (0 : stdgo.GoInt));
        @:check2 _r1.link(_r0);
        stdgo._internal.container.ring.Ring__verify._verify(_t, _r0, (0 : stdgo.GoInt), (0 : stdgo.GoInt));
        stdgo._internal.container.ring.Ring__verify._verify(_t, (stdgo.Go.setRef(_r1) : stdgo.Ref<stdgo._internal.container.ring.Ring_ring.Ring>), (1 : stdgo.GoInt), (0 : stdgo.GoInt));
        @:check2 _r1.unlink((0 : stdgo.GoInt));
        stdgo._internal.container.ring.Ring__verify._verify(_t, (stdgo.Go.setRef(_r1) : stdgo.Ref<stdgo._internal.container.ring.Ring_ring.Ring>), (1 : stdgo.GoInt), (0 : stdgo.GoInt));
    }
