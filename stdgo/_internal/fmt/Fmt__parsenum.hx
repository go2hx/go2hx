package stdgo._internal.fmt;
function _parsenum(_s:stdgo.GoString, _start:stdgo.GoInt, _end:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : Bool; var _2 : stdgo.GoInt; } {
        var _num = (0 : stdgo.GoInt), _isnum = false, _newi = (0 : stdgo.GoInt);
        if ((_start >= _end : Bool)) {
            return { _0 : (0 : stdgo.GoInt), _1 : false, _2 : _end };
        };
        {
            _newi = _start;
            stdgo.Go.cfor((((_newi < _end : Bool) && ((48 : stdgo.GoUInt8) <= _s[(_newi : stdgo.GoInt)] : Bool) : Bool) && (_s[(_newi : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool), _newi++, {
                if (stdgo._internal.fmt.Fmt__tooLarge._tooLarge(_num)) {
                    return { _0 : (0 : stdgo.GoInt), _1 : false, _2 : _end };
                };
                _num = ((_num * (10 : stdgo.GoInt) : stdgo.GoInt) + ((_s[(_newi : stdgo.GoInt)] - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt) : stdgo.GoInt);
                _isnum = true;
            });
        };
        return { _0 : _num, _1 : _isnum, _2 : _newi };
    }
