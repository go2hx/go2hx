package stdgo._internal.compress.flate;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.sort.Sort;
function _noEOF(_e:stdgo.Error):stdgo.Error {
        if (stdgo.Go.toInterface(_e) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eOF.eOF))) {
            return stdgo._internal.io.Io_errUnexpectedEOF.errUnexpectedEOF;
        };
        return _e;
    }
