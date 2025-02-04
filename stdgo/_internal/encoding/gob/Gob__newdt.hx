package stdgo._internal.encoding.gob;
function _newDT():stdgo._internal.encoding.gob.Gob_dt.DT {
        var _dt:stdgo._internal.encoding.gob.Gob_dt.DT = ({} : stdgo._internal.encoding.gob.Gob_dt.DT);
        _dt.a = (17 : stdgo.GoInt);
        _dt.b = ("hello" : stdgo.GoString);
        _dt.c = (3.14159 : stdgo.GoFloat64);
        _dt.i = stdgo.Go.toInterface((271828 : stdgo.GoInt));
        _dt.j = stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.encoding.gob.Gob_onthefly.OnTheFly((3 : stdgo.GoInt)) : stdgo._internal.encoding.gob.Gob_onthefly.OnTheFly)));
        _dt.i_nil = (null : stdgo.AnyInterface);
        _dt.m = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoInt>();
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            x.set(("one" : stdgo.GoString), (1 : stdgo.GoInt));
x.set(("two" : stdgo.GoString), (2 : stdgo.GoInt));
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>);
        _dt.t = (new stdgo.GoArray<stdgo.GoInt>(3, 3, ...[(11 : stdgo.GoInt), (22 : stdgo.GoInt), (33 : stdgo.GoInt)]).__setNumber32__() : stdgo.GoArray<stdgo.GoInt>)?.__copy__();
        _dt.s = (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("hi" : stdgo.GoString), ("joe" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        return _dt?.__copy__();
    }
