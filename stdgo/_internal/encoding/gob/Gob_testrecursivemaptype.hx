package stdgo._internal.encoding.gob;
function testRecursiveMapType(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        {};
        var _r1 = (({
            final x = new stdgo.GoMap.GoStringMap<stdgo._internal.encoding.gob.Gob_t_testrecursivemaptype___localname___recursivemap_7903.T_testRecursiveMapType___localname___recursiveMap_7903>();
            x.__defaultValue__ = () -> new stdgo._internal.encoding.gob.Gob_t_testrecursivemaptype___localname___recursivemap_7903.T_testRecursiveMapType___localname___recursiveMap_7903();
            x.set(("A" : stdgo.GoString), (({
                final x = new stdgo.GoMap.GoStringMap<stdgo._internal.encoding.gob.Gob_t_testrecursivemaptype___localname___recursivemap_7903.T_testRecursiveMapType___localname___recursiveMap_7903>();
                x.__defaultValue__ = () -> new stdgo._internal.encoding.gob.Gob_t_testrecursivemaptype___localname___recursivemap_7903.T_testRecursiveMapType___localname___recursiveMap_7903();
                x.set(("B" : stdgo.GoString), null);
x.set(("C" : stdgo.GoString), null);
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo._internal.encoding.gob.Gob_t_testrecursivemaptype___localname___recursivemap_7903.T_testRecursiveMapType___localname___recursiveMap_7903>) : stdgo._internal.encoding.gob.Gob_t_testrecursivemaptype___localname___recursivemap_7903.T_testRecursiveMapType___localname___recursiveMap_7903));
x.set(("D" : stdgo.GoString), null);
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo._internal.encoding.gob.Gob_t_testrecursivemaptype___localname___recursivemap_7903.T_testRecursiveMapType___localname___recursiveMap_7903>) : stdgo._internal.encoding.gob.Gob_t_testrecursivemaptype___localname___recursivemap_7903.T_testRecursiveMapType___localname___recursiveMap_7903);
        var _r2 = ((({
            final x = new stdgo.GoMap.GoStringMap<stdgo._internal.encoding.gob.Gob_t_testrecursivemaptype___localname___recursivemap_7903.T_testRecursiveMapType___localname___recursiveMap_7903>();
            x.__defaultValue__ = () -> new stdgo._internal.encoding.gob.Gob_t_testrecursivemaptype___localname___recursivemap_7903.T_testRecursiveMapType___localname___recursiveMap_7903();
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo._internal.encoding.gob.Gob_t_testrecursivemaptype___localname___recursivemap_7903.T_testRecursiveMapType___localname___recursiveMap_7903>) : stdgo._internal.encoding.gob.Gob_t_testrecursivemaptype___localname___recursivemap_7903.T_testRecursiveMapType___localname___recursiveMap_7903) : stdgo._internal.encoding.gob.Gob_t_testrecursivemaptype___localname___recursivemap_7903.T_testRecursiveMapType___localname___recursiveMap_7903);
        {
            var _err = (stdgo._internal.encoding.gob.Gob__encanddec._encAndDec(stdgo.Go.toInterface(_r1), stdgo.Go.toInterface((stdgo.Go.setRef(_r2) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_testrecursivemaptype___localname___recursivemap_7903.T_testRecursiveMapType___localname___recursiveMap_7903>))) : stdgo.Error);
            if (_err != null) {
                @:check2r _t.error(stdgo.Go.toInterface(_err));
            };
        };
    }
