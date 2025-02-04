package stdgo._internal.net.textproto;
@:keep @:allow(stdgo._internal.net.textproto.Textproto.T_dotWriter_asInterface) class T_dotWriter_static_extension {
    @:keep
    @:tdfield
    static public function close( _d:stdgo.Ref<stdgo._internal.net.textproto.Textproto_t_dotwriter.T_dotWriter>):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.net.textproto.Textproto_t_dotwriter.T_dotWriter> = _d;
        if ((@:checkr (@:checkr _d ?? throw "null pointer dereference")._w ?? throw "null pointer dereference")._dot == (_d)) {
            (@:checkr (@:checkr _d ?? throw "null pointer dereference")._w ?? throw "null pointer dereference")._dot = null;
        };
        var _bw = (@:checkr (@:checkr _d ?? throw "null pointer dereference")._w ?? throw "null pointer dereference").w;
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                {
                    final __value__ = (@:checkr _d ?? throw "null pointer dereference")._state;
                    if (__switchIndex__ == 1 || (__switchIndex__ == -1 && (__value__ == (2 : stdgo.GoInt)))) {
                        @:check2r _bw.writeByte((10 : stdgo.GoUInt8));
                        @:fallthrough {
                            __switchIndex__ = 2;
                            __run__ = true;
                            continue;
                        };
                        break;
                    } else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && (__value__ == (1 : stdgo.GoInt)))) {
                        @:check2r _bw.write(stdgo._internal.net.textproto.Textproto__dotcrnl._dotcrnl);
                        break;
                        break;
                    } else {
                        @:check2r _bw.writeByte((13 : stdgo.GoUInt8));
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
        return @:check2r _bw.flush();
    }
    @:keep
    @:tdfield
    static public function write( _d:stdgo.Ref<stdgo._internal.net.textproto.Textproto_t_dotwriter.T_dotWriter>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.net.textproto.Textproto_t_dotwriter.T_dotWriter> = _d;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        var _bw = (@:checkr (@:checkr _d ?? throw "null pointer dereference")._w ?? throw "null pointer dereference").w;
        while ((_n < (_b.length) : Bool)) {
            var _c = (_b[(_n : stdgo.GoInt)] : stdgo.GoUInt8);
            {
                var __switchIndex__ = -1;
                var __run__ = true;
                while (__run__) {
                    __run__ = false;
                    {
                        final __value__ = (@:checkr _d ?? throw "null pointer dereference")._state;
                        if (__switchIndex__ == 0 || (__switchIndex__ == -1 && (__value__ == ((0 : stdgo.GoInt)) || __value__ == ((1 : stdgo.GoInt))))) {
                            (@:checkr _d ?? throw "null pointer dereference")._state = (3 : stdgo.GoInt);
                            if (_c == ((46 : stdgo.GoUInt8))) {
                                @:check2r _bw.writeByte((46 : stdgo.GoUInt8));
                            };
                            @:fallthrough {
                                __switchIndex__ = 1;
                                __run__ = true;
                                continue;
                            };
                            break;
                        } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && (__value__ == (3 : stdgo.GoInt)))) {
                            if (_c == ((13 : stdgo.GoUInt8))) {
                                (@:checkr _d ?? throw "null pointer dereference")._state = (2 : stdgo.GoInt);
                            };
                            if (_c == ((10 : stdgo.GoUInt8))) {
                                @:check2r _bw.writeByte((13 : stdgo.GoUInt8));
                                (@:checkr _d ?? throw "null pointer dereference")._state = (1 : stdgo.GoInt);
                            };
                            break;
                            break;
                        } else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && (__value__ == (2 : stdgo.GoInt)))) {
                            (@:checkr _d ?? throw "null pointer dereference")._state = (3 : stdgo.GoInt);
                            if (_c == ((10 : stdgo.GoUInt8))) {
                                (@:checkr _d ?? throw "null pointer dereference")._state = (1 : stdgo.GoInt);
                            };
                            break;
                            break;
                        };
                    };
                    break;
                };
            };
            {
                _err = @:check2r _bw.writeByte(_c);
                if (_err != null) {
                    break;
                };
            };
            _n++;
        };
        return { _0 : _n, _1 : _err };
    }
}
