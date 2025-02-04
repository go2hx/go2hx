package stdgo._internal.encoding.gob;
function benchmarkDecodeMap(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _count = (1000 : stdgo.GoInt);
        var _m = (({
            final x = new stdgo.GoMap.GoIntMap<stdgo.GoInt>();
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>) : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _count : Bool)) {
                _m[_i] = _i;
                _i++;
            };
        };
        var _buf:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        var _enc = stdgo._internal.encoding.gob.Gob_newencoder.newEncoder(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)));
        var _err = (@:check2r _enc.encode(stdgo.Go.toInterface(_m)) : stdgo.Error);
        if (_err != null) {
            @:check2r _b.fatal(stdgo.Go.toInterface(_err));
        };
        var _bbuf = ({ _data : @:check2 _buf.bytes() } : stdgo._internal.encoding.gob.Gob_t_benchmarkbuf.T_benchmarkBuf);
        @:check2r _b.resetTimer();
        @:check2r _b.reportAllocs();
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                var _rm:stdgo.GoMap<stdgo.GoInt, stdgo.GoInt> = (null : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>);
@:check2 _bbuf._reset();
var _dec = stdgo._internal.encoding.gob.Gob_newdecoder.newDecoder(stdgo.Go.asInterface((stdgo.Go.setRef(_bbuf) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_benchmarkbuf.T_benchmarkBuf>)));
var _err = (@:check2r _dec.decode(stdgo.Go.toInterface((stdgo.Go.setRef(_rm) : stdgo.Ref<stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>>))) : stdgo.Error);
if (_err != null) {
                    @:check2r _b.fatal(stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err));
                };
                _i++;
            };
        };
    }
