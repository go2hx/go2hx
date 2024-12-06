package stdgo._internal.encoding.gob;
function benchmarkDecodeMap(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _count = (1000 : stdgo.GoInt);
        var _m = ({
            final x = new stdgo.GoMap.GoIntMap<stdgo.GoInt>();
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _count : Bool)) {
                _m[_i] = _i;
                _i++;
            };
        };
        var _buf:stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
        var _buf__pointer__ = (stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        var _buf__pointer__ = (stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        var _buf__pointer__ = (stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        var _buf__pointer__ = (stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        var _enc = stdgo._internal.encoding.gob.Gob_newEncoder.newEncoder(stdgo.Go.asInterface(_buf__pointer__));
        var _err = (_enc.encode(stdgo.Go.toInterface(_m)) : stdgo.Error);
        if (_err != null) {
            _b.fatal(stdgo.Go.toInterface(_err));
        };
        var _bbuf = ({ _data : _buf.bytes() } : stdgo._internal.encoding.gob.Gob_T_benchmarkBuf.T_benchmarkBuf);
        var _bbuf__pointer__ = (stdgo.Go.setRef(_bbuf) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_benchmarkBuf.T_benchmarkBuf>);
        var _bbuf__pointer__ = (stdgo.Go.setRef(_bbuf) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_benchmarkBuf.T_benchmarkBuf>);
        var _bbuf__pointer__ = (stdgo.Go.setRef(_bbuf) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_benchmarkBuf.T_benchmarkBuf>);
        var _bbuf__pointer__ = (stdgo.Go.setRef(_bbuf) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_benchmarkBuf.T_benchmarkBuf>);
        _b.resetTimer();
        _b.reportAllocs();
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _b.n : Bool)) {
                var _rm:stdgo.GoMap<stdgo.GoInt, stdgo.GoInt> = (null : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>);
var _rm__pointer__ = (stdgo.Go.setRef(_rm) : stdgo.Ref<stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>>);
var _rm__pointer__ = (stdgo.Go.setRef(_rm) : stdgo.Ref<stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>>);
var _rm__pointer__ = (stdgo.Go.setRef(_rm) : stdgo.Ref<stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>>);
var _rm__pointer__ = (stdgo.Go.setRef(_rm) : stdgo.Ref<stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>>);
_bbuf._reset();
var _dec = stdgo._internal.encoding.gob.Gob_newDecoder.newDecoder(stdgo.Go.asInterface(_bbuf__pointer__));
var _err = (_dec.decode(stdgo.Go.toInterface(_rm__pointer__)) : stdgo.Error);
if (_err != null) {
                    _b.fatal(stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err));
                };
                _i++;
            };
        };
    }
