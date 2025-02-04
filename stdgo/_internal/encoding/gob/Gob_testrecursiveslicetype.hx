package stdgo._internal.encoding.gob;
function testRecursiveSliceType(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        {};
        var _r1 = ({
            var s = new stdgo.Slice<stdgo._internal.encoding.gob.Gob_t_testrecursiveslicetype___localname___recursiveslice_8150.T_testRecursiveSliceType___localname___recursiveSlice_8150>(2, 0);
            s[0] = {
                var s = new stdgo.Slice<stdgo._internal.encoding.gob.Gob_t_testrecursiveslicetype___localname___recursiveslice_8150.T_testRecursiveSliceType___localname___recursiveSlice_8150>(1, 0);
                s[0] = null;
                s;
            };
            s[1] = null;
            s;
        } : stdgo._internal.encoding.gob.Gob_t_testrecursiveslicetype___localname___recursiveslice_8150.T_testRecursiveSliceType___localname___recursiveSlice_8150);
        var _r2 = (new stdgo.Slice<stdgo._internal.encoding.gob.Gob_t_testrecursiveslicetype___localname___recursiveslice_8150.T_testRecursiveSliceType___localname___recursiveSlice_8150>((0 : stdgo.GoInt).toBasic(), 0) : stdgo._internal.encoding.gob.Gob_t_testrecursiveslicetype___localname___recursiveslice_8150.T_testRecursiveSliceType___localname___recursiveSlice_8150);
        {
            var _err = (stdgo._internal.encoding.gob.Gob__encanddec._encAndDec(stdgo.Go.toInterface(_r1), stdgo.Go.toInterface((stdgo.Go.setRef(_r2) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_testrecursiveslicetype___localname___recursiveslice_8150.T_testRecursiveSliceType___localname___recursiveSlice_8150>))) : stdgo.Error);
            if (_err != null) {
                @:check2r _t.error(stdgo.Go.toInterface(_err));
            };
        };
    }
