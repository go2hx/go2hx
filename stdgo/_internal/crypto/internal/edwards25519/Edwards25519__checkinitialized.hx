package stdgo._internal.crypto.internal.edwards25519;
function _checkInitialized(_points:haxe.Rest<stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>>):Void {
        var _points = new stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>>(_points.length, 0, ..._points);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L41"
        for (__26 => _p in _points) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L42"
            if (((stdgo.Go.toInterface((@:checkr _p ?? throw "null pointer dereference")._x) == stdgo.Go.toInterface(((new stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element() : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element)))) && (stdgo.Go.toInterface((@:checkr _p ?? throw "null pointer dereference")._y) == stdgo.Go.toInterface(((new stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element() : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element)))) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L43"
                throw stdgo.Go.toInterface(("edwards25519: use of uninitialized Point" : stdgo.GoString));
            };
        };
    }
