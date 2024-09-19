package stdgo._internal.math.big;
function _shr(_x:stdgo.Ref<stdgo._internal.math.big.Big_T_decimal.T_decimal>, _s:stdgo.GoUInt):Void {
        var _r = (0 : stdgo.GoInt);
        var _n:stdgo._internal.math.big.Big_Word.Word = ((0 : stdgo.GoUInt) : stdgo._internal.math.big.Big_Word.Word);
        while ((((_n >> _s : stdgo._internal.math.big.Big_Word.Word) == (0u32 : stdgo._internal.math.big.Big_Word.Word)) && (_r < (_x._mant.length) : Bool) : Bool)) {
            var _ch = (_x._mant[(_r : stdgo.GoInt)] : stdgo._internal.math.big.Big_Word.Word);
            _r++;
            _n = (((_n * (10u32 : stdgo._internal.math.big.Big_Word.Word) : stdgo._internal.math.big.Big_Word.Word) + _ch : stdgo._internal.math.big.Big_Word.Word) - (48u32 : stdgo._internal.math.big.Big_Word.Word) : stdgo._internal.math.big.Big_Word.Word);
        };
        if (_n == ((0u32 : stdgo._internal.math.big.Big_Word.Word))) {
            _x._mant = (_x._mant.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            return;
        };
        while ((_n >> _s : stdgo._internal.math.big.Big_Word.Word) == ((0u32 : stdgo._internal.math.big.Big_Word.Word))) {
            _r++;
            _n = (_n * ((10u32 : stdgo._internal.math.big.Big_Word.Word)) : stdgo._internal.math.big.Big_Word.Word);
        };
        _x._exp = (_x._exp + (((1 : stdgo.GoInt) - _r : stdgo.GoInt)) : stdgo.GoInt);
        var _w = (0 : stdgo.GoInt);
        var _mask = (((1u32 : stdgo._internal.math.big.Big_Word.Word) << _s : stdgo._internal.math.big.Big_Word.Word) - (1u32 : stdgo._internal.math.big.Big_Word.Word) : stdgo._internal.math.big.Big_Word.Word);
        while ((_r < (_x._mant.length) : Bool)) {
            var _ch = (_x._mant[(_r : stdgo.GoInt)] : stdgo._internal.math.big.Big_Word.Word);
            _r++;
            var _d = (_n >> _s : stdgo._internal.math.big.Big_Word.Word);
            _n = (_n & (_mask) : stdgo._internal.math.big.Big_Word.Word);
            _x._mant[(_w : stdgo.GoInt)] = ((_d + (48u32 : stdgo._internal.math.big.Big_Word.Word) : stdgo._internal.math.big.Big_Word.Word) : stdgo.GoUInt8);
            _w++;
            _n = (((_n * (10u32 : stdgo._internal.math.big.Big_Word.Word) : stdgo._internal.math.big.Big_Word.Word) + _ch : stdgo._internal.math.big.Big_Word.Word) - (48u32 : stdgo._internal.math.big.Big_Word.Word) : stdgo._internal.math.big.Big_Word.Word);
        };
        while (((_n > (0u32 : stdgo._internal.math.big.Big_Word.Word) : Bool) && (_w < (_x._mant.length) : Bool) : Bool)) {
            var _d = (_n >> _s : stdgo._internal.math.big.Big_Word.Word);
            _n = (_n & (_mask) : stdgo._internal.math.big.Big_Word.Word);
            _x._mant[(_w : stdgo.GoInt)] = ((_d + (48u32 : stdgo._internal.math.big.Big_Word.Word) : stdgo._internal.math.big.Big_Word.Word) : stdgo.GoUInt8);
            _w++;
            _n = (_n * (10u32 : stdgo._internal.math.big.Big_Word.Word) : stdgo._internal.math.big.Big_Word.Word);
        };
        _x._mant = (_x._mant.__slice__(0, _w) : stdgo.Slice<stdgo.GoUInt8>);
        while ((_n > (0u32 : stdgo._internal.math.big.Big_Word.Word) : Bool)) {
            var _d = (_n >> _s : stdgo._internal.math.big.Big_Word.Word);
            _n = (_n & (_mask) : stdgo._internal.math.big.Big_Word.Word);
            _x._mant = (_x._mant.__append__(((_d + (48u32 : stdgo._internal.math.big.Big_Word.Word) : stdgo._internal.math.big.Big_Word.Word) : stdgo.GoUInt8)));
            _n = (_n * (10u32 : stdgo._internal.math.big.Big_Word.Word) : stdgo._internal.math.big.Big_Word.Word);
        };
        stdgo._internal.math.big.Big__trim._trim(_x);
    }
