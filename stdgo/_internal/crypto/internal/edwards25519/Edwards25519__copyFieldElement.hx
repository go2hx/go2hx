package stdgo._internal.crypto.internal.edwards25519;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.errors.Errors;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.crypto.subtle.Subtle;
function _copyFieldElement(_buf:stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>, _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_Element.Element>):stdgo.Slice<stdgo.GoUInt8> {
        (_buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(@:check2r _v.bytes());
        return (_buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>);
    }
