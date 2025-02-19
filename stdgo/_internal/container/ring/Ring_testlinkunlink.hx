package stdgo._internal.container.ring;
function testLinkUnlink(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        {
            var _i = (1 : stdgo.GoInt);
            while ((_i < (4 : stdgo.GoInt) : Bool)) {
                var _ri = stdgo._internal.container.ring.Ring_new_.new_(_i);
{
                    var _j = (0 : stdgo.GoInt);
                    while ((_j < _i : Bool)) {
                        var _rj = @:check2r _ri.unlink(_j);
stdgo._internal.container.ring.Ring__verify._verify(_t, _rj, _j, (-1 : stdgo.GoInt));
stdgo._internal.container.ring.Ring__verify._verify(_t, _ri, (_i - _j : stdgo.GoInt), (-1 : stdgo.GoInt));
@:check2r _ri.link(_rj);
stdgo._internal.container.ring.Ring__verify._verify(_t, _ri, _i, (-1 : stdgo.GoInt));
                        _j++;
                    };
                };
                _i++;
            };
        };
    }
