package stdgo._internal.internal.coverage.cformat;
import stdgo._internal.internal.coverage.cmerge.Cmerge;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.sort.Sort;
import stdgo._internal.text.tabwriter.Tabwriter;
function newFormatter(_cm:stdgo._internal.internal.coverage.Coverage_CounterMode.CounterMode):stdgo.Ref<stdgo._internal.internal.coverage.cformat.Cformat_Formatter.Formatter> {
        return (stdgo.Go.setRef(({ _pm : (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo._internal.internal.coverage.cformat.Cformat_T_pstate.T_pstate>>();
            x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.internal.coverage.cformat.Cformat_T_pstate.T_pstate>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.internal.coverage.cformat.Cformat_T_pstate.T_pstate>>) : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.internal.coverage.cformat.Cformat_T_pstate.T_pstate>>), _cm : _cm } : stdgo._internal.internal.coverage.cformat.Cformat_Formatter.Formatter)) : stdgo.Ref<stdgo._internal.internal.coverage.cformat.Cformat_Formatter.Formatter>);
    }
