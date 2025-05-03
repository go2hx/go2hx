package stdgo._internal.crypto.internal.edwards25519;
function _copyFieldElement(_buf:stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>, _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>):stdgo.Slice<stdgo.GoUInt8> {
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L189"
        (_buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_v.bytes());
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/edwards25519/edwards25519.go#L190"
        return (_buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>);
    }
