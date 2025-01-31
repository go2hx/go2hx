package stdgo._internal.archive.tar;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
import stdgo._internal.time.Time;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.path.Path;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.sort.Sort;
function _tryReadFull(_r:stdgo._internal.io.Io_Reader.Reader, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        while ((((_b.length) > _n : Bool) && (_err == null) : Bool)) {
            var _nn:stdgo.GoInt = (0 : stdgo.GoInt);
            {
                var __tmp__ = _r.read((_b.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>));
                _nn = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            _n = (_n + (_nn) : stdgo.GoInt);
        };
        if (((_b.length == _n) && (stdgo.Go.toInterface(_err) == stdgo.Go.toInterface(stdgo._internal.io.Io_eOF.eOF)) : Bool)) {
            _err = (null : stdgo.Error);
        };
        return {
            final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : _err };
            _n = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
