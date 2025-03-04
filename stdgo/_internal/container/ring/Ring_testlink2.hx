package stdgo._internal.container.ring;
function testLink2(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _r0:stdgo.Ref<stdgo._internal.container.ring.Ring_ring.Ring> = (null : stdgo.Ref<stdgo._internal.container.ring.Ring_ring.Ring>);
        var _r1a = (stdgo.Go.setRef(({ value : stdgo.Go.toInterface((42 : stdgo.GoInt)) } : stdgo._internal.container.ring.Ring_ring.Ring)) : stdgo.Ref<stdgo._internal.container.ring.Ring_ring.Ring>);
        var _r1b = (stdgo.Go.setRef(({ value : stdgo.Go.toInterface((77 : stdgo.GoInt)) } : stdgo._internal.container.ring.Ring_ring.Ring)) : stdgo.Ref<stdgo._internal.container.ring.Ring_ring.Ring>);
        var _r10 = stdgo._internal.container.ring.Ring__maken._makeN((10 : stdgo.GoInt));
        @:check2r _r1a.link(_r0);
        stdgo._internal.container.ring.Ring__verify._verify(_t, _r1a, (1 : stdgo.GoInt), (42 : stdgo.GoInt));
        @:check2r _r1a.link(_r1b);
        stdgo._internal.container.ring.Ring__verify._verify(_t, _r1a, (2 : stdgo.GoInt), (119 : stdgo.GoInt));
        @:check2r _r10.link(_r0);
        stdgo._internal.container.ring.Ring__verify._verify(_t, _r10, (10 : stdgo.GoInt), stdgo._internal.container.ring.Ring__sumn._sumN((10 : stdgo.GoInt)));
        @:check2r _r10.link(_r1a);
        stdgo._internal.container.ring.Ring__verify._verify(_t, _r10, (12 : stdgo.GoInt), ((stdgo._internal.container.ring.Ring__sumn._sumN((10 : stdgo.GoInt)) + (42 : stdgo.GoInt) : stdgo.GoInt) + (77 : stdgo.GoInt) : stdgo.GoInt));
    }
