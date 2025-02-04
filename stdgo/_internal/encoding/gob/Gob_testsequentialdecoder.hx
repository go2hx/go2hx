package stdgo._internal.encoding.gob;
function testSequentialDecoder(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        var _enc = stdgo._internal.encoding.gob.Gob_newencoder.newEncoder(stdgo.Go.asInterface(_b));
        {};
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (10 : stdgo.GoInt) : Bool)) {
                var _s = (stdgo._internal.fmt.Fmt_sprintf.sprintf(("%d" : stdgo.GoString), stdgo.Go.toInterface(_i)).__copy__() : stdgo.GoString);
{
                    var _err = (@:check2r _enc.encode(stdgo.Go.toInterface(_s)) : stdgo.Error);
                    if (_err != null) {
                        @:check2r _t.error(stdgo.Go.toInterface(("encoder fail:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
                    };
                };
                _i++;
            };
        };
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (10 : stdgo.GoInt) : Bool)) {
                var _dec = stdgo._internal.encoding.gob.Gob_newdecoder.newDecoder(stdgo.Go.asInterface(_b));
var _s:stdgo.GoString = ("" : stdgo.GoString);
var _s__pointer__ = stdgo.Go.pointer(_s);
var _s__pointer__ = stdgo.Go.pointer(_s);
var _s__pointer__ = stdgo.Go.pointer(_s);
var _s__pointer__ = stdgo.Go.pointer(_s);
{
                    var _err = (@:check2r _dec.decode(stdgo.Go.toInterface(_s__pointer__)) : stdgo.Error);
                    if (_err != null) {
                        @:check2r _t.fatal(stdgo.Go.toInterface(("decoder fail:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
                    };
                };
if (_s != (stdgo._internal.fmt.Fmt_sprintf.sprintf((("%d" : stdgo.GoString) : stdgo.GoString), stdgo.Go.toInterface(_i)))) {
                    @:check2r _t.fatalf(("decode expected %d got %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_s));
                };
                _i++;
            };
        };
    }
