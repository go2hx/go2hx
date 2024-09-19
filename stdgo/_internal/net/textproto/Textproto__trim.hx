package stdgo._internal.net.textproto;
function _trim(_s:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        var _i = (0 : stdgo.GoInt);
        while (((_i < (_s.length) : Bool) && (((_s[(_i : stdgo.GoInt)] == (32 : stdgo.GoUInt8)) || (_s[(_i : stdgo.GoInt)] == (9 : stdgo.GoUInt8)) : Bool)) : Bool)) {
            _i++;
        };
        var _n = (_s.length : stdgo.GoInt);
        while (((_n > _i : Bool) && (((_s[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] == (32 : stdgo.GoUInt8)) || (_s[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] == (9 : stdgo.GoUInt8)) : Bool)) : Bool)) {
            _n--;
        };
        return (_s.__slice__(_i, _n) : stdgo.Slice<stdgo.GoUInt8>);
    }
