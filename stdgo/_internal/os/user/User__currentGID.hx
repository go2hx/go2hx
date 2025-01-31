package stdgo._internal.os.user;
import stdgo._internal.errors.Errors;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.io.Io;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.os.Os;
import stdgo._internal.strings.Strings;
function _currentGID():stdgo.GoString {
        {
            var _id = (stdgo._internal.os.Os_getgid.getgid() : stdgo.GoInt);
            if ((_id >= (0 : stdgo.GoInt) : Bool)) {
                return stdgo._internal.strconv.Strconv_itoa.itoa(_id)?.__copy__();
            };
        };
        return stdgo.Go.str()?.__copy__();
    }
