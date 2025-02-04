package stdgo._internal.strings;
function _makeASCIISet(_chars:stdgo.GoString):{ var _0 : stdgo._internal.strings.Strings_t_asciiset.T_asciiSet; var _1 : Bool; } {
        var _as = new stdgo._internal.strings.Strings_t_asciiset.T_asciiSet(8, 8, ...[for (i in 0 ... 8) (0 : stdgo.GoUInt32)]), _ok = false;
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_chars.length) : Bool)) {
                var _c = (_chars[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
if ((_c >= (128 : stdgo.GoUInt8) : Bool)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.strings.Strings_t_asciiset.T_asciiSet; var _1 : Bool; } = { _0 : _as.__copy__(), _1 : false };
                        _as = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                };
_as[((_c / (32 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt)] = (_as[((_c / (32 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt)] | (((1u32 : stdgo.GoUInt32) << ((_c % (32 : stdgo.GoUInt8) : stdgo.GoUInt8)) : stdgo.GoUInt32)) : stdgo.GoUInt32);
                _i++;
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo._internal.strings.Strings_t_asciiset.T_asciiSet; var _1 : Bool; } = { _0 : _as?.__copy__(), _1 : true };
            _as = __tmp__._0;
            _ok = __tmp__._1;
            __tmp__;
        };
    }
