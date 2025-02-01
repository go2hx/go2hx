package stdgo._internal.crypto.internal.edwards25519;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.errors.Errors;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.crypto.subtle.Subtle;
function _checkInitialized(_points:haxe.Rest<stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_Point.Point>>):Void {
        var _points = new stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_Point.Point>>(_points.length, 0, ..._points);
        for (__28 => _p in _points) {
            if (((stdgo.Go.toInterface((@:checkr _p ?? throw "null pointer dereference")._x) == stdgo.Go.toInterface(((new stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element() : stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element)))) && (stdgo.Go.toInterface((@:checkr _p ?? throw "null pointer dereference")._y) == stdgo.Go.toInterface(((new stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element() : stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element)))) : Bool)) {
                throw stdgo.Go.toInterface(("edwards25519: use of uninitialized Point" : stdgo.GoString));
            };
        };
    }
