package stdgo._internal.internal.coverage.encodecounter;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.os.Os;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.sort.Sort;
import stdgo._internal.internal.coverage.uleb128.Uleb128;
import stdgo._internal.internal.coverage.Coverage;
function _padToFourByteBoundary(_ws:stdgo.Ref<stdgo._internal.internal.coverage.slicewriter.Slicewriter_WriteSeeker.WriteSeeker>):stdgo.Error {
        var _sz = (@:check2r _ws.bytesWritten().length : stdgo.GoInt);
        var _zeros = (new stdgo.Slice<stdgo.GoUInt8>(4, 4, ...[(0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _rem = ((_sz : stdgo.GoUInt32) % (4u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
        if (_rem != ((0u32 : stdgo.GoUInt32))) {
            var _pad = (_zeros.__slice__(0, (((4u32 : stdgo.GoUInt32) - _rem : stdgo.GoUInt32))) : stdgo.Slice<stdgo.GoUInt8>);
            {
                var __tmp__ = @:check2r _ws.write(_pad), _nw:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                } else if (_nw != ((_pad.length))) {
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("error: short write" : stdgo.GoString));
                };
            };
        };
        return (null : stdgo.Error);
    }
