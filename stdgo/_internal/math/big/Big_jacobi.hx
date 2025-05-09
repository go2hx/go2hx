package stdgo._internal.math.big;
function jacobi(_x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.GoInt {
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L938"
        if ((((@:checkr _y ?? throw "null pointer dereference")._abs.length == (0 : stdgo.GoInt)) || (((@:checkr _y ?? throw "null pointer dereference")._abs[(0 : stdgo.GoInt)] & (1u32 : stdgo._internal.math.big.Big_word.Word) : stdgo._internal.math.big.Big_word.Word) == (0u32 : stdgo._internal.math.big.Big_word.Word)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L939"
            throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("big: invalid 2nd argument to Int.Jacobi: need odd integer but got %s" : stdgo.GoString), stdgo.Go.toInterface((_y.string() : stdgo.GoString))));
        };
        var _a:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_), _b:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_), _c:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_);
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L947"
        _a.set(_x);
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L948"
        _b.set(_y);
        var _j = (1 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L951"
        if (_b._neg) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L952"
            if (_a._neg) {
                _j = (-1 : stdgo.GoInt);
            };
            _b._neg = false;
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L958"
        while (true) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L959"
            if (_b.cmp(stdgo._internal.math.big.Big__intone._intOne) == ((0 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L960"
                return _j;
            };
            //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L962"
            if ((_a._abs.length) == ((0 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L963"
                return (0 : stdgo.GoInt);
            };
            //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L965"
            _a.mod((stdgo.Go.setRef(_a) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>));
            //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L966"
            if ((_a._abs.length) == ((0 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L967"
                return (0 : stdgo.GoInt);
            };
            var _s = (_a._abs._trailingZeroBits() : stdgo.GoUInt);
            //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L973"
            if ((_s & (1u32 : stdgo.GoUInt) : stdgo.GoUInt) != ((0u32 : stdgo.GoUInt))) {
                var _bmod8 = (_b._abs[(0 : stdgo.GoInt)] & (7u32 : stdgo._internal.math.big.Big_word.Word) : stdgo._internal.math.big.Big_word.Word);
                //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L975"
                if (((_bmod8 == (3u32 : stdgo._internal.math.big.Big_word.Word)) || (_bmod8 == (5u32 : stdgo._internal.math.big.Big_word.Word)) : Bool)) {
                    _j = -_j;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L979"
            _c.rsh((stdgo.Go.setRef(_a) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), _s);
            //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L982"
            if ((((_b._abs[(0 : stdgo.GoInt)] & (3u32 : stdgo._internal.math.big.Big_word.Word) : stdgo._internal.math.big.Big_word.Word) == (3u32 : stdgo._internal.math.big.Big_word.Word)) && ((_c._abs[(0 : stdgo.GoInt)] & (3u32 : stdgo._internal.math.big.Big_word.Word) : stdgo._internal.math.big.Big_word.Word) == (3u32 : stdgo._internal.math.big.Big_word.Word)) : Bool)) {
                _j = -_j;
            };
            //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L985"
            _a.set((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>));
            //"file:///home/runner/.go/go1.21.3/src/math/big/int.go#L986"
            _b.set((stdgo.Go.setRef(_c) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>));
        };
    }
