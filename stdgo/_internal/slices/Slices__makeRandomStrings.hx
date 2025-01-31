package stdgo._internal.slices;
import stdgo._internal.math.Math;
import stdgo._internal.cmp.Cmp;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.strings.Strings;
import stdgo._internal.internal.testenv.Testenv;
import stdgo._internal.testing.Testing;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
function _makeRandomStrings(_n:stdgo.GoInt):stdgo.Slice<stdgo.GoString> {
        stdgo._internal.math.rand.Rand_seed.seed((42i64 : stdgo.GoInt64));
        var _letters = (("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ" : stdgo.GoString) : stdgo.Slice<stdgo.GoInt32>);
        var _ss = (new stdgo.Slice<stdgo.GoString>((_n : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _n : Bool)) {
                var _sb:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder);
var _slen = ((2 : stdgo.GoInt) + stdgo._internal.math.rand.Rand_intn.intn((50 : stdgo.GoInt)) : stdgo.GoInt);
{
                    var _j = (0 : stdgo.GoInt);
                    while ((_j < _slen : Bool)) {
                        @:check2 _sb.writeRune(_letters[(stdgo._internal.math.rand.Rand_intn.intn((_letters.length)) : stdgo.GoInt)]);
                        _j++;
                    };
                };
_ss[(_i : stdgo.GoInt)] = (@:check2 _sb.string() : stdgo.GoString).__copy__();
                _i++;
            };
        };
        return _ss;
    }
