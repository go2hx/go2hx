package stdgo._internal.encoding.gob;
import stdgo._internal.flag.Flag;
import stdgo._internal.errors.Errors;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strings.Strings;
import stdgo._internal.time.Time;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.testing.Testing;
import stdgo._internal.io.Io;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.math.Math;
import stdgo._internal.internal.saferio.Saferio;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.encoding.hex.Hex;
import stdgo._internal.sort.Sort;
import stdgo._internal.os.Os;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.encoding.binary.Binary;
function testDecodePartial(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        var _buf:stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
        var _t1 = ({ x : (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), y : ("foo" : stdgo.GoString) } : stdgo._internal.encoding.gob.Gob_T_testDecodePartial___localname___T_28547.T_testDecodePartial___localname___T_28547);
        var _t2 = ({ x : (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(4 : stdgo.GoInt), (5 : stdgo.GoInt), (6 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), y : ("bar" : stdgo.GoString) } : stdgo._internal.encoding.gob.Gob_T_testDecodePartial___localname___T_28547.T_testDecodePartial___localname___T_28547);
        var _enc = stdgo._internal.encoding.gob.Gob_newEncoder.newEncoder(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>)));
        var _t1start = (0 : stdgo.GoInt);
        {
            var _err = (@:check2r _enc.encode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_t1) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_testDecodePartial___localname___T_28547.T_testDecodePartial___localname___T_28547>)))) : stdgo.Error);
            if (_err != null) {
                @:check2r _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        var _t2start = (@:check2 _buf.len() : stdgo.GoInt);
        {
            var _err = (@:check2r _enc.encode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_t2) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_testDecodePartial___localname___T_28547.T_testDecodePartial___localname___T_28547>)))) : stdgo.Error);
            if (_err != null) {
                @:check2r _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        var _data = @:check2 _buf.bytes();
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i <= (_data.length) : Bool)) {
                var _bufr = stdgo._internal.bytes.Bytes_newReader.newReader((_data.__slice__(0, _i) : stdgo.Slice<stdgo.GoUInt8>));
var __0:stdgo._internal.encoding.gob.Gob_T_testDecodePartial___localname___T_28547.T_testDecodePartial___localname___T_28547 = ({} : stdgo._internal.encoding.gob.Gob_T_testDecodePartial___localname___T_28547.T_testDecodePartial___localname___T_28547), __1:stdgo._internal.encoding.gob.Gob_T_testDecodePartial___localname___T_28547.T_testDecodePartial___localname___T_28547 = ({} : stdgo._internal.encoding.gob.Gob_T_testDecodePartial___localname___T_28547.T_testDecodePartial___localname___T_28547);
var _t2b = __1, _t1b = __0;
var _dec = stdgo._internal.encoding.gob.Gob_newDecoder.newDecoder(stdgo.Go.asInterface(_bufr));
var _err:stdgo.Error = (null : stdgo.Error);
_err = @:check2r _dec.decode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_t1b) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_testDecodePartial___localname___T_28547.T_testDecodePartial___localname___T_28547>))));
if (_err == null) {
                    _err = @:check2r _dec.decode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_t2b) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_testDecodePartial___localname___T_28547.T_testDecodePartial___localname___T_28547>))));
                };
{
                    final __value__ = _i;
                    if (__value__ == (_t1start) || __value__ == (_t2start)) {
                        if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.io.Io_eOF.eOF))) {
                            @:check2r _t.errorf(("%d/%d: expected io.EOF: %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface((_data.length)), stdgo.Go.toInterface(_err));
                        };
                    } else if (__value__ == ((_data.length))) {
                        if (_err != null) {
                            @:check2r _t.errorf(("%d/%d: unexpected error: %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface((_data.length)), stdgo.Go.toInterface(_err));
                        };
                        if (!stdgo._internal.reflect.Reflect_deepEqual.deepEqual(stdgo.Go.toInterface(stdgo.Go.asInterface(_t1b)), stdgo.Go.toInterface(stdgo.Go.asInterface(_t1)))) {
                            @:check2r _t.fatalf(("t1 value mismatch: got %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_t1b)), stdgo.Go.toInterface(stdgo.Go.asInterface(_t1)));
                        };
                        if (!stdgo._internal.reflect.Reflect_deepEqual.deepEqual(stdgo.Go.toInterface(stdgo.Go.asInterface(_t2b)), stdgo.Go.toInterface(stdgo.Go.asInterface(_t2)))) {
                            @:check2r _t.fatalf(("t2 value mismatch: got %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_t2b)), stdgo.Go.toInterface(stdgo.Go.asInterface(_t2)));
                        };
                    } else {
                        if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.io.Io_errUnexpectedEOF.errUnexpectedEOF))) {
                            @:check2r _t.errorf(("%d/%d: expected io.ErrUnexpectedEOF: %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface((_data.length)), stdgo.Go.toInterface(_err));
                        };
                    };
                };
                _i++;
            };
        };
    }
