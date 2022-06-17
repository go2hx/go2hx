package stdgo.crypto.des;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
var _initialPermutation : GoArray<GoUInt8> = ((new GoArray<GoUInt8>(
((6 : GoUInt8)),
((14 : GoUInt8)),
((22 : GoUInt8)),
((30 : GoUInt8)),
((38 : GoUInt8)),
((46 : GoUInt8)),
((54 : GoUInt8)),
((62 : GoUInt8)),
((4 : GoUInt8)),
((12 : GoUInt8)),
((20 : GoUInt8)),
((28 : GoUInt8)),
((36 : GoUInt8)),
((44 : GoUInt8)),
((52 : GoUInt8)),
((60 : GoUInt8)),
((2 : GoUInt8)),
((10 : GoUInt8)),
((18 : GoUInt8)),
((26 : GoUInt8)),
((34 : GoUInt8)),
((42 : GoUInt8)),
((50 : GoUInt8)),
((58 : GoUInt8)),
((0 : GoUInt8)),
((8 : GoUInt8)),
((16 : GoUInt8)),
((24 : GoUInt8)),
((32 : GoUInt8)),
((40 : GoUInt8)),
((48 : GoUInt8)),
((56 : GoUInt8)),
((7 : GoUInt8)),
((15 : GoUInt8)),
((23 : GoUInt8)),
((31 : GoUInt8)),
((39 : GoUInt8)),
((47 : GoUInt8)),
((55 : GoUInt8)),
((63 : GoUInt8)),
((5 : GoUInt8)),
((13 : GoUInt8)),
((21 : GoUInt8)),
((29 : GoUInt8)),
((37 : GoUInt8)),
((45 : GoUInt8)),
((53 : GoUInt8)),
((61 : GoUInt8)),
((3 : GoUInt8)),
((11 : GoUInt8)),
((19 : GoUInt8)),
((27 : GoUInt8)),
((35 : GoUInt8)),
((43 : GoUInt8)),
((51 : GoUInt8)),
((59 : GoUInt8)),
((1 : GoUInt8)),
((9 : GoUInt8)),
((17 : GoUInt8)),
((25 : GoUInt8)),
((33 : GoUInt8)),
((41 : GoUInt8)),
((49 : GoUInt8)),
((57 : GoUInt8))) : GoArray<GoByte>));
var _finalPermutation : GoArray<GoUInt8> = ((new GoArray<GoUInt8>(
((24 : GoUInt8)),
((56 : GoUInt8)),
((16 : GoUInt8)),
((48 : GoUInt8)),
((8 : GoUInt8)),
((40 : GoUInt8)),
((0 : GoUInt8)),
((32 : GoUInt8)),
((25 : GoUInt8)),
((57 : GoUInt8)),
((17 : GoUInt8)),
((49 : GoUInt8)),
((9 : GoUInt8)),
((41 : GoUInt8)),
((1 : GoUInt8)),
((33 : GoUInt8)),
((26 : GoUInt8)),
((58 : GoUInt8)),
((18 : GoUInt8)),
((50 : GoUInt8)),
((10 : GoUInt8)),
((42 : GoUInt8)),
((2 : GoUInt8)),
((34 : GoUInt8)),
((27 : GoUInt8)),
((59 : GoUInt8)),
((19 : GoUInt8)),
((51 : GoUInt8)),
((11 : GoUInt8)),
((43 : GoUInt8)),
((3 : GoUInt8)),
((35 : GoUInt8)),
((28 : GoUInt8)),
((60 : GoUInt8)),
((20 : GoUInt8)),
((52 : GoUInt8)),
((12 : GoUInt8)),
((44 : GoUInt8)),
((4 : GoUInt8)),
((36 : GoUInt8)),
((29 : GoUInt8)),
((61 : GoUInt8)),
((21 : GoUInt8)),
((53 : GoUInt8)),
((13 : GoUInt8)),
((45 : GoUInt8)),
((5 : GoUInt8)),
((37 : GoUInt8)),
((30 : GoUInt8)),
((62 : GoUInt8)),
((22 : GoUInt8)),
((54 : GoUInt8)),
((14 : GoUInt8)),
((46 : GoUInt8)),
((6 : GoUInt8)),
((38 : GoUInt8)),
((31 : GoUInt8)),
((63 : GoUInt8)),
((23 : GoUInt8)),
((55 : GoUInt8)),
((15 : GoUInt8)),
((47 : GoUInt8)),
((7 : GoUInt8)),
((39 : GoUInt8))) : GoArray<GoByte>));
var _expansionFunction : GoArray<GoUInt8> = ((new GoArray<GoUInt8>(
((0 : GoUInt8)),
((31 : GoUInt8)),
((30 : GoUInt8)),
((29 : GoUInt8)),
((28 : GoUInt8)),
((27 : GoUInt8)),
((28 : GoUInt8)),
((27 : GoUInt8)),
((26 : GoUInt8)),
((25 : GoUInt8)),
((24 : GoUInt8)),
((23 : GoUInt8)),
((24 : GoUInt8)),
((23 : GoUInt8)),
((22 : GoUInt8)),
((21 : GoUInt8)),
((20 : GoUInt8)),
((19 : GoUInt8)),
((20 : GoUInt8)),
((19 : GoUInt8)),
((18 : GoUInt8)),
((17 : GoUInt8)),
((16 : GoUInt8)),
((15 : GoUInt8)),
((16 : GoUInt8)),
((15 : GoUInt8)),
((14 : GoUInt8)),
((13 : GoUInt8)),
((12 : GoUInt8)),
((11 : GoUInt8)),
((12 : GoUInt8)),
((11 : GoUInt8)),
((10 : GoUInt8)),
((9 : GoUInt8)),
((8 : GoUInt8)),
((7 : GoUInt8)),
((8 : GoUInt8)),
((7 : GoUInt8)),
((6 : GoUInt8)),
((5 : GoUInt8)),
((4 : GoUInt8)),
((3 : GoUInt8)),
((4 : GoUInt8)),
((3 : GoUInt8)),
((2 : GoUInt8)),
((1 : GoUInt8)),
((0 : GoUInt8)),
((31 : GoUInt8))) : GoArray<GoByte>));
var _permutationFunction : GoArray<GoUInt8> = ((new GoArray<GoUInt8>(
((16 : GoUInt8)),
((25 : GoUInt8)),
((12 : GoUInt8)),
((11 : GoUInt8)),
((3 : GoUInt8)),
((20 : GoUInt8)),
((4 : GoUInt8)),
((15 : GoUInt8)),
((31 : GoUInt8)),
((17 : GoUInt8)),
((9 : GoUInt8)),
((6 : GoUInt8)),
((27 : GoUInt8)),
((14 : GoUInt8)),
((1 : GoUInt8)),
((22 : GoUInt8)),
((30 : GoUInt8)),
((24 : GoUInt8)),
((8 : GoUInt8)),
((18 : GoUInt8)),
((0 : GoUInt8)),
((5 : GoUInt8)),
((29 : GoUInt8)),
((23 : GoUInt8)),
((13 : GoUInt8)),
((19 : GoUInt8)),
((2 : GoUInt8)),
((26 : GoUInt8)),
((10 : GoUInt8)),
((21 : GoUInt8)),
((28 : GoUInt8)),
((7 : GoUInt8))) : GoArray<GoByte>));
var _permutedChoice1 : GoArray<GoUInt8> = ((new GoArray<GoUInt8>(
((7 : GoUInt8)),
((15 : GoUInt8)),
((23 : GoUInt8)),
((31 : GoUInt8)),
((39 : GoUInt8)),
((47 : GoUInt8)),
((55 : GoUInt8)),
((63 : GoUInt8)),
((6 : GoUInt8)),
((14 : GoUInt8)),
((22 : GoUInt8)),
((30 : GoUInt8)),
((38 : GoUInt8)),
((46 : GoUInt8)),
((54 : GoUInt8)),
((62 : GoUInt8)),
((5 : GoUInt8)),
((13 : GoUInt8)),
((21 : GoUInt8)),
((29 : GoUInt8)),
((37 : GoUInt8)),
((45 : GoUInt8)),
((53 : GoUInt8)),
((61 : GoUInt8)),
((4 : GoUInt8)),
((12 : GoUInt8)),
((20 : GoUInt8)),
((28 : GoUInt8)),
((1 : GoUInt8)),
((9 : GoUInt8)),
((17 : GoUInt8)),
((25 : GoUInt8)),
((33 : GoUInt8)),
((41 : GoUInt8)),
((49 : GoUInt8)),
((57 : GoUInt8)),
((2 : GoUInt8)),
((10 : GoUInt8)),
((18 : GoUInt8)),
((26 : GoUInt8)),
((34 : GoUInt8)),
((42 : GoUInt8)),
((50 : GoUInt8)),
((58 : GoUInt8)),
((3 : GoUInt8)),
((11 : GoUInt8)),
((19 : GoUInt8)),
((27 : GoUInt8)),
((35 : GoUInt8)),
((43 : GoUInt8)),
((51 : GoUInt8)),
((59 : GoUInt8)),
((36 : GoUInt8)),
((44 : GoUInt8)),
((52 : GoUInt8)),
((60 : GoUInt8))) : GoArray<GoByte>));
var _permutedChoice2 : GoArray<GoUInt8> = ((new GoArray<GoUInt8>(
((42 : GoUInt8)),
((39 : GoUInt8)),
((45 : GoUInt8)),
((32 : GoUInt8)),
((55 : GoUInt8)),
((51 : GoUInt8)),
((53 : GoUInt8)),
((28 : GoUInt8)),
((41 : GoUInt8)),
((50 : GoUInt8)),
((35 : GoUInt8)),
((46 : GoUInt8)),
((33 : GoUInt8)),
((37 : GoUInt8)),
((44 : GoUInt8)),
((52 : GoUInt8)),
((30 : GoUInt8)),
((48 : GoUInt8)),
((40 : GoUInt8)),
((49 : GoUInt8)),
((29 : GoUInt8)),
((36 : GoUInt8)),
((43 : GoUInt8)),
((54 : GoUInt8)),
((15 : GoUInt8)),
((4 : GoUInt8)),
((25 : GoUInt8)),
((19 : GoUInt8)),
((9 : GoUInt8)),
((1 : GoUInt8)),
((26 : GoUInt8)),
((16 : GoUInt8)),
((5 : GoUInt8)),
((11 : GoUInt8)),
((23 : GoUInt8)),
((8 : GoUInt8)),
((12 : GoUInt8)),
((7 : GoUInt8)),
((17 : GoUInt8)),
((0 : GoUInt8)),
((22 : GoUInt8)),
((3 : GoUInt8)),
((10 : GoUInt8)),
((14 : GoUInt8)),
((6 : GoUInt8)),
((20 : GoUInt8)),
((27 : GoUInt8)),
((24 : GoUInt8))) : GoArray<GoByte>));
var _sBoxes : GoArray<GoArray<GoArray<GoUInt8>>> = ((new GoArray<GoArray<GoArray<GoUInt8>>>(((new GoArray<GoArray<GoUInt8>>(((new GoArray<GoUInt8>(
((14 : GoUInt8)),
((4 : GoUInt8)),
((13 : GoUInt8)),
((1 : GoUInt8)),
((2 : GoUInt8)),
((15 : GoUInt8)),
((11 : GoUInt8)),
((8 : GoUInt8)),
((3 : GoUInt8)),
((10 : GoUInt8)),
((6 : GoUInt8)),
((12 : GoUInt8)),
((5 : GoUInt8)),
((9 : GoUInt8)),
((0 : GoUInt8)),
((7 : GoUInt8))) : GoArray<GoUInt8>)), ((new GoArray<GoUInt8>(
((0 : GoUInt8)),
((15 : GoUInt8)),
((7 : GoUInt8)),
((4 : GoUInt8)),
((14 : GoUInt8)),
((2 : GoUInt8)),
((13 : GoUInt8)),
((1 : GoUInt8)),
((10 : GoUInt8)),
((6 : GoUInt8)),
((12 : GoUInt8)),
((11 : GoUInt8)),
((9 : GoUInt8)),
((5 : GoUInt8)),
((3 : GoUInt8)),
((8 : GoUInt8))) : GoArray<GoUInt8>)), ((new GoArray<GoUInt8>(
((4 : GoUInt8)),
((1 : GoUInt8)),
((14 : GoUInt8)),
((8 : GoUInt8)),
((13 : GoUInt8)),
((6 : GoUInt8)),
((2 : GoUInt8)),
((11 : GoUInt8)),
((15 : GoUInt8)),
((12 : GoUInt8)),
((9 : GoUInt8)),
((7 : GoUInt8)),
((3 : GoUInt8)),
((10 : GoUInt8)),
((5 : GoUInt8)),
((0 : GoUInt8))) : GoArray<GoUInt8>)), ((new GoArray<GoUInt8>(
((15 : GoUInt8)),
((12 : GoUInt8)),
((8 : GoUInt8)),
((2 : GoUInt8)),
((4 : GoUInt8)),
((9 : GoUInt8)),
((1 : GoUInt8)),
((7 : GoUInt8)),
((5 : GoUInt8)),
((11 : GoUInt8)),
((3 : GoUInt8)),
((14 : GoUInt8)),
((10 : GoUInt8)),
((0 : GoUInt8)),
((6 : GoUInt8)),
((13 : GoUInt8))) : GoArray<GoUInt8>))) : GoArray<GoArray<GoUInt8>>)), ((new GoArray<GoArray<GoUInt8>>(((new GoArray<GoUInt8>(
((15 : GoUInt8)),
((1 : GoUInt8)),
((8 : GoUInt8)),
((14 : GoUInt8)),
((6 : GoUInt8)),
((11 : GoUInt8)),
((3 : GoUInt8)),
((4 : GoUInt8)),
((9 : GoUInt8)),
((7 : GoUInt8)),
((2 : GoUInt8)),
((13 : GoUInt8)),
((12 : GoUInt8)),
((0 : GoUInt8)),
((5 : GoUInt8)),
((10 : GoUInt8))) : GoArray<GoUInt8>)), ((new GoArray<GoUInt8>(
((3 : GoUInt8)),
((13 : GoUInt8)),
((4 : GoUInt8)),
((7 : GoUInt8)),
((15 : GoUInt8)),
((2 : GoUInt8)),
((8 : GoUInt8)),
((14 : GoUInt8)),
((12 : GoUInt8)),
((0 : GoUInt8)),
((1 : GoUInt8)),
((10 : GoUInt8)),
((6 : GoUInt8)),
((9 : GoUInt8)),
((11 : GoUInt8)),
((5 : GoUInt8))) : GoArray<GoUInt8>)), ((new GoArray<GoUInt8>(
((0 : GoUInt8)),
((14 : GoUInt8)),
((7 : GoUInt8)),
((11 : GoUInt8)),
((10 : GoUInt8)),
((4 : GoUInt8)),
((13 : GoUInt8)),
((1 : GoUInt8)),
((5 : GoUInt8)),
((8 : GoUInt8)),
((12 : GoUInt8)),
((6 : GoUInt8)),
((9 : GoUInt8)),
((3 : GoUInt8)),
((2 : GoUInt8)),
((15 : GoUInt8))) : GoArray<GoUInt8>)), ((new GoArray<GoUInt8>(
((13 : GoUInt8)),
((8 : GoUInt8)),
((10 : GoUInt8)),
((1 : GoUInt8)),
((3 : GoUInt8)),
((15 : GoUInt8)),
((4 : GoUInt8)),
((2 : GoUInt8)),
((11 : GoUInt8)),
((6 : GoUInt8)),
((7 : GoUInt8)),
((12 : GoUInt8)),
((0 : GoUInt8)),
((5 : GoUInt8)),
((14 : GoUInt8)),
((9 : GoUInt8))) : GoArray<GoUInt8>))) : GoArray<GoArray<GoUInt8>>)), ((new GoArray<GoArray<GoUInt8>>(((new GoArray<GoUInt8>(
((10 : GoUInt8)),
((0 : GoUInt8)),
((9 : GoUInt8)),
((14 : GoUInt8)),
((6 : GoUInt8)),
((3 : GoUInt8)),
((15 : GoUInt8)),
((5 : GoUInt8)),
((1 : GoUInt8)),
((13 : GoUInt8)),
((12 : GoUInt8)),
((7 : GoUInt8)),
((11 : GoUInt8)),
((4 : GoUInt8)),
((2 : GoUInt8)),
((8 : GoUInt8))) : GoArray<GoUInt8>)), ((new GoArray<GoUInt8>(
((13 : GoUInt8)),
((7 : GoUInt8)),
((0 : GoUInt8)),
((9 : GoUInt8)),
((3 : GoUInt8)),
((4 : GoUInt8)),
((6 : GoUInt8)),
((10 : GoUInt8)),
((2 : GoUInt8)),
((8 : GoUInt8)),
((5 : GoUInt8)),
((14 : GoUInt8)),
((12 : GoUInt8)),
((11 : GoUInt8)),
((15 : GoUInt8)),
((1 : GoUInt8))) : GoArray<GoUInt8>)), ((new GoArray<GoUInt8>(
((13 : GoUInt8)),
((6 : GoUInt8)),
((4 : GoUInt8)),
((9 : GoUInt8)),
((8 : GoUInt8)),
((15 : GoUInt8)),
((3 : GoUInt8)),
((0 : GoUInt8)),
((11 : GoUInt8)),
((1 : GoUInt8)),
((2 : GoUInt8)),
((12 : GoUInt8)),
((5 : GoUInt8)),
((10 : GoUInt8)),
((14 : GoUInt8)),
((7 : GoUInt8))) : GoArray<GoUInt8>)), ((new GoArray<GoUInt8>(
((1 : GoUInt8)),
((10 : GoUInt8)),
((13 : GoUInt8)),
((0 : GoUInt8)),
((6 : GoUInt8)),
((9 : GoUInt8)),
((8 : GoUInt8)),
((7 : GoUInt8)),
((4 : GoUInt8)),
((15 : GoUInt8)),
((14 : GoUInt8)),
((3 : GoUInt8)),
((11 : GoUInt8)),
((5 : GoUInt8)),
((2 : GoUInt8)),
((12 : GoUInt8))) : GoArray<GoUInt8>))) : GoArray<GoArray<GoUInt8>>)), ((new GoArray<GoArray<GoUInt8>>(((new GoArray<GoUInt8>(
((7 : GoUInt8)),
((13 : GoUInt8)),
((14 : GoUInt8)),
((3 : GoUInt8)),
((0 : GoUInt8)),
((6 : GoUInt8)),
((9 : GoUInt8)),
((10 : GoUInt8)),
((1 : GoUInt8)),
((2 : GoUInt8)),
((8 : GoUInt8)),
((5 : GoUInt8)),
((11 : GoUInt8)),
((12 : GoUInt8)),
((4 : GoUInt8)),
((15 : GoUInt8))) : GoArray<GoUInt8>)), ((new GoArray<GoUInt8>(
((13 : GoUInt8)),
((8 : GoUInt8)),
((11 : GoUInt8)),
((5 : GoUInt8)),
((6 : GoUInt8)),
((15 : GoUInt8)),
((0 : GoUInt8)),
((3 : GoUInt8)),
((4 : GoUInt8)),
((7 : GoUInt8)),
((2 : GoUInt8)),
((12 : GoUInt8)),
((1 : GoUInt8)),
((10 : GoUInt8)),
((14 : GoUInt8)),
((9 : GoUInt8))) : GoArray<GoUInt8>)), ((new GoArray<GoUInt8>(
((10 : GoUInt8)),
((6 : GoUInt8)),
((9 : GoUInt8)),
((0 : GoUInt8)),
((12 : GoUInt8)),
((11 : GoUInt8)),
((7 : GoUInt8)),
((13 : GoUInt8)),
((15 : GoUInt8)),
((1 : GoUInt8)),
((3 : GoUInt8)),
((14 : GoUInt8)),
((5 : GoUInt8)),
((2 : GoUInt8)),
((8 : GoUInt8)),
((4 : GoUInt8))) : GoArray<GoUInt8>)), ((new GoArray<GoUInt8>(
((3 : GoUInt8)),
((15 : GoUInt8)),
((0 : GoUInt8)),
((6 : GoUInt8)),
((10 : GoUInt8)),
((1 : GoUInt8)),
((13 : GoUInt8)),
((8 : GoUInt8)),
((9 : GoUInt8)),
((4 : GoUInt8)),
((5 : GoUInt8)),
((11 : GoUInt8)),
((12 : GoUInt8)),
((7 : GoUInt8)),
((2 : GoUInt8)),
((14 : GoUInt8))) : GoArray<GoUInt8>))) : GoArray<GoArray<GoUInt8>>)), ((new GoArray<GoArray<GoUInt8>>(((new GoArray<GoUInt8>(
((2 : GoUInt8)),
((12 : GoUInt8)),
((4 : GoUInt8)),
((1 : GoUInt8)),
((7 : GoUInt8)),
((10 : GoUInt8)),
((11 : GoUInt8)),
((6 : GoUInt8)),
((8 : GoUInt8)),
((5 : GoUInt8)),
((3 : GoUInt8)),
((15 : GoUInt8)),
((13 : GoUInt8)),
((0 : GoUInt8)),
((14 : GoUInt8)),
((9 : GoUInt8))) : GoArray<GoUInt8>)), ((new GoArray<GoUInt8>(
((14 : GoUInt8)),
((11 : GoUInt8)),
((2 : GoUInt8)),
((12 : GoUInt8)),
((4 : GoUInt8)),
((7 : GoUInt8)),
((13 : GoUInt8)),
((1 : GoUInt8)),
((5 : GoUInt8)),
((0 : GoUInt8)),
((15 : GoUInt8)),
((10 : GoUInt8)),
((3 : GoUInt8)),
((9 : GoUInt8)),
((8 : GoUInt8)),
((6 : GoUInt8))) : GoArray<GoUInt8>)), ((new GoArray<GoUInt8>(
((4 : GoUInt8)),
((2 : GoUInt8)),
((1 : GoUInt8)),
((11 : GoUInt8)),
((10 : GoUInt8)),
((13 : GoUInt8)),
((7 : GoUInt8)),
((8 : GoUInt8)),
((15 : GoUInt8)),
((9 : GoUInt8)),
((12 : GoUInt8)),
((5 : GoUInt8)),
((6 : GoUInt8)),
((3 : GoUInt8)),
((0 : GoUInt8)),
((14 : GoUInt8))) : GoArray<GoUInt8>)), ((new GoArray<GoUInt8>(
((11 : GoUInt8)),
((8 : GoUInt8)),
((12 : GoUInt8)),
((7 : GoUInt8)),
((1 : GoUInt8)),
((14 : GoUInt8)),
((2 : GoUInt8)),
((13 : GoUInt8)),
((6 : GoUInt8)),
((15 : GoUInt8)),
((0 : GoUInt8)),
((9 : GoUInt8)),
((10 : GoUInt8)),
((4 : GoUInt8)),
((5 : GoUInt8)),
((3 : GoUInt8))) : GoArray<GoUInt8>))) : GoArray<GoArray<GoUInt8>>)), ((new GoArray<GoArray<GoUInt8>>(((new GoArray<GoUInt8>(
((12 : GoUInt8)),
((1 : GoUInt8)),
((10 : GoUInt8)),
((15 : GoUInt8)),
((9 : GoUInt8)),
((2 : GoUInt8)),
((6 : GoUInt8)),
((8 : GoUInt8)),
((0 : GoUInt8)),
((13 : GoUInt8)),
((3 : GoUInt8)),
((4 : GoUInt8)),
((14 : GoUInt8)),
((7 : GoUInt8)),
((5 : GoUInt8)),
((11 : GoUInt8))) : GoArray<GoUInt8>)), ((new GoArray<GoUInt8>(
((10 : GoUInt8)),
((15 : GoUInt8)),
((4 : GoUInt8)),
((2 : GoUInt8)),
((7 : GoUInt8)),
((12 : GoUInt8)),
((9 : GoUInt8)),
((5 : GoUInt8)),
((6 : GoUInt8)),
((1 : GoUInt8)),
((13 : GoUInt8)),
((14 : GoUInt8)),
((0 : GoUInt8)),
((11 : GoUInt8)),
((3 : GoUInt8)),
((8 : GoUInt8))) : GoArray<GoUInt8>)), ((new GoArray<GoUInt8>(
((9 : GoUInt8)),
((14 : GoUInt8)),
((15 : GoUInt8)),
((5 : GoUInt8)),
((2 : GoUInt8)),
((8 : GoUInt8)),
((12 : GoUInt8)),
((3 : GoUInt8)),
((7 : GoUInt8)),
((0 : GoUInt8)),
((4 : GoUInt8)),
((10 : GoUInt8)),
((1 : GoUInt8)),
((13 : GoUInt8)),
((11 : GoUInt8)),
((6 : GoUInt8))) : GoArray<GoUInt8>)), ((new GoArray<GoUInt8>(
((4 : GoUInt8)),
((3 : GoUInt8)),
((2 : GoUInt8)),
((12 : GoUInt8)),
((9 : GoUInt8)),
((5 : GoUInt8)),
((15 : GoUInt8)),
((10 : GoUInt8)),
((11 : GoUInt8)),
((14 : GoUInt8)),
((1 : GoUInt8)),
((7 : GoUInt8)),
((6 : GoUInt8)),
((0 : GoUInt8)),
((8 : GoUInt8)),
((13 : GoUInt8))) : GoArray<GoUInt8>))) : GoArray<GoArray<GoUInt8>>)), ((new GoArray<GoArray<GoUInt8>>(((new GoArray<GoUInt8>(
((4 : GoUInt8)),
((11 : GoUInt8)),
((2 : GoUInt8)),
((14 : GoUInt8)),
((15 : GoUInt8)),
((0 : GoUInt8)),
((8 : GoUInt8)),
((13 : GoUInt8)),
((3 : GoUInt8)),
((12 : GoUInt8)),
((9 : GoUInt8)),
((7 : GoUInt8)),
((5 : GoUInt8)),
((10 : GoUInt8)),
((6 : GoUInt8)),
((1 : GoUInt8))) : GoArray<GoUInt8>)), ((new GoArray<GoUInt8>(
((13 : GoUInt8)),
((0 : GoUInt8)),
((11 : GoUInt8)),
((7 : GoUInt8)),
((4 : GoUInt8)),
((9 : GoUInt8)),
((1 : GoUInt8)),
((10 : GoUInt8)),
((14 : GoUInt8)),
((3 : GoUInt8)),
((5 : GoUInt8)),
((12 : GoUInt8)),
((2 : GoUInt8)),
((15 : GoUInt8)),
((8 : GoUInt8)),
((6 : GoUInt8))) : GoArray<GoUInt8>)), ((new GoArray<GoUInt8>(
((1 : GoUInt8)),
((4 : GoUInt8)),
((11 : GoUInt8)),
((13 : GoUInt8)),
((12 : GoUInt8)),
((3 : GoUInt8)),
((7 : GoUInt8)),
((14 : GoUInt8)),
((10 : GoUInt8)),
((15 : GoUInt8)),
((6 : GoUInt8)),
((8 : GoUInt8)),
((0 : GoUInt8)),
((5 : GoUInt8)),
((9 : GoUInt8)),
((2 : GoUInt8))) : GoArray<GoUInt8>)), ((new GoArray<GoUInt8>(
((6 : GoUInt8)),
((11 : GoUInt8)),
((13 : GoUInt8)),
((8 : GoUInt8)),
((1 : GoUInt8)),
((4 : GoUInt8)),
((10 : GoUInt8)),
((7 : GoUInt8)),
((9 : GoUInt8)),
((5 : GoUInt8)),
((0 : GoUInt8)),
((15 : GoUInt8)),
((14 : GoUInt8)),
((2 : GoUInt8)),
((3 : GoUInt8)),
((12 : GoUInt8))) : GoArray<GoUInt8>))) : GoArray<GoArray<GoUInt8>>)), ((new GoArray<GoArray<GoUInt8>>(((new GoArray<GoUInt8>(
((13 : GoUInt8)),
((2 : GoUInt8)),
((8 : GoUInt8)),
((4 : GoUInt8)),
((6 : GoUInt8)),
((15 : GoUInt8)),
((11 : GoUInt8)),
((1 : GoUInt8)),
((10 : GoUInt8)),
((9 : GoUInt8)),
((3 : GoUInt8)),
((14 : GoUInt8)),
((5 : GoUInt8)),
((0 : GoUInt8)),
((12 : GoUInt8)),
((7 : GoUInt8))) : GoArray<GoUInt8>)), ((new GoArray<GoUInt8>(
((1 : GoUInt8)),
((15 : GoUInt8)),
((13 : GoUInt8)),
((8 : GoUInt8)),
((10 : GoUInt8)),
((3 : GoUInt8)),
((7 : GoUInt8)),
((4 : GoUInt8)),
((12 : GoUInt8)),
((5 : GoUInt8)),
((6 : GoUInt8)),
((11 : GoUInt8)),
((0 : GoUInt8)),
((14 : GoUInt8)),
((9 : GoUInt8)),
((2 : GoUInt8))) : GoArray<GoUInt8>)), ((new GoArray<GoUInt8>(
((7 : GoUInt8)),
((11 : GoUInt8)),
((4 : GoUInt8)),
((1 : GoUInt8)),
((9 : GoUInt8)),
((12 : GoUInt8)),
((14 : GoUInt8)),
((2 : GoUInt8)),
((0 : GoUInt8)),
((6 : GoUInt8)),
((10 : GoUInt8)),
((13 : GoUInt8)),
((15 : GoUInt8)),
((3 : GoUInt8)),
((5 : GoUInt8)),
((8 : GoUInt8))) : GoArray<GoUInt8>)), ((new GoArray<GoUInt8>(
((2 : GoUInt8)),
((1 : GoUInt8)),
((14 : GoUInt8)),
((7 : GoUInt8)),
((4 : GoUInt8)),
((10 : GoUInt8)),
((8 : GoUInt8)),
((13 : GoUInt8)),
((15 : GoUInt8)),
((12 : GoUInt8)),
((9 : GoUInt8)),
((0 : GoUInt8)),
((3 : GoUInt8)),
((5 : GoUInt8)),
((6 : GoUInt8)),
((11 : GoUInt8))) : GoArray<GoUInt8>))) : GoArray<GoArray<GoUInt8>>))) : GoArray<GoArray<GoArray<GoUInt8>>>));
var _ksRotations : GoArray<GoUInt8> = ((new GoArray<GoUInt8>(
((1 : GoUInt8)),
((1 : GoUInt8)),
((2 : GoUInt8)),
((2 : GoUInt8)),
((2 : GoUInt8)),
((2 : GoUInt8)),
((2 : GoUInt8)),
((2 : GoUInt8)),
((1 : GoUInt8)),
((2 : GoUInt8)),
((2 : GoUInt8)),
((2 : GoUInt8)),
((2 : GoUInt8)),
((2 : GoUInt8)),
((2 : GoUInt8)),
((1 : GoUInt8))) : GoArray<GoUInt8>));
var _feistelBox : GoArray<GoArray<GoUInt32>> = new GoArray<GoArray<GoUInt32>>(...[for (i in 0 ... 8) new GoArray<GoUInt32>(...[for (i in 0 ... 64) ((0 : GoUInt32))])]);
var _feistelBoxOnce : stdgo.sync.Sync.Once = new stdgo.sync.Sync.Once();
@:structInit @:using(stdgo.crypto.des.Des.T_desCipher_static_extension) class T_desCipher {
    public var _subkeys : GoArray<GoUInt64> = new GoArray<GoUInt64>(...[for (i in 0 ... 16) ((0 : GoUInt64))]);
    public function new(?_subkeys:GoArray<GoUInt64>) {
        if (_subkeys != null) this._subkeys = _subkeys;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_desCipher(_subkeys);
    }
}
@:structInit @:using(stdgo.crypto.des.Des.T_tripleDESCipher_static_extension) class T_tripleDESCipher {
    public var _cipher1 : T_desCipher = new T_desCipher();
    public var _cipher2 : T_desCipher = new T_desCipher();
    public var _cipher3 : T_desCipher = new T_desCipher();
    public function new(?_cipher1:T_desCipher, ?_cipher2:T_desCipher, ?_cipher3:T_desCipher) {
        if (_cipher1 != null) this._cipher1 = _cipher1;
        if (_cipher2 != null) this._cipher2 = _cipher2;
        if (_cipher3 != null) this._cipher3 = _cipher3;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_tripleDESCipher(_cipher1, _cipher2, _cipher3);
    }
}
@:named @:using(stdgo.crypto.des.Des.KeySizeError_static_extension) typedef KeySizeError = GoInt;
function _cryptBlock(_subkeys:Slice<GoUInt64>, _dst:Slice<GoByte>, _src:Slice<GoByte>, _decrypt:Bool):Void {
        var _b:GoUInt64 = stdgo.encoding.binary.Binary.bigEndian.uint64(_src);
        _b = _permuteInitialBlock(_b);
        var _left:GoUInt32 = (((_b >> ((32 : GoUnTypedInt))) : GoUInt32)), _right:GoUInt32 = ((_b : GoUInt32));
        _left = (_left << ((1 : GoUnTypedInt))) | (_left >> ((31 : GoUnTypedInt)));
        _right = (_right << ((1 : GoUnTypedInt))) | (_right >> ((31 : GoUnTypedInt)));
        if (_decrypt) {
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < ((8 : GoInt)), _i++, {
                    {
                        var __tmp__ = _feistel(_left, _right, (_subkeys != null ? _subkeys[((15 : GoInt)) - (((2 : GoInt)) * _i)] : ((0 : GoUInt64))), (_subkeys != null ? _subkeys[((15 : GoInt)) - ((((2 : GoInt)) * _i) + ((1 : GoInt)))] : ((0 : GoUInt64))));
                        _left = __tmp__._0;
                        _right = __tmp__._1;
                    };
                });
            };
        } else {
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < ((8 : GoInt)), _i++, {
                    {
                        var __tmp__ = _feistel(_left, _right, (_subkeys != null ? _subkeys[((2 : GoInt)) * _i] : ((0 : GoUInt64))), (_subkeys != null ? _subkeys[(((2 : GoInt)) * _i) + ((1 : GoInt))] : ((0 : GoUInt64))));
                        _left = __tmp__._0;
                        _right = __tmp__._1;
                    };
                });
            };
        };
        _left = (_left << ((31 : GoUnTypedInt))) | (_left >> ((1 : GoUnTypedInt)));
        _right = (_right << ((31 : GoUnTypedInt))) | (_right >> ((1 : GoUnTypedInt)));
        var _preOutput:GoUInt64 = (((_right : GoUInt64)) << ((32 : GoUnTypedInt))) | ((_left : GoUInt64));
        stdgo.encoding.binary.Binary.bigEndian.putUint64(_dst, _permuteFinalBlock(_preOutput));
    }
/**
    // Encrypt one block from src into dst, using the subkeys.
**/
function _encryptBlock(_subkeys:Slice<GoUInt64>, _dst:Slice<GoByte>, _src:Slice<GoByte>):Void {
        _cryptBlock(_subkeys, _dst, _src, false);
    }
/**
    // Decrypt one block from src into dst, using the subkeys.
**/
function _decryptBlock(_subkeys:Slice<GoUInt64>, _dst:Slice<GoByte>, _src:Slice<GoByte>):Void {
        _cryptBlock(_subkeys, _dst, _src, true);
    }
/**
    // DES Feistel function. feistelBox must be initialized via
    // feistelBoxOnce.Do(initFeistelBox) first.
**/
function _feistel(_l:GoUInt32, _r:GoUInt32, _k0:GoUInt64, _k1:GoUInt64):{ var _0 : GoUInt32; var _1 : GoUInt32; } {
        var _lout:GoUInt32 = ((0 : GoUInt32)), _rout:GoUInt32 = ((0 : GoUInt32));
        var _t:GoUInt32 = ((0 : GoUInt32));
        _t = _r ^ (((_k0 >> ((32 : GoUnTypedInt))) : GoUInt32));
        _l = _l ^ (((((_feistelBox != null ? _feistelBox[((7 : GoInt))] : new GoArray<GoUInt32>(...[for (i in 0 ... 64) ((0 : GoUInt32))])) != null ? (_feistelBox != null ? _feistelBox[((7 : GoInt))] : new GoArray<GoUInt32>(...[for (i in 0 ... 64) ((0 : GoUInt32))]))[_t & ((63 : GoUInt32))] : ((0 : GoUInt32))) ^ ((_feistelBox != null ? _feistelBox[((5 : GoInt))] : new GoArray<GoUInt32>(...[for (i in 0 ... 64) ((0 : GoUInt32))])) != null ? (_feistelBox != null ? _feistelBox[((5 : GoInt))] : new GoArray<GoUInt32>(...[for (i in 0 ... 64) ((0 : GoUInt32))]))[(_t >> ((8 : GoUnTypedInt))) & ((63 : GoUInt32))] : ((0 : GoUInt32)))) ^ ((_feistelBox != null ? _feistelBox[((3 : GoInt))] : new GoArray<GoUInt32>(...[for (i in 0 ... 64) ((0 : GoUInt32))])) != null ? (_feistelBox != null ? _feistelBox[((3 : GoInt))] : new GoArray<GoUInt32>(...[for (i in 0 ... 64) ((0 : GoUInt32))]))[(_t >> ((16 : GoUnTypedInt))) & ((63 : GoUInt32))] : ((0 : GoUInt32)))) ^ ((_feistelBox != null ? _feistelBox[((1 : GoInt))] : new GoArray<GoUInt32>(...[for (i in 0 ... 64) ((0 : GoUInt32))])) != null ? (_feistelBox != null ? _feistelBox[((1 : GoInt))] : new GoArray<GoUInt32>(...[for (i in 0 ... 64) ((0 : GoUInt32))]))[(_t >> ((24 : GoUnTypedInt))) & ((63 : GoUInt32))] : ((0 : GoUInt32))));
        _t = ((_r << ((28 : GoUnTypedInt))) | (_r >> ((4 : GoUnTypedInt)))) ^ ((_k0 : GoUInt32));
        _l = _l ^ (((((_feistelBox != null ? _feistelBox[((6 : GoInt))] : new GoArray<GoUInt32>(...[for (i in 0 ... 64) ((0 : GoUInt32))])) != null ? (_feistelBox != null ? _feistelBox[((6 : GoInt))] : new GoArray<GoUInt32>(...[for (i in 0 ... 64) ((0 : GoUInt32))]))[(_t) & ((63 : GoUInt32))] : ((0 : GoUInt32))) ^ ((_feistelBox != null ? _feistelBox[((4 : GoInt))] : new GoArray<GoUInt32>(...[for (i in 0 ... 64) ((0 : GoUInt32))])) != null ? (_feistelBox != null ? _feistelBox[((4 : GoInt))] : new GoArray<GoUInt32>(...[for (i in 0 ... 64) ((0 : GoUInt32))]))[(_t >> ((8 : GoUnTypedInt))) & ((63 : GoUInt32))] : ((0 : GoUInt32)))) ^ ((_feistelBox != null ? _feistelBox[((2 : GoInt))] : new GoArray<GoUInt32>(...[for (i in 0 ... 64) ((0 : GoUInt32))])) != null ? (_feistelBox != null ? _feistelBox[((2 : GoInt))] : new GoArray<GoUInt32>(...[for (i in 0 ... 64) ((0 : GoUInt32))]))[(_t >> ((16 : GoUnTypedInt))) & ((63 : GoUInt32))] : ((0 : GoUInt32)))) ^ ((_feistelBox != null ? _feistelBox[((0 : GoInt))] : new GoArray<GoUInt32>(...[for (i in 0 ... 64) ((0 : GoUInt32))])) != null ? (_feistelBox != null ? _feistelBox[((0 : GoInt))] : new GoArray<GoUInt32>(...[for (i in 0 ... 64) ((0 : GoUInt32))]))[(_t >> ((24 : GoUnTypedInt))) & ((63 : GoUInt32))] : ((0 : GoUInt32))));
        _t = _l ^ (((_k1 >> ((32 : GoUnTypedInt))) : GoUInt32));
        _r = _r ^ (((((_feistelBox != null ? _feistelBox[((7 : GoInt))] : new GoArray<GoUInt32>(...[for (i in 0 ... 64) ((0 : GoUInt32))])) != null ? (_feistelBox != null ? _feistelBox[((7 : GoInt))] : new GoArray<GoUInt32>(...[for (i in 0 ... 64) ((0 : GoUInt32))]))[_t & ((63 : GoUInt32))] : ((0 : GoUInt32))) ^ ((_feistelBox != null ? _feistelBox[((5 : GoInt))] : new GoArray<GoUInt32>(...[for (i in 0 ... 64) ((0 : GoUInt32))])) != null ? (_feistelBox != null ? _feistelBox[((5 : GoInt))] : new GoArray<GoUInt32>(...[for (i in 0 ... 64) ((0 : GoUInt32))]))[(_t >> ((8 : GoUnTypedInt))) & ((63 : GoUInt32))] : ((0 : GoUInt32)))) ^ ((_feistelBox != null ? _feistelBox[((3 : GoInt))] : new GoArray<GoUInt32>(...[for (i in 0 ... 64) ((0 : GoUInt32))])) != null ? (_feistelBox != null ? _feistelBox[((3 : GoInt))] : new GoArray<GoUInt32>(...[for (i in 0 ... 64) ((0 : GoUInt32))]))[(_t >> ((16 : GoUnTypedInt))) & ((63 : GoUInt32))] : ((0 : GoUInt32)))) ^ ((_feistelBox != null ? _feistelBox[((1 : GoInt))] : new GoArray<GoUInt32>(...[for (i in 0 ... 64) ((0 : GoUInt32))])) != null ? (_feistelBox != null ? _feistelBox[((1 : GoInt))] : new GoArray<GoUInt32>(...[for (i in 0 ... 64) ((0 : GoUInt32))]))[(_t >> ((24 : GoUnTypedInt))) & ((63 : GoUInt32))] : ((0 : GoUInt32))));
        _t = ((_l << ((28 : GoUnTypedInt))) | (_l >> ((4 : GoUnTypedInt)))) ^ ((_k1 : GoUInt32));
        _r = _r ^ (((((_feistelBox != null ? _feistelBox[((6 : GoInt))] : new GoArray<GoUInt32>(...[for (i in 0 ... 64) ((0 : GoUInt32))])) != null ? (_feistelBox != null ? _feistelBox[((6 : GoInt))] : new GoArray<GoUInt32>(...[for (i in 0 ... 64) ((0 : GoUInt32))]))[(_t) & ((63 : GoUInt32))] : ((0 : GoUInt32))) ^ ((_feistelBox != null ? _feistelBox[((4 : GoInt))] : new GoArray<GoUInt32>(...[for (i in 0 ... 64) ((0 : GoUInt32))])) != null ? (_feistelBox != null ? _feistelBox[((4 : GoInt))] : new GoArray<GoUInt32>(...[for (i in 0 ... 64) ((0 : GoUInt32))]))[(_t >> ((8 : GoUnTypedInt))) & ((63 : GoUInt32))] : ((0 : GoUInt32)))) ^ ((_feistelBox != null ? _feistelBox[((2 : GoInt))] : new GoArray<GoUInt32>(...[for (i in 0 ... 64) ((0 : GoUInt32))])) != null ? (_feistelBox != null ? _feistelBox[((2 : GoInt))] : new GoArray<GoUInt32>(...[for (i in 0 ... 64) ((0 : GoUInt32))]))[(_t >> ((16 : GoUnTypedInt))) & ((63 : GoUInt32))] : ((0 : GoUInt32)))) ^ ((_feistelBox != null ? _feistelBox[((0 : GoInt))] : new GoArray<GoUInt32>(...[for (i in 0 ... 64) ((0 : GoUInt32))])) != null ? (_feistelBox != null ? _feistelBox[((0 : GoInt))] : new GoArray<GoUInt32>(...[for (i in 0 ... 64) ((0 : GoUInt32))]))[(_t >> ((24 : GoUnTypedInt))) & ((63 : GoUInt32))] : ((0 : GoUInt32))));
        return { _0 : _l, _1 : _r };
    }
/**
    // general purpose function to perform DES block permutations
**/
function _permuteBlock(_src:GoUInt64, _permutation:Slice<GoUInt8>):GoUInt64 {
        var _block:GoUInt64 = ((0 : GoUInt64));
        for (_position => _n in _permutation) {
            var _bit:GoUInt64 = (_src >> _n) & ((1 : GoUInt64));
            _block = _block | (_bit << (((((_permutation != null ? _permutation.length : ((0 : GoInt))) - ((1 : GoInt))) - _position) : GoUInt)));
        };
        return _block;
    }
function _initFeistelBox():Void {
        for (_s => _ in _sBoxes) {
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < ((4 : GoInt)), _i++, {
                    {
                        var _j:GoInt = ((0 : GoInt));
                        Go.cfor(_j < ((16 : GoInt)), _j++, {
                            var _f:GoUInt64 = (((((_sBoxes != null ? _sBoxes[_s] : new GoArray<GoArray<GoUInt8>>(...[for (i in 0 ... 4) new GoArray<GoUInt8>(...[for (i in 0 ... 16) ((0 : GoUInt8))])])) != null ? (_sBoxes != null ? _sBoxes[_s] : new GoArray<GoArray<GoUInt8>>(...[for (i in 0 ... 4) new GoArray<GoUInt8>(...[for (i in 0 ... 16) ((0 : GoUInt8))])]))[_i] : new GoArray<GoUInt8>(...[for (i in 0 ... 16) ((0 : GoUInt8))])) != null ? ((_sBoxes != null ? _sBoxes[_s] : new GoArray<GoArray<GoUInt8>>(...[for (i in 0 ... 4) new GoArray<GoUInt8>(...[for (i in 0 ... 16) ((0 : GoUInt8))])])) != null ? (_sBoxes != null ? _sBoxes[_s] : new GoArray<GoArray<GoUInt8>>(...[for (i in 0 ... 4) new GoArray<GoUInt8>(...[for (i in 0 ... 16) ((0 : GoUInt8))])]))[_i] : new GoArray<GoUInt8>(...[for (i in 0 ... 16) ((0 : GoUInt8))]))[_j] : ((0 : GoUInt8))) : GoUInt64)) << (((4 : GoUInt)) * (((7 : GoUInt)) - ((_s : GoUInt))));
                            _f = _permuteBlock(_f, ((_permutationFunction.__slice__(0) : Slice<GoUInt8>)));
                            var _row:GoUInt8 = (((((_i & ((2 : GoInt))) << ((4 : GoUnTypedInt))) | (_i & ((1 : GoInt)))) : GoUInt8));
                            var _col:GoUInt8 = (((_j << ((1 : GoUnTypedInt))) : GoUInt8));
                            var _t:GoUInt8 = _row | _col;
                            _f = (_f << ((1 : GoUnTypedInt))) | (_f >> ((31 : GoUnTypedInt)));
                            if ((_feistelBox != null ? _feistelBox[_s] : new GoArray<GoUInt32>(...[for (i in 0 ... 64) ((0 : GoUInt32))])) != null) (_feistelBox != null ? _feistelBox[_s] : new GoArray<GoUInt32>(...[for (i in 0 ... 64) ((0 : GoUInt32))]))[_t] = ((_f : GoUInt32));
                        });
                    };
                });
            };
        };
    }
/**
    // permuteInitialBlock is equivalent to the permutation defined
    // by initialPermutation.
**/
function _permuteInitialBlock(_block:GoUInt64):GoUInt64 {
        var _b1:GoUInt64 = _block >> ((48 : GoUnTypedInt));
        var _b2:GoUInt64 = _block << ((48 : GoUnTypedInt));
        _block = _block ^ (((_b1 ^ _b2) ^ (_b1 << ((48 : GoUnTypedInt)))) ^ (_b2 >> ((48 : GoUnTypedInt))));
        _b1 = (_block >> ((32 : GoUnTypedInt))) & ((16711935 : GoUInt64));
        _b2 = (_block & (("4278255360" : GoUInt64)));
        _block = _block ^ ((((_b1 << ((32 : GoUnTypedInt))) ^ _b2) ^ (_b1 << ((8 : GoUnTypedInt)))) ^ (_b2 << ((24 : GoUnTypedInt))));
        _b1 = _block & (("1085086035472220160" : GoUInt64));
        _b2 = _block & (("264913582878960" : GoUInt64));
        _block = _block ^ (((_b1 ^ _b2) ^ (_b1 >> ((12 : GoUnTypedInt)))) ^ (_b2 << ((12 : GoUnTypedInt))));
        _b1 = _block & (("3674993371882992384" : GoUInt64));
        _b2 = _block & (("57421771435671756" : GoUInt64));
        _block = _block ^ (((_b1 ^ _b2) ^ (_b1 >> ((6 : GoUnTypedInt)))) ^ (_b2 << ((6 : GoUnTypedInt))));
        _b1 = _block & (("12297829381041378645" : GoUInt64));
        _block = _block ^ ((_b1 ^ (_b1 >> ((33 : GoUnTypedInt)))) ^ (_b1 << ((33 : GoUnTypedInt))));
        return _block;
    }
/**
    // permuteInitialBlock is equivalent to the permutation defined
    // by finalPermutation.
**/
function _permuteFinalBlock(_block:GoUInt64):GoUInt64 {
        var _b1:GoUInt64 = _block & (("12297829381041378645" : GoUInt64));
        _block = _block ^ ((_b1 ^ (_b1 >> ((33 : GoUnTypedInt)))) ^ (_b1 << ((33 : GoUnTypedInt))));
        _b1 = _block & (("3674993371882992384" : GoUInt64));
        var _b2:GoUInt64 = _block & (("57421771435671756" : GoUInt64));
        _block = _block ^ (((_b1 ^ _b2) ^ (_b1 >> ((6 : GoUnTypedInt)))) ^ (_b2 << ((6 : GoUnTypedInt))));
        _b1 = _block & (("1085086035472220160" : GoUInt64));
        _b2 = _block & (("264913582878960" : GoUInt64));
        _block = _block ^ (((_b1 ^ _b2) ^ (_b1 >> ((12 : GoUnTypedInt)))) ^ (_b2 << ((12 : GoUnTypedInt))));
        _b1 = (_block >> ((32 : GoUnTypedInt))) & ((16711935 : GoUInt64));
        _b2 = (_block & (("4278255360" : GoUInt64)));
        _block = _block ^ ((((_b1 << ((32 : GoUnTypedInt))) ^ _b2) ^ (_b1 << ((8 : GoUnTypedInt)))) ^ (_b2 << ((24 : GoUnTypedInt))));
        _b1 = _block >> ((48 : GoUnTypedInt));
        _b2 = _block << ((48 : GoUnTypedInt));
        _block = _block ^ (((_b1 ^ _b2) ^ (_b1 << ((48 : GoUnTypedInt)))) ^ (_b2 >> ((48 : GoUnTypedInt))));
        return _block;
    }
/**
    // creates 16 28-bit blocks rotated according
    // to the rotation schedule
**/
function _ksRotate(_in:GoUInt32):Slice<GoUInt32> {
        var _out:Slice<GoUInt32> = ((null : Slice<GoUInt32>));
        _out = new Slice<GoUInt32>(...[for (i in 0 ... ((((16 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt32))]);
        var _last:GoUInt32 = _in;
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((16 : GoInt)), _i++, {
                var _left:GoUInt32 = (_last << (((4 : GoUInt8)) + (_ksRotations != null ? _ksRotations[_i] : ((0 : GoUInt8))))) >> ((4 : GoUnTypedInt));
                var _right:GoUInt32 = (_last << ((4 : GoUnTypedInt))) >> (((32 : GoUInt8)) - (_ksRotations != null ? _ksRotations[_i] : ((0 : GoUInt8))));
                if (_out != null) _out[_i] = _left | _right;
                _last = (_out != null ? _out[_i] : ((0 : GoUInt32)));
            });
        };
        return _out;
    }
/**
    // Expand 48-bit input to 64-bit, with each 6-bit block padded by extra two bits at the top.
    // By doing so, we can have the input blocks (four bits each), and the key blocks (six bits each) well-aligned without
    // extra shifts/rotations for alignments.
**/
function _unpack(_x:GoUInt64):GoUInt64 {
        var _result:GoUInt64 = ((0 : GoUInt64));
        _result = (((((((((_x >> ((6 : GoUnTypedInt))) & ((255 : GoUInt64))) << ((0 : GoUnTypedInt))) | (((_x >> ((18 : GoUnTypedInt))) & ((255 : GoUInt64))) << ((8 : GoUnTypedInt)))) | (((_x >> ((30 : GoUnTypedInt))) & ((255 : GoUInt64))) << ((16 : GoUnTypedInt)))) | (((_x >> ((42 : GoUnTypedInt))) & ((255 : GoUInt64))) << ((24 : GoUnTypedInt)))) | (((_x >> ((0 : GoUnTypedInt))) & ((255 : GoUInt64))) << ((32 : GoUnTypedInt)))) | (((_x >> ((12 : GoUnTypedInt))) & ((255 : GoUInt64))) << ((40 : GoUnTypedInt)))) | (((_x >> ((24 : GoUnTypedInt))) & ((255 : GoUInt64))) << ((48 : GoUnTypedInt)))) | (((_x >> ((36 : GoUnTypedInt))) & ((255 : GoUInt64))) << ((56 : GoUnTypedInt)));
        return _result;
    }
/**
    // NewCipher creates and returns a new cipher.Block.
**/
function newCipher(_key:Slice<GoByte>):{ var _0 : stdgo.crypto.cipher.Cipher.Block; var _1 : Error; } {
        if ((_key != null ? _key.length : ((0 : GoInt))) != ((8 : GoInt))) {
            return { _0 : ((null : stdgo.crypto.cipher.Cipher.Block)), _1 : {
                final __self__ = new KeySizeError_wrapper((((_key != null ? _key.length : ((0 : GoInt))) : KeySizeError)));
                __self__.error = #if !macro function():GoString return (((_key != null ? _key.length : ((0 : GoInt))) : KeySizeError)).error() #else null #end;
                __self__;
            } };
        };
        var _c = new T_desCipher();
        _c._generateSubkeys(_key);
        return { _0 : _c, _1 : ((null : stdgo.Error)) };
    }
/**
    // NewTripleDESCipher creates and returns a new cipher.Block.
**/
function newTripleDESCipher(_key:Slice<GoByte>):{ var _0 : stdgo.crypto.cipher.Cipher.Block; var _1 : Error; } {
        if ((_key != null ? _key.length : ((0 : GoInt))) != ((24 : GoInt))) {
            return { _0 : ((null : stdgo.crypto.cipher.Cipher.Block)), _1 : {
                final __self__ = new KeySizeError_wrapper((((_key != null ? _key.length : ((0 : GoInt))) : KeySizeError)));
                __self__.error = #if !macro function():GoString return (((_key != null ? _key.length : ((0 : GoInt))) : KeySizeError)).error() #else null #end;
                __self__;
            } };
        };
        var _c = new T_tripleDESCipher();
        _c._cipher1._generateSubkeys(((_key.__slice__(0, ((8 : GoInt))) : Slice<GoUInt8>)));
        _c._cipher2._generateSubkeys(((_key.__slice__(((8 : GoInt)), ((16 : GoInt))) : Slice<GoUInt8>)));
        _c._cipher3._generateSubkeys(((_key.__slice__(((16 : GoInt))) : Slice<GoUInt8>)));
        return { _0 : _c, _1 : ((null : stdgo.Error)) };
    }
@:keep class T_desCipher_static_extension {
    @:keep
    public static function decrypt( _c:T_desCipher, _dst:Slice<GoByte>, _src:Slice<GoByte>):Void {
        if ((_src != null ? _src.length : ((0 : GoInt))) < ((8 : GoInt))) {
            throw Go.toInterface(((("crypto/des: input not full block" : GoString))));
        };
        if ((_dst != null ? _dst.length : ((0 : GoInt))) < ((8 : GoInt))) {
            throw Go.toInterface(((("crypto/des: output not full block" : GoString))));
        };
        if (crypto.internal.subtle.Subtle.inexactOverlap(((_dst.__slice__(0, ((8 : GoInt))) : Slice<GoUInt8>)), ((_src.__slice__(0, ((8 : GoInt))) : Slice<GoUInt8>)))) {
            throw Go.toInterface(((("crypto/des: invalid buffer overlap" : GoString))));
        };
        _decryptBlock(((_c._subkeys.__slice__(0) : Slice<GoUInt64>)), _dst, _src);
    }
    @:keep
    public static function encrypt( _c:T_desCipher, _dst:Slice<GoByte>, _src:Slice<GoByte>):Void {
        if ((_src != null ? _src.length : ((0 : GoInt))) < ((8 : GoInt))) {
            throw Go.toInterface(((("crypto/des: input not full block" : GoString))));
        };
        if ((_dst != null ? _dst.length : ((0 : GoInt))) < ((8 : GoInt))) {
            throw Go.toInterface(((("crypto/des: output not full block" : GoString))));
        };
        if (crypto.internal.subtle.Subtle.inexactOverlap(((_dst.__slice__(0, ((8 : GoInt))) : Slice<GoUInt8>)), ((_src.__slice__(0, ((8 : GoInt))) : Slice<GoUInt8>)))) {
            throw Go.toInterface(((("crypto/des: invalid buffer overlap" : GoString))));
        };
        _encryptBlock(((_c._subkeys.__slice__(0) : Slice<GoUInt64>)), _dst, _src);
    }
    @:keep
    public static function blockSize( _c:T_desCipher):GoInt {
        return ((8 : GoInt));
    }
    /**
        // creates 16 56-bit subkeys from the original key
    **/
    @:keep
    public static function _generateSubkeys( _c:T_desCipher, _keyBytes:Slice<GoByte>):Void {
        _feistelBoxOnce.do_(_initFeistelBox);
        var _key:GoUInt64 = stdgo.encoding.binary.Binary.bigEndian.uint64(_keyBytes);
        var _permutedKey:GoUInt64 = _permuteBlock(_key, ((_permutedChoice1.__slice__(0) : Slice<GoUInt8>)));
        var _leftRotations = _ksRotate((((_permutedKey >> ((28 : GoUnTypedInt))) : GoUInt32)));
        var _rightRotations = _ksRotate((((_permutedKey << ((4 : GoUnTypedInt))) : GoUInt32)) >> ((4 : GoUnTypedInt)));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((16 : GoInt)), _i++, {
                var _pc2Input:GoUInt64 = ((((_leftRotations != null ? _leftRotations[_i] : ((0 : GoUInt32))) : GoUInt64)) << ((28 : GoUnTypedInt))) | (((_rightRotations != null ? _rightRotations[_i] : ((0 : GoUInt32))) : GoUInt64));
                if (_c._subkeys != null) _c._subkeys[_i] = _unpack(_permuteBlock(_pc2Input, ((_permutedChoice2.__slice__(0) : Slice<GoUInt8>))));
            });
        };
    }
}
class T_desCipher_wrapper {
    @:keep
    public var decrypt : (Slice<GoByte>, Slice<GoByte>) -> Void = null;
    @:keep
    public var encrypt : (Slice<GoByte>, Slice<GoByte>) -> Void = null;
    @:keep
    public var blockSize : () -> GoInt = null;
    /**
        // creates 16 56-bit subkeys from the original key
    **/
    @:keep
    public var _generateSubkeys : Slice<GoByte> -> Void = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_desCipher;
}
@:keep class T_tripleDESCipher_static_extension {
    @:keep
    public static function decrypt( _c:T_tripleDESCipher, _dst:Slice<GoByte>, _src:Slice<GoByte>):Void {
        if ((_src != null ? _src.length : ((0 : GoInt))) < ((8 : GoInt))) {
            throw Go.toInterface(((("crypto/des: input not full block" : GoString))));
        };
        if ((_dst != null ? _dst.length : ((0 : GoInt))) < ((8 : GoInt))) {
            throw Go.toInterface(((("crypto/des: output not full block" : GoString))));
        };
        if (crypto.internal.subtle.Subtle.inexactOverlap(((_dst.__slice__(0, ((8 : GoInt))) : Slice<GoUInt8>)), ((_src.__slice__(0, ((8 : GoInt))) : Slice<GoUInt8>)))) {
            throw Go.toInterface(((("crypto/des: invalid buffer overlap" : GoString))));
        };
        var _b:GoUInt64 = stdgo.encoding.binary.Binary.bigEndian.uint64(_src);
        _b = _permuteInitialBlock(_b);
        var _left:GoUInt32 = (((_b >> ((32 : GoUnTypedInt))) : GoUInt32)), _right:GoUInt32 = ((_b : GoUInt32));
        _left = (_left << ((1 : GoUnTypedInt))) | (_left >> ((31 : GoUnTypedInt)));
        _right = (_right << ((1 : GoUnTypedInt))) | (_right >> ((31 : GoUnTypedInt)));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((8 : GoInt)), _i++, {
                {
                    var __tmp__ = _feistel(_left, _right, (_c._cipher3._subkeys != null ? _c._cipher3._subkeys[((15 : GoInt)) - (((2 : GoInt)) * _i)] : ((0 : GoUInt64))), (_c._cipher3._subkeys != null ? _c._cipher3._subkeys[((15 : GoInt)) - ((((2 : GoInt)) * _i) + ((1 : GoInt)))] : ((0 : GoUInt64))));
                    _left = __tmp__._0;
                    _right = __tmp__._1;
                };
            });
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((8 : GoInt)), _i++, {
                {
                    var __tmp__ = _feistel(_right, _left, (_c._cipher2._subkeys != null ? _c._cipher2._subkeys[((2 : GoInt)) * _i] : ((0 : GoUInt64))), (_c._cipher2._subkeys != null ? _c._cipher2._subkeys[(((2 : GoInt)) * _i) + ((1 : GoInt))] : ((0 : GoUInt64))));
                    _right = __tmp__._0;
                    _left = __tmp__._1;
                };
            });
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((8 : GoInt)), _i++, {
                {
                    var __tmp__ = _feistel(_left, _right, (_c._cipher1._subkeys != null ? _c._cipher1._subkeys[((15 : GoInt)) - (((2 : GoInt)) * _i)] : ((0 : GoUInt64))), (_c._cipher1._subkeys != null ? _c._cipher1._subkeys[((15 : GoInt)) - ((((2 : GoInt)) * _i) + ((1 : GoInt)))] : ((0 : GoUInt64))));
                    _left = __tmp__._0;
                    _right = __tmp__._1;
                };
            });
        };
        _left = (_left << ((31 : GoUnTypedInt))) | (_left >> ((1 : GoUnTypedInt)));
        _right = (_right << ((31 : GoUnTypedInt))) | (_right >> ((1 : GoUnTypedInt)));
        var _preOutput:GoUInt64 = (((_right : GoUInt64)) << ((32 : GoUnTypedInt))) | ((_left : GoUInt64));
        stdgo.encoding.binary.Binary.bigEndian.putUint64(_dst, _permuteFinalBlock(_preOutput));
    }
    @:keep
    public static function encrypt( _c:T_tripleDESCipher, _dst:Slice<GoByte>, _src:Slice<GoByte>):Void {
        if ((_src != null ? _src.length : ((0 : GoInt))) < ((8 : GoInt))) {
            throw Go.toInterface(((("crypto/des: input not full block" : GoString))));
        };
        if ((_dst != null ? _dst.length : ((0 : GoInt))) < ((8 : GoInt))) {
            throw Go.toInterface(((("crypto/des: output not full block" : GoString))));
        };
        if (crypto.internal.subtle.Subtle.inexactOverlap(((_dst.__slice__(0, ((8 : GoInt))) : Slice<GoUInt8>)), ((_src.__slice__(0, ((8 : GoInt))) : Slice<GoUInt8>)))) {
            throw Go.toInterface(((("crypto/des: invalid buffer overlap" : GoString))));
        };
        var _b:GoUInt64 = stdgo.encoding.binary.Binary.bigEndian.uint64(_src);
        _b = _permuteInitialBlock(_b);
        var _left:GoUInt32 = (((_b >> ((32 : GoUnTypedInt))) : GoUInt32)), _right:GoUInt32 = ((_b : GoUInt32));
        _left = (_left << ((1 : GoUnTypedInt))) | (_left >> ((31 : GoUnTypedInt)));
        _right = (_right << ((1 : GoUnTypedInt))) | (_right >> ((31 : GoUnTypedInt)));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((8 : GoInt)), _i++, {
                {
                    var __tmp__ = _feistel(_left, _right, (_c._cipher1._subkeys != null ? _c._cipher1._subkeys[((2 : GoInt)) * _i] : ((0 : GoUInt64))), (_c._cipher1._subkeys != null ? _c._cipher1._subkeys[(((2 : GoInt)) * _i) + ((1 : GoInt))] : ((0 : GoUInt64))));
                    _left = __tmp__._0;
                    _right = __tmp__._1;
                };
            });
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((8 : GoInt)), _i++, {
                {
                    var __tmp__ = _feistel(_right, _left, (_c._cipher2._subkeys != null ? _c._cipher2._subkeys[((15 : GoInt)) - (((2 : GoInt)) * _i)] : ((0 : GoUInt64))), (_c._cipher2._subkeys != null ? _c._cipher2._subkeys[((15 : GoInt)) - ((((2 : GoInt)) * _i) + ((1 : GoInt)))] : ((0 : GoUInt64))));
                    _right = __tmp__._0;
                    _left = __tmp__._1;
                };
            });
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((8 : GoInt)), _i++, {
                {
                    var __tmp__ = _feistel(_left, _right, (_c._cipher3._subkeys != null ? _c._cipher3._subkeys[((2 : GoInt)) * _i] : ((0 : GoUInt64))), (_c._cipher3._subkeys != null ? _c._cipher3._subkeys[(((2 : GoInt)) * _i) + ((1 : GoInt))] : ((0 : GoUInt64))));
                    _left = __tmp__._0;
                    _right = __tmp__._1;
                };
            });
        };
        _left = (_left << ((31 : GoUnTypedInt))) | (_left >> ((1 : GoUnTypedInt)));
        _right = (_right << ((31 : GoUnTypedInt))) | (_right >> ((1 : GoUnTypedInt)));
        var _preOutput:GoUInt64 = (((_right : GoUInt64)) << ((32 : GoUnTypedInt))) | ((_left : GoUInt64));
        stdgo.encoding.binary.Binary.bigEndian.putUint64(_dst, _permuteFinalBlock(_preOutput));
    }
    @:keep
    public static function blockSize( _c:T_tripleDESCipher):GoInt {
        return ((8 : GoInt));
    }
}
class T_tripleDESCipher_wrapper {
    @:keep
    public var decrypt : (Slice<GoByte>, Slice<GoByte>) -> Void = null;
    @:keep
    public var encrypt : (Slice<GoByte>, Slice<GoByte>) -> Void = null;
    @:keep
    public var blockSize : () -> GoInt = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_tripleDESCipher;
}
@:keep class KeySizeError_static_extension {
    @:keep
    public static function error( _k:KeySizeError):GoString {
        return ((("crypto/des: invalid key size " : GoString))) + stdgo.strconv.Strconv.itoa(((_k : GoInt)));
    }
}
class KeySizeError_wrapper {
    @:keep
    public var error : () -> GoString = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : KeySizeError;
}
