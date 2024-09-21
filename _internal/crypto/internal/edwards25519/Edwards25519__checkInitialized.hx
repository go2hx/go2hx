package _internal.crypto.internal.edwards25519;
function _checkInitialized(_points:haxe.Rest<stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Point.Point>>):Void {
        var _points = new stdgo.Slice<stdgo.Ref<_internal.crypto.internal.edwards25519.Edwards25519_Point.Point>>(_points.length, 0, ..._points);
        for (__24 => _p in _points) {
            if (((stdgo.Go.toInterface(_p._x) == stdgo.Go.toInterface(((new _internal.crypto.internal.edwards25519.field.Field_Element.Element() : _internal.crypto.internal.edwards25519.field.Field_Element.Element)))) && (stdgo.Go.toInterface(_p._y) == stdgo.Go.toInterface(((new _internal.crypto.internal.edwards25519.field.Field_Element.Element() : _internal.crypto.internal.edwards25519.field.Field_Element.Element)))) : Bool)) {
                throw stdgo.Go.toInterface(("edwards25519: use of uninitialized Point" : stdgo.GoString));
            };
        };
    }
