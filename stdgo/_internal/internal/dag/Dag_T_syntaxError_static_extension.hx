package stdgo._internal.internal.dag;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strings.Strings;
import stdgo._internal.sort.Sort;
@:keep @:allow(stdgo._internal.internal.dag.Dag.T_syntaxError_asInterface) class T_syntaxError_static_extension {
    @:keep
    @:tdfield
    static public function error( _e:stdgo._internal.internal.dag.Dag_T_syntaxError.T_syntaxError):stdgo.GoString {
        @:recv var _e:stdgo._internal.internal.dag.Dag_T_syntaxError.T_syntaxError = _e;
        return (_e : stdgo.GoString)?.__copy__();
    }
}
