package stdgo._internal.encoding.gob;
function testEncoderDecoder(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        var _enc = stdgo._internal.encoding.gob.Gob_newEncoder.newEncoder(stdgo.Go.asInterface(_b));
        var _et0 = (stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_ET0.ET0)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_ET0.ET0>);
        (@:checkr _et0 ?? throw "null pointer dereference").a = (7 : stdgo.GoInt);
        (@:checkr _et0 ?? throw "null pointer dereference").b = ("gobs of fun" : stdgo.GoString);
        var _err = (@:check2r _enc.encode(stdgo.Go.toInterface(_et0)) : stdgo.Error);
        if (_err != null) {
            @:check2r _t.error(stdgo.Go.toInterface(("encoder fail:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _dec = stdgo._internal.encoding.gob.Gob_newDecoder.newDecoder(stdgo.Go.asInterface(_b));
        var _newEt0 = (stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_ET0.ET0)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_ET0.ET0>);
        _err = @:check2r _dec.decode(stdgo.Go.toInterface(_newEt0));
        if (_err != null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(("error decoding ET0:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        if (!stdgo._internal.reflect.Reflect_deepEqual.deepEqual(stdgo.Go.toInterface(_et0), stdgo.Go.toInterface(_newEt0))) {
            @:check2r _t.fatalf(("invalid data for et0: expected %+v; got %+v" : stdgo.GoString), stdgo.Go.toInterface((_et0 : stdgo._internal.encoding.gob.Gob_ET0.ET0)), stdgo.Go.toInterface((_newEt0 : stdgo._internal.encoding.gob.Gob_ET0.ET0)));
        };
        if (@:check2r _b.len() != ((0 : stdgo.GoInt))) {
            @:check2r _t.error(stdgo.Go.toInterface(("not at eof;" : stdgo.GoString)), stdgo.Go.toInterface(@:check2r _b.len()), stdgo.Go.toInterface(("bytes left" : stdgo.GoString)));
        };
        _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        _enc = stdgo._internal.encoding.gob.Gob_newEncoder.newEncoder(stdgo.Go.asInterface(_b));
        var _et1 = (stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_ET1.ET1)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_ET1.ET1>);
        (@:checkr _et1 ?? throw "null pointer dereference").a = (7 : stdgo.GoInt);
        (@:checkr _et1 ?? throw "null pointer dereference").et2 = (stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_ET2.ET2)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_ET2.ET2>);
        _err = @:check2r _enc.encode(stdgo.Go.toInterface(_et1));
        if (_err != null) {
            @:check2r _t.error(stdgo.Go.toInterface(("encoder fail:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        _dec = stdgo._internal.encoding.gob.Gob_newDecoder.newDecoder(stdgo.Go.asInterface(_b));
        var _newEt1 = (stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_ET1.ET1)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_ET1.ET1>);
        _err = @:check2r _dec.decode(stdgo.Go.toInterface(_newEt1));
        if (_err != null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(("error decoding ET1:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        if (!stdgo._internal.reflect.Reflect_deepEqual.deepEqual(stdgo.Go.toInterface(_et1), stdgo.Go.toInterface(_newEt1))) {
            @:check2r _t.fatalf(("invalid data for et1: expected %+v; got %+v" : stdgo.GoString), stdgo.Go.toInterface((_et1 : stdgo._internal.encoding.gob.Gob_ET1.ET1)), stdgo.Go.toInterface((_newEt1 : stdgo._internal.encoding.gob.Gob_ET1.ET1)));
        };
        if (@:check2r _b.len() != ((0 : stdgo.GoInt))) {
            @:check2r _t.error(stdgo.Go.toInterface(("not at eof;" : stdgo.GoString)), stdgo.Go.toInterface(@:check2r _b.len()), stdgo.Go.toInterface(("bytes left" : stdgo.GoString)));
        };
        @:check2r _enc.encode(stdgo.Go.toInterface(_et1));
        _newEt1 = (stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_ET1.ET1)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_ET1.ET1>);
        _err = @:check2r _dec.decode(stdgo.Go.toInterface(_newEt1));
        if (_err != null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(("round 2: error decoding ET1:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        if (!stdgo._internal.reflect.Reflect_deepEqual.deepEqual(stdgo.Go.toInterface(_et1), stdgo.Go.toInterface(_newEt1))) {
            @:check2r _t.fatalf(("round 2: invalid data for et1: expected %+v; got %+v" : stdgo.GoString), stdgo.Go.toInterface((_et1 : stdgo._internal.encoding.gob.Gob_ET1.ET1)), stdgo.Go.toInterface((_newEt1 : stdgo._internal.encoding.gob.Gob_ET1.ET1)));
        };
        if (@:check2r _b.len() != ((0 : stdgo.GoInt))) {
            @:check2r _t.error(stdgo.Go.toInterface(("round 2: not at eof;" : stdgo.GoString)), stdgo.Go.toInterface(@:check2r _b.len()), stdgo.Go.toInterface(("bytes left" : stdgo.GoString)));
        };
        _err = @:check2r _enc.encode(stdgo.Go.toInterface(_et1));
        if (_err != null) {
            @:check2r _t.error(stdgo.Go.toInterface(("round 3: encoder fail:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _newEt2 = (stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_ET2.ET2)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_ET2.ET2>);
        _err = @:check2r _dec.decode(stdgo.Go.toInterface(_newEt2));
        if (_err == null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(("round 3: expected `bad type\' error decoding ET2" : stdgo.GoString)));
        };
    }
