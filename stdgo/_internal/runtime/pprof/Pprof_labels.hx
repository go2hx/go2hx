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
function labels(_args:haxe.Rest<stdgo.GoString>):stdgo._internal.runtime.pprof.Pprof_LabelSet.LabelSet {
        var _args = new stdgo.Slice<stdgo.GoString>(_args.length, 0, ..._args);
        if (((_args.length) % (2 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
            throw stdgo.Go.toInterface(("uneven number of arguments to pprof.Labels" : stdgo.GoString));
        };
        var _list = (new stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_label.T_label>((0 : stdgo.GoInt).toBasic(), ((_args.length) / (2 : stdgo.GoInt) : stdgo.GoInt), ...[for (i in 0 ... ((0 : stdgo.GoInt).toBasic() > ((_args.length) / (2 : stdgo.GoInt) : stdgo.GoInt) ? (0 : stdgo.GoInt).toBasic() : ((_args.length) / (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.pprof.Pprof_T_label.T_label)]) : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_label.T_label>);
        {
            var _i = (0 : stdgo.GoInt);
            while (((_i + (1 : stdgo.GoInt) : stdgo.GoInt) < (_args.length) : Bool)) {
                _list = (_list.__append__(({ _key : _args[(_i : stdgo.GoInt)].__copy__(), _value : _args[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)].__copy__() } : stdgo._internal.runtime.pprof.Pprof_T_label.T_label)));
                _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
            };
        };
        return ({ _list : _list } : stdgo._internal.runtime.pprof.Pprof_LabelSet.LabelSet);
    }
