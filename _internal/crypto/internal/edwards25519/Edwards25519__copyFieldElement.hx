package _internal.crypto.internal.edwards25519;
function _copyFieldElement(_buf:stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>, _v:stdgo.Ref<_internal.crypto.internal.edwards25519.field.Field_Element.Element>):stdgo.Slice<stdgo.GoUInt8> {
        stdgo.Go.copySlice((_buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), _v.bytes());
        return (_buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>);
    }
