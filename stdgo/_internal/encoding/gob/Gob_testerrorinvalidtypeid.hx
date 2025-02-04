package stdgo._internal.encoding.gob;
function testErrorInvalidTypeId(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _data = (new stdgo.Slice<stdgo.GoUInt8>(4, 4, ...[(1 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (1 : stdgo.GoUInt8), (0 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _d = stdgo._internal.encoding.gob.Gob_newdecoder.newDecoder(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newreader.newReader(_data)));
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (2 : stdgo.GoInt) : Bool)) {
                var _foo:stdgo._internal.encoding.gob.Gob_t_emptystruct.T_emptyStruct = ({} : stdgo._internal.encoding.gob.Gob_t_emptystruct.T_emptyStruct);
var _err = (@:check2r _d.decode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_foo) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_emptystruct.T_emptyStruct>)))) : stdgo.Error);
if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.encoding.gob.Gob__errbadtype._errBadType))) {
                    @:check2r _t.fatalf(("decode: expected %s, got %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.encoding.gob.Gob__errbadtype._errBadType), stdgo.Go.toInterface(_err));
                };
                _i++;
            };
        };
    }
