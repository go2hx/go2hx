package stdgo._internal.crypto.ecdh;
function _x25519ScalarMult(_dst:stdgo.Slice<stdgo.GoUInt8>, _scalar:stdgo.Slice<stdgo.GoUInt8>, _point:stdgo.Slice<stdgo.GoUInt8>):Void {
        var _e:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(32, 32).__setNumber32__();
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdh/x25519.go#L89"
        (_e.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__((_scalar.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
        _e[(0 : stdgo.GoInt)] = (_e[(0 : stdgo.GoInt)] & ((248 : stdgo.GoUInt8)) : stdgo.GoUInt8);
        _e[(31 : stdgo.GoInt)] = (_e[(31 : stdgo.GoInt)] & ((127 : stdgo.GoUInt8)) : stdgo.GoUInt8);
        _e[(31 : stdgo.GoInt)] = (_e[(31 : stdgo.GoInt)] | ((64 : stdgo.GoUInt8)) : stdgo.GoUInt8);
        var _x1:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element), _x2:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element), _z2:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element), _x3:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element), _z3:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element), _tmp0:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element), _tmp1:stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element = ({} : stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element);
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdh/x25519.go#L95"
        _x1.setBytes((_point.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdh/x25519.go#L96"
        _x2.one();
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdh/x25519.go#L97"
        _x3.set((stdgo.Go.setRef(_x1) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdh/x25519.go#L98"
        _z3.one();
        var _swap = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdh/x25519.go#L101"
        {
            var _pos = (254 : stdgo.GoInt);
            while ((_pos >= (0 : stdgo.GoInt) : Bool)) {
                var _b = (_e[(_pos / (8 : stdgo.GoInt) : stdgo.GoInt)] >> ((_pos & (7 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt) : stdgo.GoUInt8);
_b = (_b & ((1 : stdgo.GoUInt8)) : stdgo.GoUInt8);
_swap = (_swap ^ ((_b : stdgo.GoInt)) : stdgo.GoInt);
//"file:///home/runner/.go/go1.21.3/src/crypto/ecdh/x25519.go#L105"
                _x2.swap((stdgo.Go.setRef(_x3) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), _swap);
//"file:///home/runner/.go/go1.21.3/src/crypto/ecdh/x25519.go#L106"
                _z2.swap((stdgo.Go.setRef(_z3) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), _swap);
_swap = (_b : stdgo.GoInt);
//"file:///home/runner/.go/go1.21.3/src/crypto/ecdh/x25519.go#L109"
                _tmp0.subtract((stdgo.Go.setRef(_x3) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef(_z3) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
//"file:///home/runner/.go/go1.21.3/src/crypto/ecdh/x25519.go#L110"
                _tmp1.subtract((stdgo.Go.setRef(_x2) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef(_z2) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
//"file:///home/runner/.go/go1.21.3/src/crypto/ecdh/x25519.go#L111"
                _x2.add((stdgo.Go.setRef(_x2) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef(_z2) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
//"file:///home/runner/.go/go1.21.3/src/crypto/ecdh/x25519.go#L112"
                _z2.add((stdgo.Go.setRef(_x3) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef(_z3) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
//"file:///home/runner/.go/go1.21.3/src/crypto/ecdh/x25519.go#L113"
                _z3.multiply((stdgo.Go.setRef(_tmp0) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef(_x2) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
//"file:///home/runner/.go/go1.21.3/src/crypto/ecdh/x25519.go#L114"
                _z2.multiply((stdgo.Go.setRef(_z2) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef(_tmp1) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
//"file:///home/runner/.go/go1.21.3/src/crypto/ecdh/x25519.go#L115"
                _tmp0.square((stdgo.Go.setRef(_tmp1) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
//"file:///home/runner/.go/go1.21.3/src/crypto/ecdh/x25519.go#L116"
                _tmp1.square((stdgo.Go.setRef(_x2) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
//"file:///home/runner/.go/go1.21.3/src/crypto/ecdh/x25519.go#L117"
                _x3.add((stdgo.Go.setRef(_z3) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef(_z2) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
//"file:///home/runner/.go/go1.21.3/src/crypto/ecdh/x25519.go#L118"
                _z2.subtract((stdgo.Go.setRef(_z3) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef(_z2) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
//"file:///home/runner/.go/go1.21.3/src/crypto/ecdh/x25519.go#L119"
                _x2.multiply((stdgo.Go.setRef(_tmp1) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef(_tmp0) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
//"file:///home/runner/.go/go1.21.3/src/crypto/ecdh/x25519.go#L120"
                _tmp1.subtract((stdgo.Go.setRef(_tmp1) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef(_tmp0) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
//"file:///home/runner/.go/go1.21.3/src/crypto/ecdh/x25519.go#L121"
                _z2.square((stdgo.Go.setRef(_z2) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
//"file:///home/runner/.go/go1.21.3/src/crypto/ecdh/x25519.go#L123"
                _z3.mult32((stdgo.Go.setRef(_tmp1) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (121666u32 : stdgo.GoUInt32));
//"file:///home/runner/.go/go1.21.3/src/crypto/ecdh/x25519.go#L124"
                _x3.square((stdgo.Go.setRef(_x3) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
//"file:///home/runner/.go/go1.21.3/src/crypto/ecdh/x25519.go#L125"
                _tmp0.add((stdgo.Go.setRef(_tmp0) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef(_z3) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
//"file:///home/runner/.go/go1.21.3/src/crypto/ecdh/x25519.go#L126"
                _z3.multiply((stdgo.Go.setRef(_x1) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef(_z2) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
//"file:///home/runner/.go/go1.21.3/src/crypto/ecdh/x25519.go#L127"
                _z2.multiply((stdgo.Go.setRef(_tmp1) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef(_tmp0) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
                _pos--;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdh/x25519.go#L130"
        _x2.swap((stdgo.Go.setRef(_x3) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), _swap);
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdh/x25519.go#L131"
        _z2.swap((stdgo.Go.setRef(_z3) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), _swap);
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdh/x25519.go#L133"
        _z2.invert((stdgo.Go.setRef(_z2) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdh/x25519.go#L134"
        _x2.multiply((stdgo.Go.setRef(_x2) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>), (stdgo.Go.setRef(_z2) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>));
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdh/x25519.go#L135"
        (_dst.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_x2.bytes());
    }
