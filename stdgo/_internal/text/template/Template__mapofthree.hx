package stdgo._internal.text.template;
function _mapOfThree():stdgo.AnyInterface {
        return stdgo.Go.toInterface(({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoInt>();
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            x.set(("three" : stdgo.GoString), (3 : stdgo.GoInt));
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>));
    }
