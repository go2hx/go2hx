package stdgo._internal.encoding.gob;
var _singletons : stdgo.Slice<stdgo.AnyInterface> = (new stdgo.Slice<stdgo.AnyInterface>(8, 8, ...[stdgo.Go.toInterface(true), stdgo.Go.toInterface((7 : stdgo.GoInt)), stdgo.Go.toInterface((10u32 : stdgo.GoUInt)), stdgo.Go.toInterface((3.2 : stdgo.GoFloat64)), stdgo.Go.toInterface(("hello" : stdgo.GoString)), stdgo.Go.toInterface((new stdgo.GoArray<stdgo.GoInt>(3, 3, ...[(11 : stdgo.GoInt), (22 : stdgo.GoInt), (33 : stdgo.GoInt)]).__setNumber32__() : stdgo.GoArray<stdgo.GoInt>)), stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoFloat32>(3, 3, ...[(0.5 : stdgo.GoFloat64), (0.25 : stdgo.GoFloat64), (0.125 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat32>)), stdgo.Go.toInterface(({
        final x = new stdgo.GoMap.GoStringMap<stdgo.GoInt>();
        x.__defaultValue__ = () -> (0 : stdgo.GoInt);
        x.set(("one" : stdgo.GoString), (1 : stdgo.GoInt));
x.set(("two" : stdgo.GoString), (2 : stdgo.GoInt));
        x;
    } : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>))]) : stdgo.Slice<stdgo.AnyInterface>);
