package stdgo._internal.container.ring;
function testLink3(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _r:stdgo._internal.container.ring.Ring_ring.Ring = ({} : stdgo._internal.container.ring.Ring_ring.Ring);
        var _n = (1 : stdgo.GoInt);
        {
            var _i = (1 : stdgo.GoInt);
            while ((_i < (10 : stdgo.GoInt) : Bool)) {
                _n = (_n + (_i) : stdgo.GoInt);
stdgo._internal.container.ring.Ring__verify._verify(_t, @:check2 _r.link(stdgo._internal.container.ring.Ring_new_.new_(_i)), _n, (-1 : stdgo.GoInt));
                _i++;
            };
        };
    }
