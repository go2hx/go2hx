package stdgo._internal.compress.flate;
function _matchToken(_xlength:stdgo.GoUInt32, _xoffset:stdgo.GoUInt32):stdgo._internal.compress.flate.Flate_t_token.T_token {
        return ((((1073741824u32 : stdgo.GoUInt32) + (_xlength << (22i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32) + _xoffset : stdgo.GoUInt32) : stdgo._internal.compress.flate.Flate_t_token.T_token);
    }
