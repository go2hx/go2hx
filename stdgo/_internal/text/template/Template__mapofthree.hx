package stdgo._internal.text.template;
function _mapOfThree():stdgo.AnyInterface {
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L774"
        return stdgo.Go.toInterface(({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoInt>();
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            x.set(("three" : stdgo.GoString), (3 : stdgo.GoInt));
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>));
    }
