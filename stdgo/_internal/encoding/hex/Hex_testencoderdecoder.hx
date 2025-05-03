package stdgo._internal.encoding.hex;
function testEncoderDecoder(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/encoding/hex/hex_test.go#L116"
        for (__0 => _multiplier in (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(1 : stdgo.GoInt), (128 : stdgo.GoInt), (192 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/hex/hex_test.go#L117"
            for (__1 => _test in stdgo._internal.encoding.hex.Hex__encdectests._encDecTests) {
                var _input = stdgo._internal.bytes.Bytes_repeat.repeat(_test._dec, _multiplier);
                var _output = (stdgo._internal.strings.Strings_repeat.repeat(_test._enc?.__copy__(), _multiplier)?.__copy__() : stdgo.GoString);
                var _buf:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
                var _enc = (stdgo._internal.encoding.hex.Hex_newencoder.newEncoder(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>))) : stdgo._internal.io.Io_writer.Writer);
                var _r = ({ reader : stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newreader.newReader(_input)) } : stdgo._internal.encoding.hex.Hex_t__struct_1.T__struct_1);
                //"file:///home/runner/.go/go1.21.3/src/encoding/hex/hex_test.go#L124"
                {
                    var __tmp__ = stdgo._internal.io.Io_copybuffer.copyBuffer(_enc, stdgo.Go.asInterface(_r), (new stdgo.Slice<stdgo.GoUInt8>((7 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (((_n != (_input.length : stdgo.GoInt64)) || (_err != null) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/hex/hex_test.go#L125"
                        _t.errorf(("encoder.Write(%q*%d) = (%d, %v), want (%d, nil)" : stdgo.GoString), stdgo.Go.toInterface(_test._dec), stdgo.Go.toInterface(_multiplier), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err), stdgo.Go.toInterface((_input.length)));
                        //"file:///home/runner/.go/go1.21.3/src/encoding/hex/hex_test.go#L126"
                        continue;
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/encoding/hex/hex_test.go#L129"
                {
                    var _encDst = ((_buf.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                    if (_encDst != (_output)) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/hex/hex_test.go#L130"
                        _t.errorf(("buf(%q*%d) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_test._dec), stdgo.Go.toInterface(_multiplier), stdgo.Go.toInterface(_encDst), stdgo.Go.toInterface(_output));
                        //"file:///home/runner/.go/go1.21.3/src/encoding/hex/hex_test.go#L131"
                        continue;
                    };
                };
                var _dec = (stdgo._internal.encoding.hex.Hex_newdecoder.newDecoder(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>))) : stdgo._internal.io.Io_reader.Reader);
                var _decBuf:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
                var _w = ({ writer : stdgo.Go.asInterface((stdgo.Go.setRef(_decBuf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)) } : stdgo._internal.encoding.hex.Hex_t__struct_2.T__struct_2);
                //"file:///home/runner/.go/go1.21.3/src/encoding/hex/hex_test.go#L137"
                {
                    var __tmp__ = stdgo._internal.io.Io_copybuffer.copyBuffer(stdgo.Go.asInterface(_w), _dec, (new stdgo.Slice<stdgo.GoUInt8>((7 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)), __2:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (((_err != null) || (_decBuf.len() != (_input.length)) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/hex/hex_test.go#L138"
                        _t.errorf(("decoder.Read(%q*%d) = (%d, %v), want (%d, nil)" : stdgo.GoString), stdgo.Go.toInterface(_test._enc), stdgo.Go.toInterface(_multiplier), stdgo.Go.toInterface(_decBuf.len()), stdgo.Go.toInterface(_err), stdgo.Go.toInterface((_input.length)));
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/encoding/hex/hex_test.go#L141"
                if (!stdgo._internal.bytes.Bytes_equal.equal(_decBuf.bytes(), _input)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/hex/hex_test.go#L142"
                    _t.errorf(("decBuf(%q*%d) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_test._dec), stdgo.Go.toInterface(_multiplier), stdgo.Go.toInterface(_decBuf.bytes()), stdgo.Go.toInterface(_input));
                    //"file:///home/runner/.go/go1.21.3/src/encoding/hex/hex_test.go#L143"
                    continue;
                };
            };
        };
    }
