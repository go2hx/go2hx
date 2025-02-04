package stdgo._internal.encoding.gob;
function testNestedInterfaces(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _buf:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        var _e = stdgo._internal.encoding.gob.Gob_newencoder.newEncoder(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)));
        var _d = stdgo._internal.encoding.gob.Gob_newdecoder.newDecoder(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)));
        stdgo._internal.encoding.gob.Gob_register.register(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_bug0outer.Bug0Outer)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_bug0outer.Bug0Outer>))));
        stdgo._internal.encoding.gob.Gob_register.register(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_bug0inner.Bug0Inner)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_bug0inner.Bug0Inner>))));
        var _f = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_bug0outer.Bug0Outer(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_bug0outer.Bug0Outer(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_bug0inner.Bug0Inner((7 : stdgo.GoInt)) : stdgo._internal.encoding.gob.Gob_bug0inner.Bug0Inner)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_bug0inner.Bug0Inner>)))) : stdgo._internal.encoding.gob.Gob_bug0outer.Bug0Outer)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_bug0outer.Bug0Outer>)))) : stdgo._internal.encoding.gob.Gob_bug0outer.Bug0Outer)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_bug0outer.Bug0Outer>);
        var _v:stdgo.AnyInterface = stdgo.Go.toInterface(stdgo.Go.asInterface(_f));
        var _err = (@:check2r _e.encode(stdgo.Go.toInterface((stdgo.Go.setRef(_v) : stdgo.Ref<stdgo.AnyInterface>))) : stdgo.Error);
        if (_err != null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(("Encode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        _err = @:check2r _d.decode(stdgo.Go.toInterface((stdgo.Go.setRef(_v) : stdgo.Ref<stdgo.AnyInterface>)));
        if (_err != null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(("Decode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_v : stdgo.Ref<stdgo._internal.encoding.gob.Gob_bug0outer.Bug0Outer>)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_bug0outer.Bug0Outer>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_bug0outer.Bug0Outer>), _1 : false };
        }, _outer1 = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            @:check2r _t.fatalf(("v not Bug0Outer: %T" : stdgo.GoString), _v);
        };
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert(((@:checkr _outer1 ?? throw "null pointer dereference").bug0Field : stdgo.Ref<stdgo._internal.encoding.gob.Gob_bug0outer.Bug0Outer>)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_bug0outer.Bug0Outer>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_bug0outer.Bug0Outer>), _1 : false };
        }, _outer2 = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            @:check2r _t.fatalf(("v.Bug0Field not Bug0Outer: %T" : stdgo.GoString), (@:checkr _outer1 ?? throw "null pointer dereference").bug0Field);
        };
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert(((@:checkr _outer2 ?? throw "null pointer dereference").bug0Field : stdgo.Ref<stdgo._internal.encoding.gob.Gob_bug0inner.Bug0Inner>)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_bug0inner.Bug0Inner>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_bug0inner.Bug0Inner>), _1 : false };
        }, _inner = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            @:check2r _t.fatalf(("v.Bug0Field.Bug0Field not Bug0Inner: %T" : stdgo.GoString), (@:checkr _outer2 ?? throw "null pointer dereference").bug0Field);
        };
        if ((@:checkr _inner ?? throw "null pointer dereference").a != ((7 : stdgo.GoInt))) {
            @:check2r _t.fatalf(("final value %d; expected %d" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _inner ?? throw "null pointer dereference").a), stdgo.Go.toInterface((7 : stdgo.GoInt)));
        };
    }
