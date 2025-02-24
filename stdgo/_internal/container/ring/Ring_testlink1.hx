package stdgo._internal.container.ring;
function testLink1(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _r1a = stdgo._internal.container.ring.Ring__maken._makeN((1 : stdgo.GoInt));
        var _r1b:stdgo._internal.container.ring.Ring_ring.Ring = ({} : stdgo._internal.container.ring.Ring_ring.Ring);
        var _r2a = @:check2r _r1a.link((stdgo.Go.setRef(_r1b) : stdgo.Ref<stdgo._internal.container.ring.Ring_ring.Ring>));
        stdgo._internal.container.ring.Ring__verify._verify(_t, _r2a, (2 : stdgo.GoInt), (1 : stdgo.GoInt));
        if (_r2a != (_r1a)) {
            @:check2r _t.errorf(("a) 2-element link failed" : stdgo.GoString));
        };
        var _r2b = @:check2r _r2a.link(@:check2r _r2a.next());
        stdgo._internal.container.ring.Ring__verify._verify(_t, _r2b, (2 : stdgo.GoInt), (1 : stdgo.GoInt));
        if (_r2b != (@:check2r _r2a.next())) {
            @:check2r _t.errorf(("b) 2-element link failed" : stdgo.GoString));
        };
        var _r1c = @:check2r _r2b.link(_r2b);
        stdgo._internal.container.ring.Ring__verify._verify(_t, _r1c, (1 : stdgo.GoInt), (1 : stdgo.GoInt));
        stdgo._internal.container.ring.Ring__verify._verify(_t, _r2b, (1 : stdgo.GoInt), (0 : stdgo.GoInt));
    }
