package stdgo._internal.container.ring;
function testNew(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (10 : stdgo.GoInt) : Bool)) {
                var _r = stdgo._internal.container.ring.Ring_new_.new_(_i);
stdgo._internal.container.ring.Ring__verify._verify(_t, _r, _i, (-1 : stdgo.GoInt));
                _i++;
            };
        };
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (10 : stdgo.GoInt) : Bool)) {
                var _r = stdgo._internal.container.ring.Ring__maken._makeN(_i);
stdgo._internal.container.ring.Ring__verify._verify(_t, _r, _i, stdgo._internal.container.ring.Ring__sumn._sumN(_i));
                _i++;
            };
        };
    }
