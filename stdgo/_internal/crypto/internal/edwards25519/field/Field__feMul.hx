package stdgo._internal.crypto.internal.edwards25519.field;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.errors.Errors;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.crypto.subtle.Subtle;
function _feMul(_v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>, _x:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>, _y:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>):Void {
        stdgo._internal.crypto.internal.edwards25519.field.Field__feMulGeneric._feMulGeneric(_v, _x, _y);
    }
