package stdgo._internal.container.ring;
function testNew(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/container/ring/ring_test.go#L130"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (10 : stdgo.GoInt) : Bool)) {
                var _r = stdgo._internal.container.ring.Ring_new_.new_(_i);
//"file:///home/runner/.go/go1.21.3/src/container/ring/ring_test.go#L132"
                stdgo._internal.container.ring.Ring__verify._verify(_t, _r, _i, (-1 : stdgo.GoInt));
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/container/ring/ring_test.go#L134"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (10 : stdgo.GoInt) : Bool)) {
                var _r = stdgo._internal.container.ring.Ring__maken._makeN(_i);
//"file:///home/runner/.go/go1.21.3/src/container/ring/ring_test.go#L136"
                stdgo._internal.container.ring.Ring__verify._verify(_t, _r, _i, stdgo._internal.container.ring.Ring__sumn._sumN(_i));
                _i++;
            };
        };
    }
