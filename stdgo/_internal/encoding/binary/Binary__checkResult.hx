package stdgo._internal.encoding.binary;
function _checkResult(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _dir:stdgo.GoString, _order:stdgo._internal.encoding.binary.Binary_ByteOrder.ByteOrder, _err:stdgo.Error, _have:stdgo.AnyInterface, _want:stdgo.AnyInterface):Void {
        if (_err != null) {
            _t.errorf(("%v %v: %v" : stdgo.GoString), stdgo.Go.toInterface(_dir), stdgo.Go.toInterface(_order), stdgo.Go.toInterface(_err));
            return;
        };
        if (!stdgo._internal.reflect.Reflect_deepEqual.deepEqual(_have, _want)) {
            _t.errorf(("%v %v:\n\thave %+v\n\twant %+v" : stdgo.GoString), stdgo.Go.toInterface(_dir), stdgo.Go.toInterface(_order), _have, _want);
        };
    }
