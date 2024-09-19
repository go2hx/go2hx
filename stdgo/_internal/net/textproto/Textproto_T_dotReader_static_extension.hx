package stdgo._internal.net.textproto;
@:keep @:allow(stdgo._internal.net.textproto.Textproto.T_dotReader_asInterface) class T_dotReader_static_extension {
    @:keep
    static public function read( _d:stdgo.Ref<stdgo._internal.net.textproto.Textproto_T_dotReader.T_dotReader>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.net.textproto.Textproto_T_dotReader.T_dotReader> = _d;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        {};
        var _br = _d._r.r;
        while (((_n < (_b.length) : Bool) && (_d._state != (5 : stdgo.GoInt)) : Bool)) {
            var _c:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
            {
                var __tmp__ = _br.readByte();
                _c = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
                    _err = stdgo._internal.io.Io_errUnexpectedEOF.errUnexpectedEOF;
                };
                break;
            };
            {
                var __continue__ = false;
                var __switchIndex__ = -1;
                var __run__ = true;
                while (__run__) {
                    __run__ = false;
                    {
                        final __value__ = _d._state;
                        if (__value__ == ((0 : stdgo.GoInt))) {
                            if (_c == ((46 : stdgo.GoUInt8))) {
                                _d._state = (1 : stdgo.GoInt);
                                {
                                    __continue__ = true;
                                    break;
                                };
                            };
                            if (_c == ((13 : stdgo.GoUInt8))) {
                                _d._state = (3 : stdgo.GoInt);
                                {
                                    __continue__ = true;
                                    break;
                                };
                            };
                            _d._state = (4 : stdgo.GoInt);
                            break;
                        } else if (__value__ == ((1 : stdgo.GoInt))) {
                            if (_c == ((13 : stdgo.GoUInt8))) {
                                _d._state = (2 : stdgo.GoInt);
                                {
                                    __continue__ = true;
                                    break;
                                };
                            };
                            if (_c == ((10 : stdgo.GoUInt8))) {
                                _d._state = (5 : stdgo.GoInt);
                                {
                                    __continue__ = true;
                                    break;
                                };
                            };
                            _d._state = (4 : stdgo.GoInt);
                            break;
                        } else if (__value__ == ((2 : stdgo.GoInt))) {
                            if (_c == ((10 : stdgo.GoUInt8))) {
                                _d._state = (5 : stdgo.GoInt);
                                {
                                    __continue__ = true;
                                    break;
                                };
                            };
                            _br.unreadByte();
                            _c = (13 : stdgo.GoUInt8);
                            _d._state = (4 : stdgo.GoInt);
                            break;
                        } else if (__value__ == ((3 : stdgo.GoInt))) {
                            if (_c == ((10 : stdgo.GoUInt8))) {
                                _d._state = (0 : stdgo.GoInt);
                                break;
                            };
                            _br.unreadByte();
                            _c = (13 : stdgo.GoUInt8);
                            _d._state = (4 : stdgo.GoInt);
                            break;
                        } else if (__value__ == ((4 : stdgo.GoInt))) {
                            if (_c == ((13 : stdgo.GoUInt8))) {
                                _d._state = (3 : stdgo.GoInt);
                                {
                                    __continue__ = true;
                                    break;
                                };
                            };
                            if (_c == ((10 : stdgo.GoUInt8))) {
                                _d._state = (0 : stdgo.GoInt);
                            };
                            break;
                        };
                    };
                    break;
                };
                if (__continue__) continue;
            };
            _b[(_n : stdgo.GoInt)] = _c;
            _n++;
        };
        if (((_err == null) && (_d._state == (5 : stdgo.GoInt)) : Bool)) {
            _err = stdgo._internal.io.Io_eof.eof;
        };
        if (((_err != null) && (_d._r._dot == _d) : Bool)) {
            _d._r._dot = null;
        };
        return { _0 : _n, _1 : _err };
    }
}
