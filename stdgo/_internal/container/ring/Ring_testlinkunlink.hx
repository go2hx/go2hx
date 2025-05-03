package stdgo._internal.container.ring;
function testLinkUnlink(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/container/ring/ring_test.go#L210"
        {
            var _i = (1 : stdgo.GoInt);
            while ((_i < (4 : stdgo.GoInt) : Bool)) {
                var _ri = stdgo._internal.container.ring.Ring_new_.new_(_i);
//"file:///home/runner/.go/go1.21.3/src/container/ring/ring_test.go#L212"
                {
                    var _j = (0 : stdgo.GoInt);
                    while ((_j < _i : Bool)) {
                        var _rj = _ri.unlink(_j);
//"file:///home/runner/.go/go1.21.3/src/container/ring/ring_test.go#L214"
                        stdgo._internal.container.ring.Ring__verify._verify(_t, _rj, _j, (-1 : stdgo.GoInt));
//"file:///home/runner/.go/go1.21.3/src/container/ring/ring_test.go#L215"
                        stdgo._internal.container.ring.Ring__verify._verify(_t, _ri, (_i - _j : stdgo.GoInt), (-1 : stdgo.GoInt));
//"file:///home/runner/.go/go1.21.3/src/container/ring/ring_test.go#L216"
                        _ri.link(_rj);
//"file:///home/runner/.go/go1.21.3/src/container/ring/ring_test.go#L217"
                        stdgo._internal.container.ring.Ring__verify._verify(_t, _ri, _i, (-1 : stdgo.GoInt));
                        _j++;
                    };
                };
                _i++;
            };
        };
    }
