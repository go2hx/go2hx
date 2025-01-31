package stdgo._internal.runtime.pprof;
import stdgo._internal.errors.Errors;
import stdgo._internal.os.Os;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.context.Context;
import stdgo._internal.sort.Sort;
import stdgo._internal.text.tabwriter.Tabwriter;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.strings.Strings;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.time.Time;
import stdgo._internal.compress.gzip.Gzip;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.math.Math;
import stdgo._internal.internal.abi.Abi;
function _newProfileBuilder(_w:stdgo._internal.io.Io_Writer.Writer):stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profileBuilder.T_profileBuilder> {
        var __tmp__ = stdgo._internal.compress.gzip.Gzip_newWriterLevel.newWriterLevel(_w, (1 : stdgo.GoInt)), _zw:stdgo.Ref<stdgo._internal.compress.gzip.Gzip_Writer.Writer> = __tmp__._0, __0:stdgo.Error = __tmp__._1;
        var _b = (stdgo.Go.setRef(({ _w : _w, _zw : _zw, _start : stdgo._internal.time.Time_now.now()?.__copy__(), _strings : (new stdgo.Slice<stdgo.GoString>(1, 1, ...[stdgo.Go.str()?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>), _stringMap : ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoInt>();
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            x.set(stdgo.Go.str(), (0 : stdgo.GoInt));
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>), _locs : ({
            final x = new stdgo.GoMap.GoIntMap<stdgo._internal.runtime.pprof.Pprof_T_locInfo.T_locInfo>();
            x.__defaultValue__ = () -> ({} : stdgo._internal.runtime.pprof.Pprof_T_locInfo.T_locInfo);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoUIntptr, stdgo._internal.runtime.pprof.Pprof_T_locInfo.T_locInfo>), _funcs : ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoInt>();
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>) } : stdgo._internal.runtime.pprof.Pprof_T_profileBuilder.T_profileBuilder)) : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profileBuilder.T_profileBuilder>);
        @:check2r _b._readMapping();
        return _b;
    }
