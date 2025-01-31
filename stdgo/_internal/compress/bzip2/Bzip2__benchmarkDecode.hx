package stdgo._internal.compress.bzip2;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.encoding.hex.Hex;
import stdgo._internal.os.Os;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
import stdgo._internal.sort.Sort;
function _benchmarkDecode(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>, _compressed:stdgo.Slice<stdgo.GoUInt8>):Void {
        var __tmp__ = stdgo._internal.io.Io_copy.copy(stdgo._internal.io.Io_discard.discard, stdgo._internal.compress.bzip2.Bzip2_newReader.newReader(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newReader.newReader(_compressed)))), _uncompressedSize:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            @:check2r _b.fatal(stdgo.Go.toInterface(_err));
        };
        @:check2r _b.setBytes(_uncompressedSize);
        @:check2r _b.reportAllocs();
        @:check2r _b.resetTimer();
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                var _r = stdgo._internal.bytes.Bytes_newReader.newReader(_compressed);
stdgo._internal.io.Io_copy.copy(stdgo._internal.io.Io_discard.discard, stdgo._internal.compress.bzip2.Bzip2_newReader.newReader(stdgo.Go.asInterface(_r)));
                _i++;
            };
        };
    }
