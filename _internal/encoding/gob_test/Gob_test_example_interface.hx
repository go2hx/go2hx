package _internal.encoding.gob_test;
function example_interface():Void {
        var _network:stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
        stdgo._internal.encoding.gob.Gob_register.register(stdgo.Go.toInterface(stdgo.Go.asInterface((new _internal.encoding.gob_test.Gob_test_Point.Point() : _internal.encoding.gob_test.Gob_test_Point.Point))));
        var _enc = stdgo._internal.encoding.gob.Gob_newEncoder.newEncoder(stdgo.Go.asInterface((stdgo.Go.setRef(_network) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>)));
        {
            var _i = (1 : stdgo.GoInt);
            stdgo.Go.cfor((_i <= (3 : stdgo.GoInt) : Bool), _i++, {
                _internal.encoding.gob_test.Gob_test__interfaceEncode._interfaceEncode(_enc, stdgo.Go.asInterface((new _internal.encoding.gob_test.Gob_test_Point.Point(((3 : stdgo.GoInt) * _i : stdgo.GoInt), ((4 : stdgo.GoInt) * _i : stdgo.GoInt)) : _internal.encoding.gob_test.Gob_test_Point.Point)));
            });
        };
        var _dec = stdgo._internal.encoding.gob.Gob_newDecoder.newDecoder(stdgo.Go.asInterface((stdgo.Go.setRef(_network) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>)));
        {
            var _i = (1 : stdgo.GoInt);
            stdgo.Go.cfor((_i <= (3 : stdgo.GoInt) : Bool), _i++, {
                var _result = (_internal.encoding.gob_test.Gob_test__interfaceDecode._interfaceDecode(_dec) : _internal.encoding.gob_test.Gob_test_Pythagoras.Pythagoras);
                stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_result.hypotenuse()));
            });
        };
    }
