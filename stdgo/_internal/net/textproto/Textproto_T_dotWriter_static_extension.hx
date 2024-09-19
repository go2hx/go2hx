package stdgo._internal.net.textproto;
@:keep @:allow(stdgo._internal.net.textproto.Textproto.T_dotWriter_asInterface) class T_dotWriter_static_extension {
    @:keep
    static public function close( _d:stdgo.Ref<stdgo._internal.net.textproto.Textproto_T_dotWriter.T_dotWriter>):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.net.textproto.Textproto_T_dotWriter.T_dotWriter> = _d;
        if (_d._w._dot == (_d)) {
            _d._w._dot = null;
        };
        var _bw = _d._w.w;
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                {
                    final __value__ = _d._state;
                    if (__switchIndex__ == 1 || (__switchIndex__ == -1 && (__value__ == (2 : stdgo.GoInt)))) {
                        _bw.writeByte((10 : stdgo.GoUInt8));
                        @:fallthrough {
                            __switchIndex__ = 2;
                            __run__ = true;
                            continue;
                        };
                        break;
                    } else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && (__value__ == (1 : stdgo.GoInt)))) {
                        _bw.write(stdgo._internal.net.textproto.Textproto__dotcrnl._dotcrnl);
                        break;
                        break;
                    } else {
                        _bw.writeByte((13 : stdgo.GoUInt8));
                        @:fallthrough {
                            __switchIndex__ = 1;
                            __run__ = true;
                            continue;
                        };
                    };
                };
                break;
            };
        };
        return _bw.flush();
    }
    @:keep
    static public function write( _d:stdgo.Ref<stdgo._internal.net.textproto.Textproto_T_dotWriter.T_dotWriter>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.net.textproto.Textproto_T_dotWriter.T_dotWriter> = _d;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        var _bw = _d._w.w;
        while ((_n < (_b.length) : Bool)) {
            var _c = (_b[(_n : stdgo.GoInt)] : stdgo.GoUInt8);
            {
                var __switchIndex__ = -1;
                var __run__ = true;
                while (__run__) {
                    __run__ = false;
                    {
                        final __value__ = _d._state;
                        if (__switchIndex__ == 0 || (__switchIndex__ == -1 && (__value__ == ((0 : stdgo.GoInt)) || __value__ == ((1 : stdgo.GoInt))))) {
                            _d._state = (3 : stdgo.GoInt);
                            if (_c == ((46 : stdgo.GoUInt8))) {
                                _bw.writeByte((46 : stdgo.GoUInt8));
                            };
                            @:fallthrough {
                                __switchIndex__ = 1;
                                __run__ = true;
                                continue;
                            };
                            break;
                        } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && (__value__ == (3 : stdgo.GoInt)))) {
                            if (_c == ((13 : stdgo.GoUInt8))) {
                                _d._state = (2 : stdgo.GoInt);
                            };
                            if (_c == ((10 : stdgo.GoUInt8))) {
                                _bw.writeByte((13 : stdgo.GoUInt8));
                                _d._state = (1 : stdgo.GoInt);
                            };
                            break;
                            break;
                        } else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && (__value__ == (2 : stdgo.GoInt)))) {
                            _d._state = (3 : stdgo.GoInt);
                            if (_c == ((10 : stdgo.GoUInt8))) {
                                _d._state = (1 : stdgo.GoInt);
                            };
                            break;
                            break;
                        };
                    };
                    break;
                };
            };
            {
                _err = _bw.writeByte(_c);
                if (_err != null) {
                    break;
                };
            };
            _n++;
        };
        return { _0 : _n, _1 : _err };
    }
}
