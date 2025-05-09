package stdgo._internal.encoding.gob;
function testIndirectSliceMapArray(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _i = (stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_indirect.Indirect)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_indirect.Indirect>);
        (@:checkr _i ?? throw "null pointer dereference").a = stdgo.Go.pointer((null : stdgo.Pointer<stdgo.Ref<stdgo.GoArray<stdgo.GoInt>>>));
        (@:checkr _i ?? throw "null pointer dereference").a.value = stdgo.Go.pointer(new stdgo.GoArray<stdgo.GoInt>(3, 3).__setNumber32__().__setNil__());
        (@:checkr _i ?? throw "null pointer dereference").a.value.value = (stdgo.Go.setRef(new stdgo.GoArray<stdgo.GoInt>(3, 3).__setNumber32__()) : stdgo.Ref<stdgo.GoArray<stdgo.GoInt>>);
        ((@:checkr _i ?? throw "null pointer dereference").a.value.value : stdgo.GoArray<stdgo.GoInt>).__setData__((new stdgo.GoArray<stdgo.GoInt>(3, 3, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.GoArray<stdgo.GoInt>)?.__copy__());
        (@:checkr _i ?? throw "null pointer dereference").s = stdgo.Go.pointer((null : stdgo.Pointer<stdgo.Ref<stdgo.Slice<stdgo.GoInt>>>));
        (@:checkr _i ?? throw "null pointer dereference").s.value = stdgo.Go.pointer((null : stdgo.Ref<stdgo.Slice<stdgo.GoInt>>));
        (@:checkr _i ?? throw "null pointer dereference").s.value.value = (stdgo.Go.setRef((null : stdgo.Slice<stdgo.GoInt>)) : stdgo.Ref<stdgo.Slice<stdgo.GoInt>>);
        ((@:checkr _i ?? throw "null pointer dereference").s.value.value : stdgo.Slice<stdgo.GoInt>).__setData__((new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(4 : stdgo.GoInt), (5 : stdgo.GoInt), (6 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>));
        (@:checkr _i ?? throw "null pointer dereference").m = stdgo.Go.pointer((null : stdgo.Pointer<stdgo.Pointer<stdgo.Ref<stdgo.GoMap<stdgo.GoString, stdgo.GoInt>>>>));
        (@:checkr _i ?? throw "null pointer dereference").m.value = stdgo.Go.pointer((null : stdgo.Pointer<stdgo.Ref<stdgo.GoMap<stdgo.GoString, stdgo.GoInt>>>));
        (@:checkr _i ?? throw "null pointer dereference").m.value.value = stdgo.Go.pointer((null : stdgo.Ref<stdgo.GoMap<stdgo.GoString, stdgo.GoInt>>));
        (@:checkr _i ?? throw "null pointer dereference").m.value.value.value = (stdgo.Go.setRef((null : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>)) : stdgo.Ref<stdgo.GoMap<stdgo.GoString, stdgo.GoInt>>);
        ((@:checkr _i ?? throw "null pointer dereference").m.value.value.value : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>).__setData__(({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoInt>();
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            x.set(("one" : stdgo.GoString), (1 : stdgo.GoInt));
x.set(("two" : stdgo.GoString), (2 : stdgo.GoInt));
x.set(("three" : stdgo.GoString), (3 : stdgo.GoInt));
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>));
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1038"
        stdgo._internal.encoding.gob.Gob_newencoder.newEncoder(stdgo.Go.asInterface(_b)).encode(stdgo.Go.toInterface(stdgo.Go.asInterface(_i)));
        var _dec = stdgo._internal.encoding.gob.Gob_newdecoder.newDecoder(stdgo.Go.asInterface(_b));
        var _d:stdgo._internal.encoding.gob.Gob_direct.Direct = ({} : stdgo._internal.encoding.gob.Gob_direct.Direct);
        var _err = (_dec.decode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_d) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_direct.Direct>)))) : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1042"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1043"
            _t.error(stdgo.Go.toInterface(("error: " : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1045"
        if ((((false || _d.a[(0 : stdgo.GoInt)] != ((1 : stdgo.GoInt)) : Bool) || _d.a[(1 : stdgo.GoInt)] != ((2 : stdgo.GoInt)) : Bool) || (_d.a[(2 : stdgo.GoInt)] != (3 : stdgo.GoInt)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1046"
            _t.errorf(("indirect to direct: d.A is %v not %v" : stdgo.GoString), stdgo.Go.toInterface(_d.a), stdgo.Go.toInterface(((@:checkr _i ?? throw "null pointer dereference").a.value.value : stdgo.GoArray<stdgo.GoInt>)));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1048"
        if (((((_d.s.length) != ((3 : stdgo.GoInt)) || _d.s[(0 : stdgo.GoInt)] != ((4 : stdgo.GoInt)) : Bool) || _d.s[(1 : stdgo.GoInt)] != ((5 : stdgo.GoInt)) : Bool) || (_d.s[(2 : stdgo.GoInt)] != (6 : stdgo.GoInt)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1049"
            _t.errorf(("indirect to direct: d.S is %v not %v" : stdgo.GoString), stdgo.Go.toInterface(_d.s), stdgo.Go.toInterface(((@:checkr _i ?? throw "null pointer dereference").s.value.value : stdgo.Slice<stdgo.GoInt>)));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1051"
        if (((((_d.m.length) != ((3 : stdgo.GoInt)) || (_d.m[("one" : stdgo.GoString)] ?? (0 : stdgo.GoInt)) != ((1 : stdgo.GoInt)) : Bool) || (_d.m[("two" : stdgo.GoString)] ?? (0 : stdgo.GoInt)) != ((2 : stdgo.GoInt)) : Bool) || ((_d.m[("three" : stdgo.GoString)] ?? (0 : stdgo.GoInt)) != (3 : stdgo.GoInt)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1052"
            _t.errorf(("indirect to direct: d.M is %v not %v" : stdgo.GoString), stdgo.Go.toInterface(_d.m), stdgo.Go.toInterface((@:checkr _i ?? throw "null pointer dereference").m.value.value.value));
        };
        _d.a = (new stdgo.GoArray<stdgo.GoInt>(3, 3, ...[(11 : stdgo.GoInt), (22 : stdgo.GoInt), (33 : stdgo.GoInt)]).__setNumber32__() : stdgo.GoArray<stdgo.GoInt>)?.__copy__();
        _d.s = (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(44 : stdgo.GoInt), (55 : stdgo.GoInt), (66 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        _d.m = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoInt>();
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            x.set(("four" : stdgo.GoString), (4 : stdgo.GoInt));
x.set(("five" : stdgo.GoString), (5 : stdgo.GoInt));
x.set(("six" : stdgo.GoString), (6 : stdgo.GoInt));
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>);
        _i = (stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_indirect.Indirect)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_indirect.Indirect>);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1059"
        _b.reset();
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1060"
        stdgo._internal.encoding.gob.Gob_newencoder.newEncoder(stdgo.Go.asInterface(_b)).encode(stdgo.Go.toInterface(stdgo.Go.asInterface(_d)));
        _dec = stdgo._internal.encoding.gob.Gob_newdecoder.newDecoder(stdgo.Go.asInterface(_b));
        _err = _dec.decode(stdgo.Go.toInterface(stdgo.Go.pointer(_i)));
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1063"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1064"
            _t.fatal(stdgo.Go.toInterface(("error: " : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1066"
        if ((((false || (((@:checkr _i ?? throw "null pointer dereference").a.value.value : stdgo.GoArray<stdgo.GoInt>))[(0 : stdgo.GoInt)] != ((11 : stdgo.GoInt)) : Bool) || (((@:checkr _i ?? throw "null pointer dereference").a.value.value : stdgo.GoArray<stdgo.GoInt>))[(1 : stdgo.GoInt)] != ((22 : stdgo.GoInt)) : Bool) || ((((@:checkr _i ?? throw "null pointer dereference").a.value.value : stdgo.GoArray<stdgo.GoInt>))[(2 : stdgo.GoInt)] != (33 : stdgo.GoInt)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1067"
            _t.errorf(("direct to indirect: ***i.A is %v not %v" : stdgo.GoString), stdgo.Go.toInterface(((@:checkr _i ?? throw "null pointer dereference").a.value.value : stdgo.GoArray<stdgo.GoInt>)), stdgo.Go.toInterface(_d.a));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1069"
        if (((((((@:checkr _i ?? throw "null pointer dereference").s.value.value : stdgo.Slice<stdgo.GoInt>).length) != ((3 : stdgo.GoInt)) || (((@:checkr _i ?? throw "null pointer dereference").s.value.value : stdgo.Slice<stdgo.GoInt>))[(0 : stdgo.GoInt)] != ((44 : stdgo.GoInt)) : Bool) || (((@:checkr _i ?? throw "null pointer dereference").s.value.value : stdgo.Slice<stdgo.GoInt>))[(1 : stdgo.GoInt)] != ((55 : stdgo.GoInt)) : Bool) || ((((@:checkr _i ?? throw "null pointer dereference").s.value.value : stdgo.Slice<stdgo.GoInt>))[(2 : stdgo.GoInt)] != (66 : stdgo.GoInt)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1070"
            _t.errorf(("direct to indirect: ***i.S is %v not %v" : stdgo.GoString), stdgo.Go.toInterface(((@:checkr _i ?? throw "null pointer dereference").s.value.value : stdgo.Slice<stdgo.GoInt>)), stdgo.Go.toInterface(((@:checkr _i ?? throw "null pointer dereference").s.value.value : stdgo.Slice<stdgo.GoInt>)));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1072"
        if (((((((@:checkr _i ?? throw "null pointer dereference").m.value.value.value : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>).length) != ((3 : stdgo.GoInt)) || ((((@:checkr _i ?? throw "null pointer dereference").m.value.value.value : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>))[("four" : stdgo.GoString)] ?? (0 : stdgo.GoInt)) != ((4 : stdgo.GoInt)) : Bool) || ((((@:checkr _i ?? throw "null pointer dereference").m.value.value.value : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>))[("five" : stdgo.GoString)] ?? (0 : stdgo.GoInt)) != ((5 : stdgo.GoInt)) : Bool) || (((((@:checkr _i ?? throw "null pointer dereference").m.value.value.value : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>))[("six" : stdgo.GoString)] ?? (0 : stdgo.GoInt)) != (6 : stdgo.GoInt)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1073"
            _t.errorf(("direct to indirect: ****i.M is %v not %v" : stdgo.GoString), stdgo.Go.toInterface(((@:checkr _i ?? throw "null pointer dereference").m.value.value.value : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>)), stdgo.Go.toInterface(_d.m));
        };
    }
