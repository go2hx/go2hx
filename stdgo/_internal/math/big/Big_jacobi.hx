package stdgo._internal.math.big;
function jacobi(_x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):stdgo.GoInt {
        if (((_y._abs.length == (0 : stdgo.GoInt)) || ((_y._abs[(0 : stdgo.GoInt)] & (1u32 : stdgo._internal.math.big.Big_Word.Word) : stdgo._internal.math.big.Big_Word.Word) == (0u32 : stdgo._internal.math.big.Big_Word.Word)) : Bool)) {
            throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("big: invalid 2nd argument to Int.Jacobi: need odd integer but got %s" : stdgo.GoString), stdgo.Go.toInterface((_y.string() : stdgo.GoString))));
        };
        var __0:stdgo._internal.math.big.Big_Int_.Int_ = ({} : stdgo._internal.math.big.Big_Int_.Int_), __1:stdgo._internal.math.big.Big_Int_.Int_ = ({} : stdgo._internal.math.big.Big_Int_.Int_), __2:stdgo._internal.math.big.Big_Int_.Int_ = ({} : stdgo._internal.math.big.Big_Int_.Int_);
var _c = __2, _b = __1, _a = __0;
        var _c__pointer__ = (stdgo.Go.setRef(_c) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _b__pointer__ = (stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _a__pointer__ = (stdgo.Go.setRef(_a) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _c__pointer__ = (stdgo.Go.setRef(_c) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _b__pointer__ = (stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _a__pointer__ = (stdgo.Go.setRef(_a) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _c__pointer__ = (stdgo.Go.setRef(_c) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _b__pointer__ = (stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _a__pointer__ = (stdgo.Go.setRef(_a) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _c__pointer__ = (stdgo.Go.setRef(_c) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _b__pointer__ = (stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _a__pointer__ = (stdgo.Go.setRef(_a) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        _a.set(_x);
        _b.set(_y);
        var _j = (1 : stdgo.GoInt);
        if (_b._neg) {
            if (_a._neg) {
                _j = (-1 : stdgo.GoInt);
            };
            _b._neg = false;
        };
        while (true) {
            if (_b.cmp(stdgo._internal.math.big.Big__intOne._intOne) == ((0 : stdgo.GoInt))) {
                return _j;
            };
            if ((_a._abs.length) == ((0 : stdgo.GoInt))) {
                return (0 : stdgo.GoInt);
            };
            _a.mod(_a__pointer__, _b__pointer__);
            if ((_a._abs.length) == ((0 : stdgo.GoInt))) {
                return (0 : stdgo.GoInt);
            };
            var _s = (_a._abs._trailingZeroBits() : stdgo.GoUInt);
            if ((_s & (1u32 : stdgo.GoUInt) : stdgo.GoUInt) != ((0u32 : stdgo.GoUInt))) {
                var _bmod8 = (_b._abs[(0 : stdgo.GoInt)] & (7u32 : stdgo._internal.math.big.Big_Word.Word) : stdgo._internal.math.big.Big_Word.Word);
                if (((_bmod8 == (3u32 : stdgo._internal.math.big.Big_Word.Word)) || (_bmod8 == (5u32 : stdgo._internal.math.big.Big_Word.Word)) : Bool)) {
                    _j = -_j;
                };
            };
            _c.rsh(_a__pointer__, _s);
            if ((((_b._abs[(0 : stdgo.GoInt)] & (3u32 : stdgo._internal.math.big.Big_Word.Word) : stdgo._internal.math.big.Big_Word.Word) == (3u32 : stdgo._internal.math.big.Big_Word.Word)) && ((_c._abs[(0 : stdgo.GoInt)] & (3u32 : stdgo._internal.math.big.Big_Word.Word) : stdgo._internal.math.big.Big_Word.Word) == (3u32 : stdgo._internal.math.big.Big_Word.Word)) : Bool)) {
                _j = -_j;
            };
            _a.set(_b__pointer__);
            _b.set(_c__pointer__);
        };
    }
