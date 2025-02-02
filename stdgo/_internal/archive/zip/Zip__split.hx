package stdgo._internal.archive.zip;
function _split(_name:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : Bool; } {
        var _dir = ("" : stdgo.GoString), _elem = ("" : stdgo.GoString), _isDir = false;
        if ((((_name.length) > (0 : stdgo.GoInt) : Bool) && (_name[((_name.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == (47 : stdgo.GoUInt8)) : Bool)) {
            _isDir = true;
            _name = (_name.__slice__(0, ((_name.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
        var _i = ((_name.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
        while (((_i >= (0 : stdgo.GoInt) : Bool) && (_name[(_i : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
            _i--;
        };
        if ((_i < (0 : stdgo.GoInt) : Bool)) {
            return {
                final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : Bool; } = { _0 : ("." : stdgo.GoString), _1 : _name?.__copy__(), _2 : _isDir };
                _dir = __tmp__._0;
                _elem = __tmp__._1;
                _isDir = __tmp__._2;
                __tmp__;
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : Bool; } = { _0 : (_name.__slice__(0, _i) : stdgo.GoString)?.__copy__(), _1 : (_name.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), _2 : _isDir };
            _dir = __tmp__._0;
            _elem = __tmp__._1;
            _isDir = __tmp__._2;
            __tmp__;
        };
    }
