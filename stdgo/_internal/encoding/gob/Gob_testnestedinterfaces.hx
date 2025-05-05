package stdgo._internal.encoding.gob;
function testNestedInterfaces(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _buf:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        var _e = stdgo._internal.encoding.gob.Gob_newencoder.newEncoder(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)));
        var _d = stdgo._internal.encoding.gob.Gob_newdecoder.newDecoder(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)));
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L635"
        stdgo._internal.encoding.gob.Gob_register.register(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_bug0outer.Bug0Outer)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_bug0outer.Bug0Outer>))));
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L636"
        stdgo._internal.encoding.gob.Gob_register.register(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_bug0inner.Bug0Inner)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_bug0inner.Bug0Inner>))));
        var _f = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_bug0outer.Bug0Outer(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_bug0outer.Bug0Outer(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_bug0inner.Bug0Inner((7 : stdgo.GoInt)) : stdgo._internal.encoding.gob.Gob_bug0inner.Bug0Inner)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_bug0inner.Bug0Inner>)))) : stdgo._internal.encoding.gob.Gob_bug0outer.Bug0Outer)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_bug0outer.Bug0Outer>)))) : stdgo._internal.encoding.gob.Gob_bug0outer.Bug0Outer)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_bug0outer.Bug0Outer>);
        var _v:stdgo.AnyInterface = stdgo.Go.toInterface(stdgo.Go.asInterface(_f));
        var _err = (_e.encode(stdgo.Go.toInterface((stdgo.Go.setRef(_v) : stdgo.Ref<stdgo.AnyInterface>))) : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L640"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L641"
            _t.fatal(stdgo.Go.toInterface(("Encode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        _err = _d.decode(stdgo.Go.toInterface((stdgo.Go.setRef(_v) : stdgo.Ref<stdgo.AnyInterface>)));
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L644"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L645"
            _t.fatal(stdgo.Go.toInterface(("Decode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_v : stdgo.Ref<stdgo._internal.encoding.gob.Gob_bug0outer.Bug0Outer>)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_bug0outer.Bug0Outer>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_bug0outer.Bug0Outer>), _1 : false };
        }, _outer1 = __tmp__._0, _ok = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L649"
        if (!_ok) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L650"
            _t.fatalf(("v not Bug0Outer: %T" : stdgo.GoString), _v);
        };
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert(((@:checkr _outer1 ?? throw "null pointer dereference").bug0Field : stdgo.Ref<stdgo._internal.encoding.gob.Gob_bug0outer.Bug0Outer>)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_bug0outer.Bug0Outer>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_bug0outer.Bug0Outer>), _1 : false };
        }, _outer2 = __tmp__._0, _ok = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L653"
        if (!_ok) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L654"
            _t.fatalf(("v.Bug0Field not Bug0Outer: %T" : stdgo.GoString), (@:checkr _outer1 ?? throw "null pointer dereference").bug0Field);
        };
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert(((@:checkr _outer2 ?? throw "null pointer dereference").bug0Field : stdgo.Ref<stdgo._internal.encoding.gob.Gob_bug0inner.Bug0Inner>)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_bug0inner.Bug0Inner>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_bug0inner.Bug0Inner>), _1 : false };
        }, _inner = __tmp__._0, _ok = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L657"
        if (!_ok) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L658"
            _t.fatalf(("v.Bug0Field.Bug0Field not Bug0Inner: %T" : stdgo.GoString), (@:checkr _outer2 ?? throw "null pointer dereference").bug0Field);
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L660"
        if ((@:checkr _inner ?? throw "null pointer dereference").a != ((7 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L661"
            _t.fatalf(("final value %d; expected %d" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _inner ?? throw "null pointer dereference").a), stdgo.Go.toInterface((7 : stdgo.GoInt)));
        };
    }
