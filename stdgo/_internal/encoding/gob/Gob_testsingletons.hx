package stdgo._internal.encoding.gob;
function testSingletons(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        var _enc = stdgo._internal.encoding.gob.Gob_newencoder.newEncoder(stdgo.Go.asInterface(_b));
        var _dec = stdgo._internal.encoding.gob.Gob_newdecoder.newDecoder(stdgo.Go.asInterface(_b));
        for (__8 => _test in stdgo._internal.encoding.gob.Gob__singletests._singleTests) {
            @:check2r _b.reset();
            var _err = (@:check2r _enc.encode(_test._in) : stdgo.Error);
            if (_err != null) {
                @:check2r _t.errorf(("error encoding %v: %s" : stdgo.GoString), _test._in, stdgo.Go.toInterface(_err));
                continue;
            };
            _err = @:check2r _dec.decode(_test._out);
            if (((_err != null) && (_test._err == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                @:check2r _t.errorf(("error decoding %v: %s" : stdgo.GoString), _test._in, stdgo.Go.toInterface(_err));
                continue;
            } else if (((_err == null) && (_test._err != (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                @:check2r _t.errorf(("expected error decoding %v: %s" : stdgo.GoString), _test._in, stdgo.Go.toInterface(_test._err));
                continue;
            } else if (((_err != null) && (_test._err != (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                if (!stdgo._internal.strings.Strings_contains.contains(_err.error()?.__copy__(), _test._err?.__copy__())) {
                    @:check2r _t.errorf(("wrong error decoding %v: wanted %s, got %v" : stdgo.GoString), _test._in, stdgo.Go.toInterface(_test._err), stdgo.Go.toInterface(_err));
                };
                continue;
            };
            var _val = (stdgo._internal.reflect.Reflect_valueof.valueOf(_test._out).elem().interface_() : stdgo.AnyInterface);
            if (!stdgo._internal.reflect.Reflect_deepequal.deepEqual(_test._in, _val)) {
                @:check2r _t.errorf(("decoding singleton: expected %v got %v" : stdgo.GoString), _test._in, _val);
            };
        };
    }
