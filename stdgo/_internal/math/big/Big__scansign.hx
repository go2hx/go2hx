package stdgo._internal.math.big;
function _scanSign(_r:stdgo._internal.io.Io_bytescanner.ByteScanner):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _neg = false, _err = (null : stdgo.Error);
        var _ch:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        {
            {
                var __tmp__ = _r.readByte();
                _ch = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                return {
                    final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err };
                    _neg = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
        };
        {
            final __value__ = _ch;
            if (__value__ == ((45 : stdgo.GoUInt8))) {
                _neg = true;
            } else if (__value__ == ((43 : stdgo.GoUInt8))) {} else {
                _r.unreadByte();
            };
        };
        return { _0 : _neg, _1 : _err };
    }
