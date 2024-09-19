package stdgo._internal.encoding.gob;
function testIgnoredFields(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _it0:stdgo._internal.encoding.gob.Gob_IT0.IT0 = ({} : stdgo._internal.encoding.gob.Gob_IT0.IT0);
        _it0.a = (17i64 : stdgo.GoInt64);
        _it0.b = ("hello" : stdgo.GoString);
        _it0.c = (3.14159 : stdgo.GoFloat64);
        _it0.ignore_d = (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        _it0.ignore_e[(0 : stdgo.GoInt)] = (1 : stdgo.GoFloat64);
        _it0.ignore_e[(1 : stdgo.GoInt)] = (2 : stdgo.GoFloat64);
        _it0.ignore_e[(2 : stdgo.GoInt)] = (3 : stdgo.GoFloat64);
        _it0.ignore_f = true;
        _it0.ignore_g = ("pay no attention" : stdgo.GoString);
        _it0.ignore_h = (("to the curtain" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        _it0.ignore_i = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_RT1.RT1((3.1 : stdgo.GoFloat64), ("hi" : stdgo.GoString), (7 : stdgo.GoInt), ("hello" : stdgo.GoString)) : stdgo._internal.encoding.gob.Gob_RT1.RT1)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_RT1.RT1>);
        _it0.ignore_m = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoInt>();
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            x.set(("one" : stdgo.GoString), (1 : stdgo.GoInt));
x.set(("two" : stdgo.GoString), (2 : stdgo.GoInt));
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>);
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        stdgo._internal.encoding.gob.Gob_newEncoder.newEncoder(stdgo.Go.asInterface(_b)).encode(stdgo.Go.toInterface(_it0));
        var _dec = stdgo._internal.encoding.gob.Gob_newDecoder.newDecoder(stdgo.Go.asInterface(_b));
        var _rt1:stdgo._internal.encoding.gob.Gob_RT1.RT1 = ({} : stdgo._internal.encoding.gob.Gob_RT1.RT1);
        var _err = (_dec.decode(stdgo.Go.toInterface((stdgo.Go.setRef(_rt1) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_RT1.RT1>))) : stdgo.Error);
        if (_err != null) {
            _t.error(stdgo.Go.toInterface(("error: " : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        if ((((_it0.a : stdgo.GoInt) != (_rt1.a) || _it0.b != (_rt1.b) : Bool) || (_it0.c != _rt1.c) : Bool)) {
            _t.errorf(("rt0->rt1: expected %v; got %v" : stdgo.GoString), stdgo.Go.toInterface(_it0), stdgo.Go.toInterface(_rt1));
        };
    }