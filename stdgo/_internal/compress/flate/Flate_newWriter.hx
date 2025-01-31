package stdgo._internal.compress.flate;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.sort.Sort;
function newWriter(_w:stdgo._internal.io.Io_Writer.Writer, _level:stdgo.GoInt):{ var _0 : stdgo.Ref<stdgo._internal.compress.flate.Flate_Writer.Writer>; var _1 : stdgo.Error; } {
        var _dw:stdgo._internal.compress.flate.Flate_Writer.Writer = ({} : stdgo._internal.compress.flate.Flate_Writer.Writer);
        {
            var _err = (@:check2 _dw._d._init(_w, _level) : stdgo.Error);
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
        };
        return { _0 : (stdgo.Go.setRef(_dw) : stdgo.Ref<stdgo._internal.compress.flate.Flate_Writer.Writer>), _1 : (null : stdgo.Error) };
    }
