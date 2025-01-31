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
@:keep @:allow(stdgo._internal.runtime.pprof.Pprof.T_labelMap_asInterface) class T_labelMap_static_extension {
    @:keep
    @:tdfield
    static public function string( _l:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_labelMap.T_labelMap>):stdgo.GoString {
        @:recv var _l:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_labelMap.T_labelMap> = _l;
        if ((_l == null || (_l : Dynamic).__nil__)) {
            return stdgo.Go.str()?.__copy__();
        };
        var _keyVals = (new stdgo.Slice<stdgo.GoString>((0 : stdgo.GoInt).toBasic(), ((_l : stdgo._internal.runtime.pprof.Pprof_T_labelMap.T_labelMap).length)).__setString__() : stdgo.Slice<stdgo.GoString>);
        for (_k => _v in (_l : stdgo._internal.runtime.pprof.Pprof_T_labelMap.T_labelMap)) {
            _keyVals = (_keyVals.__append__(stdgo._internal.fmt.Fmt_sprintf.sprintf(("%q:%q" : stdgo.GoString), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_v))?.__copy__()));
        };
        stdgo._internal.sort.Sort_strings.strings(_keyVals);
        return ((("{" : stdgo.GoString) + stdgo._internal.strings.Strings_join.join(_keyVals, (", " : stdgo.GoString))?.__copy__() : stdgo.GoString) + ("}" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
