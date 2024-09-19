package _internal.math.rand_test;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
function example():Void {
        var _answers = (new stdgo.Slice<stdgo.GoString>(20, 20, ...[
("It is certain" : stdgo.GoString),
("It is decidedly so" : stdgo.GoString),
("Without a doubt" : stdgo.GoString),
("Yes definitely" : stdgo.GoString),
("You may rely on it" : stdgo.GoString),
("As I see it yes" : stdgo.GoString),
("Most likely" : stdgo.GoString),
("Outlook good" : stdgo.GoString),
("Yes" : stdgo.GoString),
("Signs point to yes" : stdgo.GoString),
("Reply hazy try again" : stdgo.GoString),
("Ask again later" : stdgo.GoString),
("Better not tell you now" : stdgo.GoString),
("Cannot predict now" : stdgo.GoString),
("Concentrate and ask again" : stdgo.GoString),
("Don\'t count on it" : stdgo.GoString),
("My reply is no" : stdgo.GoString),
("My sources say no" : stdgo.GoString),
("Outlook not so good" : stdgo.GoString),
("Very doubtful" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("Magic 8-Ball says:" : stdgo.GoString)), stdgo.Go.toInterface(_answers[(stdgo._internal.math.rand.Rand_intn.intn((_answers.length)) : stdgo.GoInt)]));
    }
