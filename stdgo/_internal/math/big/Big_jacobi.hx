package stdgo._internal.math.big;
function jacobi(_x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.GoInt {
        if ((((@:checkr _y ?? throw "null pointer dereference")._abs.length == (0 : stdgo.GoInt)) || (((@:checkr _y ?? throw "null pointer dereference")._abs[(0 : stdgo.GoInt)] & (1u32 : stdgo._internal.math.big.Big_word.Word) : stdgo._internal.math.big.Big_word.Word) == (0u32 : stdgo._internal.math.big.Big_word.Word)) : Bool)) {
            throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("big: invalid 2nd argument to Int.Jacobi: need odd integer but got %s" : stdgo.GoString), stdgo.Go.toInterface((@:check2r _y.string() : stdgo.GoString))));
        };
        var __0:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_), __1:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_), __2:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_);
var _c = __2, _b = __1, _a = __0;
        @:check2 _a.set(_x);
        @:check2 _b.set(_y);
        var _j = (1 : stdgo.GoInt);
        if (_b._neg) {
            if (_a._neg) {
                _j = (-1 : stdgo.GoInt);
            };
            _b._neg = false;
        };
        while (true) {
            if (@:check2 _b.cmp(stdgo._internal.math.big.Big__intone._intOne) == ((0 : stdgo.GoInt))) {
                return _j;
            };
            if ((_a._abs.length) == ((0 : stdgo.GoInt))) {
                return (0 : stdgo.GoInt);
            };
            @:check2 _a.mod((stdgo.Go.setRef(_a) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>));
            if ((_a._abs.length) == ((0 : stdgo.GoInt))) {
                return (0 : stdgo.GoInt);
            };
            var _s = (_a._abs._trailingZeroBits() : stdgo.GoUInt);
            if ((_s & (1u32 : stdgo.GoUInt) : stdgo.GoUInt) != ((0u32 : stdgo.GoUInt))) {
                var _bmod8 = (_b._abs[(0 : stdgo.GoInt)] & (7u32 : stdgo._internal.math.big.Big_word.Word) : stdgo._internal.math.big.Big_word.Word);
                if (((_bmod8 == (3u32 : stdgo._internal.math.big.Big_word.Word)) || (_bmod8 == (5u32 : stdgo._internal.math.big.Big_word.Word)) : Bool)) {
                    _j = -_j;
                };
            };
            @:check2 _c.rsh((stdgo.Go.setRef(_a) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), _s);
            if ((((_b._abs[(0 : stdgo.GoInt)] & (3u32 : stdgo._internal.math.big.Big_word.Word) : stdgo._internal.math.big.Big_word.Word) == (3u32 : stdgo._internal.math.big.Big_word.Word)) && ((_c._abs[(0 : stdgo.GoInt)] & (3u32 : stdgo._internal.math.big.Big_word.Word) : stdgo._internal.math.big.Big_word.Word) == (3u32 : stdgo._internal.math.big.Big_word.Word)) : Bool)) {
                _j = -_j;
            };
            @:check2 _a.set((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>));
            @:check2 _b.set((stdgo.Go.setRef(_c) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>));
        };
    }
