package stdgo._internal.encoding.hex;
function testEncoderDecoder(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _multiplier in (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(1 : stdgo.GoInt), (128 : stdgo.GoInt), (192 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)) {
            for (__1 => _test in stdgo._internal.encoding.hex.Hex__encDecTests._encDecTests) {
                var _input = stdgo._internal.bytes.Bytes_repeat.repeat(_test._dec, _multiplier);
                var _output = (stdgo._internal.strings.Strings_repeat.repeat(_test._enc?.__copy__(), _multiplier)?.__copy__() : stdgo.GoString);
                var _buf:stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
                var _buf__pointer__ = (stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
                var _buf__pointer__ = (stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
                var _buf__pointer__ = (stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
                var _buf__pointer__ = (stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
                var _enc = (stdgo._internal.encoding.hex.Hex_newEncoder.newEncoder(stdgo.Go.asInterface(_buf__pointer__)) : stdgo._internal.io.Io_Writer.Writer);
                var _r = ({ reader : stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newReader.newReader(_input)) } : stdgo._internal.encoding.hex.Hex_T__struct_1.T__struct_1);
                {
                    var __tmp__ = stdgo._internal.io.Io_copyBuffer.copyBuffer(_enc, stdgo.Go.asInterface(_r), (new stdgo.Slice<stdgo.GoUInt8>((7 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (((_n != (_input.length : stdgo.GoInt64)) || (_err != null) : Bool)) {
                        _t.errorf(("encoder.Write(%q*%d) = (%d, %v), want (%d, nil)" : stdgo.GoString), stdgo.Go.toInterface(_test._dec), stdgo.Go.toInterface(_multiplier), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err), stdgo.Go.toInterface((_input.length)));
                        continue;
                    };
                };
                {
                    var _encDst = ((_buf.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                    if (_encDst != (_output)) {
                        _t.errorf(("buf(%q*%d) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_test._dec), stdgo.Go.toInterface(_multiplier), stdgo.Go.toInterface(_encDst), stdgo.Go.toInterface(_output));
                        continue;
                    };
                };
                var _dec = (stdgo._internal.encoding.hex.Hex_newDecoder.newDecoder(stdgo.Go.asInterface(_buf__pointer__)) : stdgo._internal.io.Io_Reader.Reader);
                var _decBuf:stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
                var _decBuf__pointer__ = (stdgo.Go.setRef(_decBuf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
                var _decBuf__pointer__ = (stdgo.Go.setRef(_decBuf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
                var _decBuf__pointer__ = (stdgo.Go.setRef(_decBuf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
                var _decBuf__pointer__ = (stdgo.Go.setRef(_decBuf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
                var _w = ({ writer : stdgo.Go.asInterface(_decBuf__pointer__) } : stdgo._internal.encoding.hex.Hex_T__struct_2.T__struct_2);
                {
                    var __tmp__ = stdgo._internal.io.Io_copyBuffer.copyBuffer(stdgo.Go.asInterface(_w), _dec, (new stdgo.Slice<stdgo.GoUInt8>((7 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)), __2:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (((_err != null) || (_decBuf.len() != (_input.length)) : Bool)) {
                        _t.errorf(("decoder.Read(%q*%d) = (%d, %v), want (%d, nil)" : stdgo.GoString), stdgo.Go.toInterface(_test._enc), stdgo.Go.toInterface(_multiplier), stdgo.Go.toInterface(_decBuf.len()), stdgo.Go.toInterface(_err), stdgo.Go.toInterface((_input.length)));
                    };
                };
                if (!stdgo._internal.bytes.Bytes_equal.equal(_decBuf.bytes(), _input)) {
                    _t.errorf(("decBuf(%q*%d) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_test._dec), stdgo.Go.toInterface(_multiplier), stdgo.Go.toInterface(_decBuf.bytes()), stdgo.Go.toInterface(_input));
                    continue;
                };
            };
        };
    }
