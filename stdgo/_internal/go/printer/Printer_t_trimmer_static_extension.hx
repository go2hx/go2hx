package stdgo._internal.go.printer;
@:keep @:allow(stdgo._internal.go.printer.Printer.T_trimmer_asInterface) class T_trimmer_static_extension {
    @:keep
    @:tdfield
    static public function write( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_trimmer.T_trimmer>, _data:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_trimmer.T_trimmer> = _p;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        var _m = (0 : stdgo.GoInt);
        var _b:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L1229"
        for (__key__ => __value__ in _data) {
            _n = __key__;
            _b = __value__;
            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L1230"
            if (_b == ((11 : stdgo.GoUInt8))) {
                _b = (9 : stdgo.GoUInt8);
            };
            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L1233"
            {
                final __value__ = (@:checkr _p ?? throw "null pointer dereference")._state;
                if (__value__ == ((0 : stdgo.GoInt))) {
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L1235"
                    {
                        final __value__ = _b;
                        if (__value__ == ((9 : stdgo.GoUInt8)) || __value__ == ((32 : stdgo.GoUInt8))) {
                            (@:checkr _p ?? throw "null pointer dereference")._space = ((@:checkr _p ?? throw "null pointer dereference")._space.__append__(_b) : stdgo.Slice<stdgo.GoUInt8>);
                        } else if (__value__ == ((10 : stdgo.GoUInt8)) || __value__ == ((12 : stdgo.GoUInt8))) {
                            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L1239"
                            _p._resetSpace();
                            {
                                var __tmp__ = (@:checkr _p ?? throw "null pointer dereference")._output.write(stdgo._internal.go.printer.Printer__anewline._aNewline);
                                _err = @:tmpset0 __tmp__._1;
                            };
                        } else if (__value__ == ((255 : stdgo.GoUInt8))) {
                            {
                                var __tmp__ = (@:checkr _p ?? throw "null pointer dereference")._output.write((@:checkr _p ?? throw "null pointer dereference")._space);
                                _err = @:tmpset0 __tmp__._1;
                            };
                            (@:checkr _p ?? throw "null pointer dereference")._state = (1 : stdgo.GoInt);
                            _m = (_n + (1 : stdgo.GoInt) : stdgo.GoInt);
                        } else {
                            {
                                var __tmp__ = (@:checkr _p ?? throw "null pointer dereference")._output.write((@:checkr _p ?? throw "null pointer dereference")._space);
                                _err = @:tmpset0 __tmp__._1;
                            };
                            (@:checkr _p ?? throw "null pointer dereference")._state = (2 : stdgo.GoInt);
                            _m = _n;
                        };
                    };
                } else if (__value__ == ((1 : stdgo.GoInt))) {
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L1251"
                    if (_b == ((255 : stdgo.GoUInt8))) {
                        {
                            var __tmp__ = (@:checkr _p ?? throw "null pointer dereference")._output.write((_data.__slice__(_m, _n) : stdgo.Slice<stdgo.GoUInt8>));
                            _err = @:tmpset0 __tmp__._1;
                        };
                        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L1253"
                        _p._resetSpace();
                    };
                } else if (__value__ == ((2 : stdgo.GoInt))) {
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L1256"
                    {
                        final __value__ = _b;
                        if (__value__ == ((9 : stdgo.GoUInt8)) || __value__ == ((32 : stdgo.GoUInt8))) {
                            {
                                var __tmp__ = (@:checkr _p ?? throw "null pointer dereference")._output.write((_data.__slice__(_m, _n) : stdgo.Slice<stdgo.GoUInt8>));
                                _err = @:tmpset0 __tmp__._1;
                            };
                            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L1259"
                            _p._resetSpace();
                            (@:checkr _p ?? throw "null pointer dereference")._space = ((@:checkr _p ?? throw "null pointer dereference")._space.__append__(_b) : stdgo.Slice<stdgo.GoUInt8>);
                        } else if (__value__ == ((10 : stdgo.GoUInt8)) || __value__ == ((12 : stdgo.GoUInt8))) {
                            {
                                var __tmp__ = (@:checkr _p ?? throw "null pointer dereference")._output.write((_data.__slice__(_m, _n) : stdgo.Slice<stdgo.GoUInt8>));
                                _err = @:tmpset0 __tmp__._1;
                            };
                            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L1263"
                            _p._resetSpace();
                            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L1264"
                            if (_err == null) {
                                {
                                    var __tmp__ = (@:checkr _p ?? throw "null pointer dereference")._output.write(stdgo._internal.go.printer.Printer__anewline._aNewline);
                                    _err = @:tmpset0 __tmp__._1;
                                };
                            };
                        } else if (__value__ == ((255 : stdgo.GoUInt8))) {
                            {
                                var __tmp__ = (@:checkr _p ?? throw "null pointer dereference")._output.write((_data.__slice__(_m, _n) : stdgo.Slice<stdgo.GoUInt8>));
                                _err = @:tmpset0 __tmp__._1;
                            };
                            (@:checkr _p ?? throw "null pointer dereference")._state = (1 : stdgo.GoInt);
                            _m = (_n + (1 : stdgo.GoInt) : stdgo.GoInt);
                        };
                    };
                } else {
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L1273"
                    throw stdgo.Go.toInterface(("unreachable" : stdgo.GoString));
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L1275"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L1276"
                return { _0 : _n, _1 : _err };
            };
        };
        _n = (_data.length);
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L1281"
        {
            final __value__ = (@:checkr _p ?? throw "null pointer dereference")._state;
            if (__value__ == ((1 : stdgo.GoInt)) || __value__ == ((2 : stdgo.GoInt))) {
                {
                    var __tmp__ = (@:checkr _p ?? throw "null pointer dereference")._output.write((_data.__slice__(_m, _n) : stdgo.Slice<stdgo.GoUInt8>));
                    _err = @:tmpset0 __tmp__._1;
                };
                //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L1284"
                _p._resetSpace();
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L1287"
        return { _0 : _n, _1 : _err };
    }
    @:keep
    @:tdfield
    static public function _resetSpace( _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_trimmer.T_trimmer>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.printer.Printer_t_trimmer.T_trimmer> = _p;
        (@:checkr _p ?? throw "null pointer dereference")._state = (0 : stdgo.GoInt);
        (@:checkr _p ?? throw "null pointer dereference")._space = ((@:checkr _p ?? throw "null pointer dereference")._space.__slice__((0 : stdgo.GoInt), (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
    }
}
