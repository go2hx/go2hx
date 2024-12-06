package stdgo._internal.encoding.gob;
function testNestedInterfaces(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _buf:stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
        var _buf__pointer__ = (stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        var _buf__pointer__ = (stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        var _buf__pointer__ = (stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        var _buf__pointer__ = (stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        var _e = stdgo._internal.encoding.gob.Gob_newEncoder.newEncoder(stdgo.Go.asInterface(_buf__pointer__));
        var _d = stdgo._internal.encoding.gob.Gob_newDecoder.newDecoder(stdgo.Go.asInterface(_buf__pointer__));
        stdgo._internal.encoding.gob.Gob_register.register(stdgo.Go.toInterface((stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_Bug0Outer.Bug0Outer)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_Bug0Outer.Bug0Outer>)));
        stdgo._internal.encoding.gob.Gob_register.register(stdgo.Go.toInterface((stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_Bug0Inner.Bug0Inner)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_Bug0Inner.Bug0Inner>)));
        var _f = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_Bug0Outer.Bug0Outer(stdgo.Go.toInterface((stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_Bug0Outer.Bug0Outer(stdgo.Go.toInterface((stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_Bug0Inner.Bug0Inner((7 : stdgo.GoInt)) : stdgo._internal.encoding.gob.Gob_Bug0Inner.Bug0Inner)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_Bug0Inner.Bug0Inner>))) : stdgo._internal.encoding.gob.Gob_Bug0Outer.Bug0Outer)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_Bug0Outer.Bug0Outer>))) : stdgo._internal.encoding.gob.Gob_Bug0Outer.Bug0Outer)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_Bug0Outer.Bug0Outer>);
        var _v:stdgo.AnyInterface = stdgo.Go.toInterface(_f);
        var _v__pointer__ = (stdgo.Go.setRef(_v) : stdgo.Ref<stdgo.AnyInterface>);
        var _v__pointer__ = (stdgo.Go.setRef(_v) : stdgo.Ref<stdgo.AnyInterface>);
        var _v__pointer__ = (stdgo.Go.setRef(_v) : stdgo.Ref<stdgo.AnyInterface>);
        var _v__pointer__ = (stdgo.Go.setRef(_v) : stdgo.Ref<stdgo.AnyInterface>);
        var _err = (_e.encode(stdgo.Go.toInterface(_v__pointer__)) : stdgo.Error);
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("Encode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        _err = _d.decode(stdgo.Go.toInterface(_v__pointer__));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("Decode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_v : stdgo.Ref<stdgo._internal.encoding.gob.Gob_Bug0Outer.Bug0Outer>)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_Bug0Outer.Bug0Outer>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_Bug0Outer.Bug0Outer>), _1 : false };
        }, _outer1 = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            _t.fatalf(("v not Bug0Outer: %T" : stdgo.GoString), _v);
        };
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_outer1.bug0Field : stdgo.Ref<stdgo._internal.encoding.gob.Gob_Bug0Outer.Bug0Outer>)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_Bug0Outer.Bug0Outer>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_Bug0Outer.Bug0Outer>), _1 : false };
        }, _outer2 = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            _t.fatalf(("v.Bug0Field not Bug0Outer: %T" : stdgo.GoString), _outer1.bug0Field);
        };
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_outer2.bug0Field : stdgo.Ref<stdgo._internal.encoding.gob.Gob_Bug0Inner.Bug0Inner>)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_Bug0Inner.Bug0Inner>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_Bug0Inner.Bug0Inner>), _1 : false };
        }, _inner = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            _t.fatalf(("v.Bug0Field.Bug0Field not Bug0Inner: %T" : stdgo.GoString), _outer2.bug0Field);
        };
        if (_inner.a != ((7 : stdgo.GoInt))) {
            _t.fatalf(("final value %d; expected %d" : stdgo.GoString), stdgo.Go.toInterface(_inner.a), stdgo.Go.toInterface((7 : stdgo.GoInt)));
        };
    }
