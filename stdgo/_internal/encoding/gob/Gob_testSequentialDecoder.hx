package stdgo._internal.encoding.gob;
function testSequentialDecoder(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        var _enc = stdgo._internal.encoding.gob.Gob_newEncoder.newEncoder(stdgo.Go.asInterface(_b));
        {};
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (10 : stdgo.GoInt) : Bool), _i++, {
                var _s = (stdgo._internal.fmt.Fmt_sprintf.sprintf(("%d" : stdgo.GoString), stdgo.Go.toInterface(_i))?.__copy__() : stdgo.GoString);
                {
                    var _err = (_enc.encode(stdgo.Go.toInterface(_s)) : stdgo.Error);
                    if (_err != null) {
                        _t.error(stdgo.Go.toInterface(("encoder fail:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
                    };
                };
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (10 : stdgo.GoInt) : Bool), _i++, {
                var _dec = stdgo._internal.encoding.gob.Gob_newDecoder.newDecoder(stdgo.Go.asInterface(_b));
                var _s:stdgo.GoString = ("" : stdgo.GoString);
                {
                    var _err = (_dec.decode(stdgo.Go.toInterface(stdgo.Go.pointer(_s))) : stdgo.Error);
                    if (_err != null) {
                        _t.fatal(stdgo.Go.toInterface(("decoder fail:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
                    };
                };
                if (_s != (stdgo._internal.fmt.Fmt_sprintf.sprintf(("%d" : stdgo.GoString), stdgo.Go.toInterface(_i)))) {
                    _t.fatalf(("decode expected %d got %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_s));
                };
            });
        };
    }
