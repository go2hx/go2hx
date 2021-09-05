import TestAdapterMacro.assert;
import _testadapter.data.TestResults;
import sys.io.File;
import sys.thread.Mutex;

final path = Sys.getCwd();
var results = null;
var testsLeft:Int = 0;
var testsTotal:Int = 0;
var tests:Array<Data> = [];
typedef Data = {args:Array<String>, data:Dynamic};

function main() {
	TestResults.clear(path);
	results = new TestResults(path);
	Main.setup(0, 4);
	Main.onComplete = complete;

	test("go", "./tests/go/test/", goList, [
		"atomicload", // go routine
		"bigalg", // go routine
		"closure", // go routine
		"func5", // go routine

		// select statement or go statement
		"235",
		"closedchan",
		"closure7",
		"convT2X",
		"deferfin",
		"escape",
		"gcgort",
		"goprint",
		"init1",
		"inline",
		"locklinear",
		"nil",
		"range",
		"sieve",
		"stack",
		"struct0",
		"doubleselect",
		"fifo",
		"goroutines",
		"nonblock",
		"powser1",
		"powser2",
		"reorder2",
		"tinyfin",
	], 6 + 8 - 2);

	test("yaegi", "./tests/yaegi/_test/", yaegiList, [
		"chan0", // go routine
		"chan1", // go routine
		"chan10", // go routine
		"chan2", // go routine
		"chan3", // go routine
		"chan8", // go routine
		"chan9", // go routine
		"select2", // go routine

		"assign11", // expect error
		"assign12", // expect error
		"assign15", // expect error
		"bad0", // expect error
		"const9", // expect error
		"export1", // non main package
		"export0", // non main package
		"for7", // expect error
		"fun21", // expect error
		"fun22", // expect error
		"fun23", // expect error
		"fun24", // expect error
		"fun25", // expect error
		"if2", // expect error
		"import6", // expect error
		"init1", // expect error
		"io0", // uses random number
		"issue-1093", // expect error
		"op1", // expect error
		"op7", // expect error
		"op9", // expect error
		"bltn0", // expect error
		"method16", // private struct field
		"switch8", // expect error
		"switch9", // expect error
		"switch13", // expect error
		"switch19", // expect error
		"time0", // display time (similar to random number)
		"factor", // benchmark
		"fib", // benchmark

		"type5", // limitation with no workaround
		"type6", // limitation with no workaround

		"redeclaration0", // expect error
		"redeclaration1", // expect error
		"redeclaration2", // expect error
		"redeclaration3", // expect error
		"redeclaration4", // expect error
		"redeclaration5", // expect error
		"redeclaration-global0", // expect error
		"redeclaration-global1", // expect error
		"redeclaration-global2", // expect error
		"redeclaration-global3", // expect error
		"redeclaration-global4", // expect error
		"redeclaration-global5", // expect error
		"redeclaration-global6", // expect error
		"redeclaration-global7", // expect error
		"pkgname0", // has depedencies
		"pkgname1", // expect error
		"pkgname2", // has depedencies
		"ipp_as_key", // has depedencies
		"restricted0", // expect error
		"restricted1", // expect error
		"restricted2", // expect error
		"restricted3", // expect error
		"server6", // syntax parsing
		"server5", // syntax parsing
		"server4", // syntax parsing
		"server3", // syntax parsing
		"server2", // syntax parsing
		"server1a", // syntax parsing
		"server1", // syntax parsing
		"server0", // syntax parsing
		"server", // syntax parsing
		"rand9", // expect error

		"composite6", // invalid import
		"d3", // invalid import
		"eval0", // runs the yaegi interpreter
		"import3", // invalid import
		"import4", // invalid import
		"import5", // invalid import
		"import6", // invalid import
		"import7", // invalid import
		"import8", // invalid import
		"import9", // invalid import
		"inception", // runs the yaegi interpreter
		"tag0", // invalid import
		"var14", // invalid import
		"foo", // invalid import
		"c1", // invalid import
		"c2", // invalid import
		"d2", // invalid import
		"bar", // invalid import
		"bir", // invalid import

		"sieve", // uses go routines and includes 2 infinite for loops inside of go functions
		"defer8", // unimportant map toString ordering

		// select statement or go statement
		"chan4",
		"cli1",
		"cli2",
		"server",
		"select0",
		"select1",
		"select2",
		"select3",
		"select4",
		"select5",
		"select6",
		"select7",
		"select8",
		"select9",
		"select10",
		"select11",
		"select12",
		"select13",
		"select14",
		"select15",
	], 137 + 8 - 2, yaegiOutput);
	while (true) {
		Main.update();
		for (test in tests) {
			var bool = Main.compile(test.args, test.data);
			if (!bool)
				break;
			tests.remove(test);
		}
	}
}

function test(suiteName:String, dir:String, list:Array<String>, skip:Array<String>, offset:Int, compare:Array<{name:String, output:Array<String>}> = null) {
	var count = 0;
	for (i in 0...list.length) {
		final testName = list[i];
		if (skip.contains(testName))
			continue;
		final test = '$dir$testName.go';
		var output:Array<String> = null;
		if (compare != null) {
			for (i in 0...compare.length) {
				if (compare[i].name == testName) {
					output = compare[i].output;
					break;
				}
			}
			if (output.length == 0)
				throw "output not found for test name: " + testName;
		}
		count++;
		tests.push({
			args: [test, path],
			data: {
				suiteName: suiteName,
				testName: testName,
				offset: i + offset,
				compare: output,
			},
		});
		testsTotal++;
		testsLeft++;
	}
	Sys.println(suiteName + ": " + count + " queued");
}

private function close() {
	final debug = false;
	if (!debug) {
		results.save();
		// run TestData script
		TestData.main();
	}
	Main.close();
}

private function complete(modules, data) {
	if (modules.length == 0) {
		trace(data);
		trace("make sure to have go and yaegi cloned inside the tests dir for test suite access");
		throw test;
	}
	final path = Util.modulePath(modules[0]);
	final command = 'haxe -cp golibs --interp -D test extraParams.hxml -main $path';
	var proc = new sys.io.Process(command);
	var code:Null<Int> = null;
	var timer = new haxe.Timer(30);
	var count = 0;
	timer.run = () -> {
		code = proc.exitCode(false);
		count++;
		if (code != null || count > 400) {
			if (code == null) {
				Sys.println("timeout... " + count);
			}
			--testsLeft;
			var result = code == 0 ? "true" : "false" + " " + code;
			if (code == 0 && data.compare != null) {
				var fail = false;
				for (i in 0...data.compare.length) {
					try {
						final line = proc.stdout.readLine();
						if (line == data.compare[i])
							continue;
					} catch (_) {}
					fail = true;
					break;
				}
				if (fail) {
					code = 3000;
					result = "naive";
				}
			}
			if (code == 2) {
				while (true) {
					try {
						Sys.println(proc.stderr.readLine());
					} catch (_) {
						break;
					}
				}
			}
			final current = testsTotal - testsLeft;
			var name = data.testName;
			name = StringTools.rpad(name, " ", 20);
			result = StringTools.rpad(result, " ", 9);
			Sys.println('$name $result $current/$testsTotal');
			var message = command;
			if (result == "naive") {
				message += "\n" + data.compare.join("\n");
			}
			assert(data.suiteName, data.testName, code == 0, data.offset, message);
			proc.close();
			timer.stop();
			if (testsLeft == 0) {
				close();
			}
		}
	};
}

// @formatter:off
final goList = [
    "235", // Haxe classes must start with letter charachter
    "64bit", // Haxe classes must start with letter charachter
    "alias1",
    "align",
    "append",
    "armimm",
    "atomicload", // go routines
    "bigalg", // go routines
    "bigmap",
    "blank",
    "bom",
    "chancap", //need to include more of chans built in functions for use by named types (get,set) (TODO)
    "char_lit",
    "clearfat", // not found: stdgo.Buffer.writeString
    "closedchan", // need to include more of chans built in functions for use by named types (get,set)
    "closure", // go routines
    "closure1",
    "closure2",
    "closure4",
    "closure7",
    "cmp", // local interfaces implement global, x.__underlying__() == y.__underlying__() interface equality
    "complit", // uses pointer.isNil() 
    "compos",
    "const", // equality comparison of AnyInterface and GoInt not implemented yet
    "const3", // fmt formatter
    "const4", // get length/cap selection through pointer
    "const7",  // not found: stdgo.Buffer
    "convert", // binary operations between number and named number type
    "convert4",
    "convT2X",
    "copy",
    "crlf",
    "ddd",
    "decl",
    "defer",
    "deferfin",
    "defernil",
    "deferprint",
    "divide",
    "divmod",
    "env",
    "escape",
    "escape3",
    "finprofiled",
    "floatcmp",
    "float_lit",
    "float_lit2",
    "for",
    "func",
    "func5", // go routine
    "func6",
    "func7",
    "func8",
    "gc",
    "gc1",
    "gcgort",
    "gcstring",
    "goprint",
    "heapsampling",
    "helloworld",
    "if",
    "indirect",
    "init1",
    "initcomma",
    "initempty",
    "initialize",
    "inline_literal",
    "intcvt",
    "int_lit",
    "iota",
    "literal",
    "literal2",
    "locklinear",
    "makeslice",
    "mallocfin",
    "map",
    "mapclear",
    "mergemul",
    "method",
    "method3",
    "method5",
    "method7",
    "named",
    "nil",
    "nilptr",
    "nilptr2",
    "nilptr_aix",
    "peano",
    "print",
    "printbig",
    "range",
    "recover",
    "recover1",
    "recover2",
    "recover3",
    "reflectmethod1",
    "reflectmethod2",
    "reflectmethod3",
    "reflectmethod4",
    "reflectmethod5",
    "reflectmethod6",
    "reflectmethod7",
    "rename",
    "reorder",
    "reorder2",
    "simassign",
    "sizeof",
    "slice3",
    "slicecap",
    "stack",
    "stackobj",
    "stackobj2",
    "stackobj3",
    "strcopy",
    "strength",
    "stringrange",
    "string_lit",
    "struct0",
    "switch",
    "tinyfin",
    "turing",
    "typeswitch",
    "typeswitch1",
    "uintptrescapes3",
    "unsafebuiltins",
    "utf",
    "varinit",
    "winbatch",
    "zerodivide",
];
final yaegiList = [
    "a1",
    "a10",
    "a11",
    "a12",
    "a13",
    "a14",
    "a15",
    "a16",
    "a17",
    "a18",
    "a19",
    "a2",
    "a20",
    "a21",
    "a22",
    "a23",
    "a24",
    "a25",
    "a26",
    "a27",
    "a28",
    "a29",
    "a3",
    "a30",
    "a31",
    "a32",
    "a33",
    "a34",
    "a35",
    "a36",
    "a37",
    "a38",
    "a39",
    "a4",
    "a40",
    "a41",
    "a42", // not found: stdgo.encoding.Binary.littleEndian.putUint64
    "a43",
    "a44",
    "a5",
    "a6",
    "a7",
    "a8",
    "a9",
    "add0",
    "add1",
    "add2",
    "addr0", // not found: stdgo.net.Http
    "addr1",
    "addr2", // not found: stdgo.encoding.Xml
    "addr3", 
    "addr4", // not found: stdgo.encoding.Json
    "addr5", // not found: stdgo.net.Url
    "alias0",
    "alias1",
    "and",
    "and0",
    "and1",
    "and2",
    "and3",
    "append0",
    "append1", // not found: stdgo.Bufio.NewScanner
    "append2", // not found: stdgo.Bufio.NewScanner
    "append3",
    "append4",
    "assert0", // not found: stdgo.Time
    "assert1", // not found: stdgo.Time
    "assign",
    "assign0", // not found: stdgo.net.Http
    "assign1",
    "assign10",
    "assign13",
    "assign14",
    "assign16",
    "assign2",
    "assign3",
    "assign4",
    "assign5",
    "assign6",
    "assign7",
    "assign8",
    "assign9",
    "bin",
    "bin0",
    "bin1", // not found: stdgo.Hash
    "bin2",
    "bin3",
    "bin5",  // not found: stdgo.Net.TCPAddr
    "binstruct_ptr_map0", // not found: stdgo.Image
    "binstruct_ptr_slice0", // not found: stdgo.Image
    "binstruct_slice0", // not found: stdgo.Image
    "bltn",
    "bool",
    "bool0",
    "bool1",
    "bool2",
    "bool3",
    "bool4",
    "bool5",
    "cap0",
    "chan0", // go routines
    "chan1", // go routines
    "chan10", // go routines
    "chan2", // go routines
    "chan3", // go routines
    "chan4",
    "chan7",
    "chan8", // go routines
    "chan9", // go routines
    "cli1", // not found: stdgo.net
    "cli2", // not found: stdgo.net
    "cli3", // not found: stdgo.net
    "cli4", // not found: stdgo.net
    "cli5", // not found: stdgo.net
    "cli6", // not found: stdgo.net
    "closure0",
    "closure1",
    "closure10",
    "closure11",
    "closure12",
    "closure2",
    "closure3",
    "closure4",
    "closure5",
    "closure6",
    "closure7",
    "closure8",
    "closure9",
    "comp0",
    "comp1",
    "comp2",
    "complex0",
    "complex1",
    "complex2",
    "complex3",
    "complex4",
    "composite0",
    "composite1",
    "composite10",
    "composite11", // type not found: stdgo.image.color.Color
    "composite12",
    "composite13",
    "composite14",
    "composite15",
    "composite16", // not found: stdgo.net.url.Url
    "composite17", // not found: stdgo.html.template.Template
    "composite2",
    "composite3",
    "composite4",
    "composite5",
    "composite6",
    "composite7",
    "composite8",
    "composite8bis",
    "composite9",
    "const0",
    "const1",
    "const10",
    "const11",
    "const12", // stdgo.GoInt64 should be command_line_arguments.Kind
    "const13", // missing expression inside a checkTypeExpr, constant to big of a number
    "const14", // not found: stdgo.compress.flate.Flate
    "const15", // stdgo.GoInt8 should be Null<command_line_arguments._T1>
    "const16",
    "const17",
    "const18", // not found: time.Time
    "const19", // not found: time.Time
    "const2",
    "const20", // int64(int(^uint(0) >> 1)) = -1 should be 9223372036854775807
    "const21",
    "const22",
    "const23",
    "const24",
    "const3",
    "const4",
    "const5",
    "const6",
    "const7",
    "const8",
    "cont",
    "cont0",
    "cont1",
    "context", //not found: context
    "context2", //not found: context
    "convert0", // checkType mistakenly taken as a type named var
    "convert1", // checkType mistakenly taken as a type named var
    "convert2", // not found: bufio.Bufio
    "copy0",
    "copy1",    // stdgo.Pointer<stdgo.GoArray<stdgo.GoInt>> has no field slice
    "copy2",
    "d3",
    "defer0",
    "defer1",
    "defer2",
    "defer3", // not found: stdgo.net.http.Http
    "defer4", // stdgo.sync.Mutex not properly supported
    "defer5",
    "defer6",
    "defer7", // var is restricted name "in"
    "defer8", // map toString results are in reversed order
    "defer9",
    "delete0",
    "eval0",
    "export0",
    "export1",
    "fib0",
    "file_access", // incorrect return tuple names for Ioutil
    "flag0", // invalid generation of flag.Flag
    "for0",
    "for1",
    "for10",
    "for11",
    "for12",
    "for13",
    "for14",
    "for15",
    "for16",
    "for2",
    "for3",
    "for4",
    "for5",
    "for6",
    "for8",
    "for9",
    "fun",
    "fun10",
    "fun11",
    "fun12",
    "fun13",
    "fun14",
    "fun15",
    "fun16",
    "fun17",
    "fun18",
    "fun19",
    "fun2",
    "fun20",
    "fun26", // checkType mistakenly taken as a type named var
    "fun3",
    "fun4",
    "fun5",
    "fun6", // not found: stdgo.sync.Sync.Pool
    "fun7", // import alias not supported and uses flag
    "fun8",
    "fun9",
    "goto0",
    "goto1",
    "heap", // not found: stdgo.container.heap.Heap
    "if",
    "if0",
    "if1",
    "if3",
    "if4",
    "if5",
    "if6",
    "if7",
    "imag0",
    "import0",
    "import1", // import alias not supported
    "import2", // import alias . not supported
    "import3",
    "import4",
    "import5",
    "import7",
    "import8",
    "import9",
    "inc",
    "init0",
    "interface0",
    "interface1",
    "interface10",
    "interface11", // pointer struct -> interface
    "interface12",
    "interface13",
    "interface14", // interfaces are not equal conditional
    "interface15", // interfaces are not equal conditional
    "interface16", // interfaces are not equal conditional
    "interface17",
    "interface18", // interfaces are not equal conditional
    "interface19",
    "interface2", // typeswitch variables assign to what the compiler already know are impossible casts, either delete those entries or add untyped before var decleration
    "interface20",
    "interface21",
    "interface22", // append argument not getting run through assignTranslate
    "interface23",
    "interface24",
    "interface25",
    "interface26", // append argument not getting run through assignTranslate
    "interface27",
    "interface28",
    "interface29",
    "interface3",
    "interface30",
    "interface31",
    "interface32", // composite literal array arguments not getting run through assignTranslate
    "interface33",
    "interface34", // composite literal array keyValueMap arguments not getting run through assignTranslate
    "interface35",
    "interface36", // don't know
    "interface37",
    "interface38", // stdgo.fmt.Stringer interface does not implement local type
    "interface39", // stdgo.fmt.Stringer interface does not implement local type
    "interface4",  // embedded type does not bring in it's method
    "interface40", // stdgo.fmt.Stringer interface does not implement local type
    "interface41", // stdgo.fmt.Stringer interface does not implement local type
    "interface42", // Basic type tries to checkType to interface{} (TODO)
    "interface43",
    "interface44",
    "interface45", // assign _ = x underline should be as a var or remove left side (TODO) 
    "interface46",
    "interface47", // function type does not use the default unnamed names (v0,v1,v2...)
    "interface48",
    "interface49",
    "interface5", // function arg incorrect modification should be named -> interface instead it operates as if named -> basic
    "interface50",
    "interface51", // embedded method in interface not being typed into the field list
    "interface52", // type not found: stdgo.testing.Testing
    "interface6", // function return incorrect modification should be named -> interface instead it operates as if named -> basic
    "interface7", // function return incorrect modification should be named -> interface instead it operates as if named -> basic
    "interface8", // don't know
    "interface9", // stdgo.fmt.Stringer interface does not implement local type
    "io1",
    "iota",
    "iota0",
    "ioutil",
    "ioutil0",
    "ipp_as_key",
    "issue-1007",
    "issue-1010",
    "issue-1022",
    "issue-1052",
    "issue-1065",
    "issue-1068",
    "issue-1088",
    "issue-1089",
    "issue-1094",
    "issue-1101",
    "issue-1115",
    "issue-1126",
    "issue-1128",
    "issue-1134",
    "issue-1136",
    "issue-1145",
    "issue-1156",
    "issue-1163",
    "issue-1166",
    "issue-1167",
    "issue-1173",
    "issue-1175",
    "issue-1177",
    "issue-1179",
    "issue-1181",
    "issue-1185",
    "issue-1187",
    "issue-1189",
    "issue-1202",
    "issue-1205",
    "issue-1208",
    "issue-558",
    "issue-735",
    "issue-770",
    "issue-772",
    "issue-775",
    "issue-776",
    "issue-782",
    "issue-784",
    "issue-880",
    "issue-981",
    "issue-993",
    "l2",
    "l4",
    "len0",
    "make",
    "make0",
    "make1",
    "make2",
    "map",
    "map10",
    "map11",
    "map12",
    "map13",
    "map14",
    "map15",
    "map16",
    "map17",
    "map18",
    "map19",
    "map2",
    "map20",
    "map21",
    "map22",
    "map23",
    "map24",
    "map25",
    "map26",
    "map27",
    "map28",
    "map29",
    "map3",
    "map30",
    "map4",
    "map5",
    "map6",
    "map7",
    "map8",
    "map9",
    "math0",
    "math1",
    "math2",
    "math3",
    "method",
    "method0",
    "method1",
    "method10",
    "method11",
    "method12",
    "method13",
    "method14",
    "method15",
    "method16",
    "method17",
    "method18",
    "method19",
    "method2",
    "method20",
    "method21",
    "method22",
    "method23",
    "method24",
    "method25",
    "method26",
    "method27",
    "method28",
    "method29",
    "method3",
    "method30",
    "method31",
    "method32",
    "method33",
    "method34",
    "method35",
    "method36",
    "method37",
    "method4",
    "method5",
    "method6",
    "method7",
    "method8",
    "method9",
    "neg0",
    "new0",
    "new1",
    "new2",
    "nil0",
    "nil1",
    "nil2",
    "nil3",
    "not0",
    "not1",
    "not2",
    "num0",
    "op0",
    "op2",
    "op3",
    "op4",
    "op5",
    "op6",
    "op8",
    "opfloat32",
    "opfloat64",
    "opint16",
    "opint32",
    "opint64",
    "opint8",
    "opstring",
    "opuint16",
    "opuint32",
    "opuint64",
    "opuint8",
    "or0",
    "or1",
    "or2",
    "pkgname0",
    "pkgname2",
    "primes",
    "print0",
    "ptr0",
    "ptr1",
    "ptr2",
    "ptr3",
    "ptr4",
    "ptr5",
    "ptr5a",
    "ptr6",
    "ptr7",
    "ptr8",
    "ptr_array0",
    "ptr_array1",
    "ptr_array2",
    "ptr_array3",
    "range0",
    "range1",
    "range2",
    "range3",
    "range4",
    "range5",
    "range6",
    "range7",
    "range8", // not found: time.Time
    "real0",
    "recover0", // print stdgo.runtime._Runtime.RuntimeErrorData properly with a toString() -> this.message()
    "recover1", // print stdgo.runtime._Runtime.RuntimeErrorData properly with a toString() -> this.message()
    "recover2", // assignTranslate attempts to turn the function recover() to an interface
    "recover3", // assignTranslate attempts to turn the function recover() to an interface
    "recover4", // incorrect naming of local var
    "recurse0", // WORKING NOW
    "restricted0",
    "restricted1",
    "restricted2",
    "restricted3",
    "ret1", // incorrect naming of local var
    "ret2",
    "ret3", // print tuple properly
    "ret4",
    "ret5", // invalid field names for destructing with a tuple without names
    "ret6",
    "ret7",
    "ret8", // named type incorrect casting when should stay same for interface
    "run0", // tuple can fill function arguments (TODO)
    "run1", // tuple can fill function arguments (TODO)
    "run10",
    "run11", // print tuple properly
    "run12",
    "run13",
    "run4",
    "run5",
    "run6",
    "run7",
    "run8",
    "run9",
    "rune0",
    "rune1",
    "scope0",
    "scope1",
    "scope2",
    "scope3",
    "scope4",
    "scope5",
    "scope6",
    "scope7",
    "select0", // go routine
    "select1", // go routine
    "select10", // select stmt not implemented fully
    "select11", // select stmt not implemented fully
    "select12",
    "select13", // select stmt not implemented fully
    "select14", // not found: time.Time
    "select15", // go routine
    "select2",
    "select3", // select stmt not implemented fully
    "select4", // go routine
    "select5", // go routine
    "select6",
    "select7", // go routine
    "select8", // go routine
    "select9", // go routine
    "selector-scope0", // time as field name incorrectly pulling import path
    "shift0",
    "shift1", // int64 -> int display type (TODO)
    "shift2",
    "shift3",
    "sieve",
    "slice",
    "str",
    "str0",
    "str1",
    "str2",
    "str3",
    "str4", // not found: stdgo.unicode.utf8.Utf8
    "struct",
    "struct0",
    "struct0a",
    "struct1",
    "struct10",
    "struct11", // type not found: stdgo.net.http.Http
    "struct12",
    "struct13", // type not found: stdgo.net.http.Http
    "struct14", // type not found: stdgo.net.http.Http
    "struct15", // type not found: stdgo.net.http.Http
    "struct16", // embedded field fallback not working
    "struct17", // embedded field fallback not working
    "struct18", // type not found: stdgo.net.http.Http
    "struct19",
    "struct2",
    "struct20",
    "struct21",
    "struct22",
    "struct23", // not found: stdgo.encoding.json.Json
    "struct24",
    "struct25",
    "struct26",
    "struct27",
    "struct28",
    "struct29",
    "struct3",
    "struct30",
    "struct31",
    "struct32",
    "struct33",
    "struct34",
    "struct35",
    "struct36", // type not found: stdgo.net.http.Http
    "struct37", // type not found: stdgo.net.http.Http
    "struct38",
    "struct39", // field name double underscore when should be one
    "struct4",
    "struct40",
    "struct41",
    "struct42",
    "struct43",
    "struct44",
    "struct45", // embedded field fallback not working
    "struct46",
    "struct47",
    "struct48",
    "struct49",
    "struct5",
    "struct50",
    "struct51", // not found: stdgo.encoding.json.Json
    "struct52",
    "struct53",
    "struct55", // not found: stdgo.log.Log.Logger
    "struct56", // invalid json result
    "struct57", // invalid json result
    "struct58", // refelct.fieldByName not supported yet
    "struct59",
    "struct6",
    "struct7",
    "struct8",
    "struct9",
    "switch", // class name changed to Switch_ and default not at bottom
    "switch0",
    "switch1",
    "switch10", // slight tweak to printing (TODO)
    "switch11", // typeswitch init stmt inside a switchtype (TODO)
    "switch12", // switch type nil not supported (TODO)
    "switch14", // Go.assignable = true -> local value set use x.value to turn the AnyInterface into the assigned type (TODO)
    "switch15", // Go.assignable = true -> local value set use x.value to turn the AnyInterface into the assigned type (TODO)
    "switch16", // Go.assignable = true -> local value set use x.value to turn the AnyInterface into the assigned type (TODO)
    "switch17", // type switch casting and checking types that can never be be assignable to
    "switch18", // type switch casting and checking types that can never be be assignable to
    "switch2",
    "switch20",
    "switch21", // not found: stdgo.fmt.Fmt.Formatter
    "switch22", // Go.assignable = true -> local value set use x.value to turn the AnyInterface into the assigned type (TODO)
    "switch23",
    "switch24",
    "switch25",
    "switch26",
    "switch27",
    "switch28",
    "switch29",
    "switch3", // fallthrough
    "switch30", // default is at start
    "switch31",
    "switch32",
    "switch33",
    "switch34",
    "switch35",
    "switch36",
    "switch37",
    "switch38",
    "switch4", // fallthrough
    "switch5", // fallthrough
    "switch6", // fallthrough
    "switch7",
    "tag0",
    "time1",
    "time10",
    "time11",
    "time12",
    "time13",
    "time14",
    "time15",
    "time16",
    "time2",
    "time3",
    "time4",
    "time5",
    "time6",
    "time7",
    "time8",
    "time9",
    "type0",
    "type1",
    "type10", // not found: stdgo.sync.Sync.Pool
    "type11", // not found: stdgo.sync.Sync.Pool
    "type12", // this pointer, not needed if type is itsself a pointer
    "type13",
    "type14",
    "type15",
    "type16",
    "type17",
    "type18",
    "type19",
    "type2", // time name conflict with time import
    "type20", // not found: stdgo.io.Io.Closer
    "type21", // not found: time.TIme
    "type22", // copy for extended named type need to override __copy__
    "type23", // not found: stdgo.net.http.Http
    "type24", // not found: stdgo.net.http.Http
    "type25", // not found: stdgo.sync.atomic.Atomic.Value
    "type26", // not found: stdgo.sync.atomic.Atomic.Value
    "type3",
    "type4",
    "type5",
    "type6",
    "type7",
    "type8", // not found: time.Time
    "type9",
    "unsafe0",
    "unsafe1",
    "unsafe2",
    "unsafe3",
    "unsafe4",
    "unsafe5",
    "var",
    "var10",
    "var11",
    "var12",
    "var13",
    "var14",
    "var15",
    "var2",
    "var3",
    "var4",
    "var5",
    "var6",
    "var7",
    "var8",
    "var9",
    "variadic",
    "variadic0",
    "variadic1",
    "variadic10", // not found: stdgo.log.Log.Logger
    "variadic2",
    "variadic3",
    "variadic4",
    "variadic5",
    "variadic6",
    "variadic7", // not found: stdgo.fmt.Fmt.sscanf
    "variadic8", // not found: time.Time
    "variadic9", // spread operator used inside Go.toInterface for last function argument because of conversion change
];
final yaegiOutput = [
    {name: "a1", output: ["2","1","2","3","4"]},
    {name: "a10", output: ["test"]},
    {name: "a11", output: ["1","2","3","4"]},
    {name: "a12", output: ["0"]},
    {name: "a13", output: ["0 1","1 3","2 5"]},
    {name: "a14", output: ["[0 0 0 0 0 0 0 0 0 0 0 0]"]},
    {name: "a15", output: ["[0 0 0 0 0 0 0 0 0 0 0 0]"]},
    {name: "a16", output: ["2","1","2","3","4","1","2","3","4"]},
    {name: "a17", output: ["[0 0] 2 7"]},
    {name: "a18", output: ["1","2","3","4"]},
    {name: "a19", output: ["10"]},
    {name: "a2", output: ["5","1","5","3","4"]},
    {name: "a20", output: ["[4]"]},
    {name: "a21", output: ["[104 101 108 108 111]","[104 101 108 108 111 61]"]},
    {name: "a22", output: ["1"]},
    {name: "a23", output: ["[0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31]","[32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63]"]},
    {name: "a24", output: ["[0 0 0 0 0 0 0 0] 0","[0 1 2 3 4 5 6 7] 7","[0 0 0 0 0 0 0 0] 0","[0 1 2 3 4 5 6 7] 7"]},
    {name: "a25", output: ["[0 1 2 3 4 5 6 7]","[0 2 4 6 8 10 12 14]"]},
    {name: "a26", output: ["true"]},
    {name: "a27", output: ["[hello world] [2]string"]},
    {name: "a28", output: ["[         hello] [10]string"]},
    {name: "a29", output: ["[zero one two] [3]string"]},
    {name: "a3", output: ["[3 4 5 6]"]},
    {name: "a30", output: ["ok"]},
    {name: "a31", output: ["hello hello hello "]},
    {name: "a32", output: ["[{}]"]},
    {name: "a33", output: ["[1 2 3]"]},
    {name: "a34", output: ["[1 2 3]"]},
    {name: "a35", output: ["[1 2 3]"]},
    {name: "a36", output: ["[1 2 3]"]},
    {name: "a37", output: ["[1 2 3]"]},
    {name: "a38", output: ["[0]uint8"]},
    {name: "a39", output: ["[0]uint8 [0]uint8"]},
    {name: "a4", output: ["[3 4]"]},
    {name: "a40", output: ["[1 12]"]},
    {name: "a41", output: ["true"]},
    {name: "a42", output: ["[1 0 0 0 0 0 0 0]"]},
    {name: "a43", output: ["[0 0 0 0 0]"]},
    {name: "a44", output: ["32"]},
    {name: "a5", output: ["[1 2 3 4]"]},
    {name: "a6", output: ["[1 2 3 4 5 6]"]},
    {name: "a7", output: ["6"]},
    {name: "a8", output: ["[0 0]"]},
    {name: "a9", output: ["[1]"]},
    {name: "add0", output: ["7"]},
    {name: "add1", output: ["7","8","9","10","11","12","13","hello"]},
    {name: "add2", output: ["7"]},
    {name: "addr0", output: ["{{ null  0 0 map[] null null 0 [] false  map[] map[] null map[]   null null null null} }","&{ null  0 0 map[] null null 0 [] false  map[] map[] null map[]   null null null null}"]},
    {name: "addr1", output: ["a: &[{1 2} {3 4}]","x: &{3 4}"]},
    {name: "addr2", output: ["null {work bob@work.com}","null {work bob@work.com}","null {work bob@work.com}"]},
    {name: "addr3", output: ["2","2","2"]},
    {name: "addr4", output: ["0 : foo","1 : bar","0 : foo","1 : bar","0 : map[foo:foo]","1 : map[bar:bar]","foo : foo","bar : bar"]},
    {name: "addr5", output: ["VALUE_1","VALUE_2","","{\"BODY_1\":\"VALUE_1\",\"BODY_2\":\"VALUE_2\",\"BODY_3\":null}","[\"VALUE_1\",\"VALUE_2\",\"VALUE_3\"]"]},
    {name: "alias0", output: ["&{one}","&{one}","&{root}","&{root}"]},
    {name: "alias1", output: ["{}"]},
    {name: "and", output: ["f1","f2"]},
    {name: "and0", output: ["f2"]},
    {name: "and1", output: ["f2","false"]},
    {name: "and2", output: ["in f","ok"]},
    {name: "and3", output: ["true"]},
    {name: "append0", output: ["[1 2 3]"]},
    {name: "append1", output: ["Hello World"]},
    {name: "append2", output: ["Hello World"]},
    {name: "append3", output: ["[1 2 3 4]","[1 2 5 6]"]},
    {name: "append4", output: ["[null]"]},
    {name: "assert0", output: ["TestStruct implements MyWriter","11","11","TestStruct implements MyWriter","time.Nanosecond implements MyStringer","1ns","1ns","time.Nanosecond implements MyStringer"]},
    {name: "assert1", output: ["1ns","1ns","true","time.Nanosecond implements fmt.Stringer","42 does not implement fmt.Stringer","42 does not implement fmt.Stringer","hello world","hello world","TestStuct implements fmt.Stringer"]},
    {name: "assign", output: ["1 2"]},
    {name: "assign0", output: ["&{null null null 10s}","&{null null null 0s}"]},
    {name: "assign1", output: ["[]"]},
    {name: "assign10", output: ["3"]},
    {name: "assign13", output: ["map[a:0.1 b:0.1 c:test]"]},
    {name: "assign14", output: ["31","true"]},
    {name: "assign16", output: ["4"]},
    {name: "assign2", output: ["2000000001"]},
    {name: "assign3", output: ["1 2","2 1"]},
    {name: "assign4", output: ["1 2 3","3 1 2"]},
    {name: "assign5", output: ["[1 2]","[2 1]"]},
    {name: "assign6", output: ["1 2","2 1"]},
    {name: "assign7", output: ["3 2 [4 5]","2 5 [4 3]"]},
    {name: "assign8", output: ["1"]},
    {name: "assign9", output: ["boo 4"]},
    {name: "bin", output: ["Hello"]},
    {name: "bin0", output: ["truc"]},
    {name: "bin1", output: ["[91 170 97 228 201 185 63 63 6 130 37 11 108 248 51 27 126 230 143 216]"]},
    {name: "bin2", output: ["5"]},
    {name: "bin3", output: ["part1part2"]},
    {name: "bin5", output: ["1.1.1.1:80"]},
    {name: "binstruct_ptr_map0", output: ["(3,2) (4,5)"]},
    {name: "binstruct_ptr_slice0", output: ["[(3,2) (4,5)]"]},
    {name: "binstruct_slice0", output: ["[(3,2)]"]},
    {name: "bltn", output: ["Hello"]},
    {name: "bool", output: ["false true"]},
    {name: "bool0", output: ["true"]},
    {name: "bool1", output: ["nok"]},
    {name: "bool2", output: ["nok"]},
    {name: "bool3", output: ["1"]},
    {name: "bool4", output: ["1"]},
    {name: "bool5", output: ["1"]},
    {name: "cap0", output: ["2","2"]},
    {name: "chan0", output: ["ping"]},
    {name: "chan1", output: ["ping"]},
    {name: "chan10", output: ["success"]},
    {name: "chan2", output: ["ping"]},
    {name: "chan3", output: ["123"]},
    {name: "chan4", output: ["nok"]},
    {name: "chan7", output: ["one","two"]},
    {name: "chan8", output: ["true"]},
    {name: "chan9", output: ["ping"]},
    {name: "cli1", output: ["Welcome to my website! /hello"]},
    {name: "cli2", output: ["Welcome to my website! /hello"]},
    {name: "cli3", output: ["Welcome to my website!"]},
    {name: "cli4", output: ["Welcome to my website!"]},
    {name: "cli5", output: ["Welcome to my website!"]},
    {name: "cli6", output: ["Welcome to my website!map[]"]},
    {name: "closure0", output: ["12"]},
    {name: "closure1", output: ["12","15"]},
    {name: "closure10", output: ["3 0 0","3 1 1","3 2 2"]},
    {name: "closure11", output: ["3 0","3 1","3 2"]},
    {name: "closure12", output: ["3 0 i=0","3 1 i=1","3 2 i=2"]},
    {name: "closure2", output: ["0 0","1 -2","3 -6","6 -12","10 -20","15 -30","21 -42","28 -56","36 -72","45 -90"]},
    {name: "closure3", output: ["test","9"]},
    {name: "closure4", output: ["test","9"]},
    {name: "closure5", output: ["test","9"]},
    {name: "closure6", output: ["test","9"]},
    {name: "closure7", output: ["foo"]},
    {name: "closure8", output: ["5"]},
    {name: "closure9", output: ["3 0","3 1","3 2"]},
    {name: "comp0", output: ["true"]},
    {name: "comp1", output: ["true"]},
    {name: "comp2", output: ["false","true"]},
    {name: "complex0", output: ["(3+2i) 3 2"]},
    {name: "complex1", output: ["complex128 (1+0i)"]},
    {name: "complex2", output: ["complex128 (2+0i)"]},
    {name: "complex3", output: ["int 2"]},
    {name: "complex4", output: ["(3+2i)"]},
    {name: "composite0", output: ["&[]"]},
    {name: "composite1", output: ["&{}"]},
    {name: "composite10", output: ["map[]"]},
    {name: "composite11", output: ["{1 1 1 1}"]},
    {name: "composite12", output: ["bb"]},
    {name: "composite13", output: ["bb"]},
    {name: "composite14", output: ["{[]}"]},
    {name: "composite15", output: ["2","3","[2 3]","2","3"]},
    {name: "composite16", output: ["map[Action:[none]]"]},
    {name: "composite17", output: ["success"]},
    {name: "composite2", output: ["&{hello}"]},
    {name: "composite3", output: ["false"]},
    {name: "composite4", output: ["false"]},
    {name: "composite5", output: ["{12}"]},
    {name: "composite6", output: ["{2}"]},
    {name: "composite7", output: ["2","foo"]},
    {name: "composite8", output: ["1 2"]},
    {name: "composite8bis", output: ["1 2"]},
    {name: "composite9", output: ["[]"]},
    {name: "const0", output: ["0 1"]},
    {name: "const1", output: ["1 hello"]},
    {name: "const10", output: ["16"]},
    {name: "const11", output: ["0 4"]},
    {name: "const12", output: ["0 2 4 6"]},
    {name: "const13", output: ["4611686018427387904"]},
    {name: "const14", output: ["i: 1"]},
    {name: "const15", output: ["3"]},
    {name: "const16", output: ["2"]},
    {name: "const17", output: ["[1 2]"]},
    {name: "const18", output: ["1000000000"]},
    {name: "const19", output: ["10h0m0s"]},
    {name: "const2", output: ["hello"]},
    {name: "const20", output: ["9223372036854775807"]},
    {name: "const21", output: ["2048"]},
    {name: "const22", output: ["1"]},
    {name: "const23", output: ["5"]},
    {name: "const24", output: ["3"]},
    {name: "const3", output: ["1 2 3"]},
    {name: "const4", output: ["2 3 3"]},
    {name: "const5", output: ["uint8","0 2 4"]},
    {name: "const6", output: ["32"]},
    {name: "const7", output: ["[0 0]"]},
    {name: "const8", output: ["2 9 4 5"]},
    {name: "cont", output: ["5","6","7","8","9"]},
    {name: "cont0", output: ["5","6","7","8","9","10","11"]},
    {name: "cont1", output: ["5","6","7","8","9","10"]},
    {name: "context", output: ["world"]},
    {name: "context2", output: ["true","world"]},
    {name: "convert0", output: ["in sort"]},
    {name: "convert1", output: ["7"]},
    {name: "convert2", output: ["7"]},
    {name: "copy0", output: ["[10 20 30 0]"]},
    {name: "copy1", output: ["[10 20 30 0]"]},
    {name: "copy2", output: ["3"]},
    {name: "d3", output: ["test"]},
    {name: "defer0", output: ["hello","world","au revoir","bye"]},
    {name: "defer1", output: ["hello","world","bye"]},
    {name: "defer2", output: ["hello","world","i: 20"]},
    {name: "defer3", output: ["hello"]},
    {name: "defer4", output: ["test"]},
    {name: "defer5", output: ["hello","f3-end","f3-begin","f2-end","f2-begin","f1-end","f1-begin"]},
    {name: "defer6", output: ["hello f3-end f3-begin f2-end f2-begin f1-end f1-begin "]},
    {name: "defer7", output: ["[foo bar]"]},
    {name: "defer8", output: ["map[baz:bat foo:bar]","map[baz:bat]"]},
    {name: "defer9", output: ["foo"]},
    {name: "delete0", output: ["map[world:3]"]},
    {name: "eval0", output: ["1 2"]},
    {name: "export0", output: [""]},
    {name: "export1", output: [""]},
    {name: "fib0", output: ["3"]},
    {name: "file_access", output: ["n: 11","b: hello world"]},
    {name: "flag0", output: ["Narg: 0"]},
    {name: "for0", output: ["0","1","2","3","4","5"]},
    {name: "for1", output: ["0","1","2","3","4"]},
    {name: "for10", output: ["bye"]},
    {name: "for11", output: ["nok 0","bye 0"]},
    {name: "for12", output: ["bye"]},
    {name: "for13", output: ["bye 0"]},
    {name: "for14", output: ["0","1","bye"]},
    {name: "for15", output: ["in f","in loop"]},
    {name: "for16", output: ["in for","bye"]},
    {name: "for2", output: ["2","3","4"]},
    {name: "for3", output: ["[hellobar hellofoo worldmachin worldtruc]"]},
    {name: "for4", output: ["0 0","1 2","0 0","2 4"]},
    {name: "for5", output: ["bye"]},
    {name: "for6", output: ["byte 0: 228","byte 1: 184","byte 2: 137","rune 0: 19977"]},
    {name: "for8", output: ["0","2","3"]},
    {name: "for9", output: ["bye"]},
    {name: "fun", output: ["19"]},
    {name: "fun10", output: ["func() null","nil func"]},
    {name: "fun11", output: ["ok"]},
    {name: "fun12", output: ["bye"]},
    {name: "fun13", output: ["{} null"]},
    {name: "fun14", output: ["true 2"]},
    {name: "fun15", output: ["4","4"]},
    {name: "fun16", output: ["4"]},
    {name: "fun17", output: ["4"]},
    {name: "fun18", output: ["1"]},
    {name: "fun19", output: ["[] bar"]},
    {name: "fun2", output: ["7"]},
    {name: "fun20", output: ["[] bar"]},
    {name: "fun26", output: ["hello 3"]},
    {name: "fun27", output: ["test"]},
    {name: "fun3", output: ["18"]},
    {name: "fun4", output: ["ok"]},
    {name: "fun5", output: ["34"]},
    {name: "fun6", output: ["{null}"]},
    {name: "fun7", output: ["&{  null }"]},
    {name: "fun8", output: ["true"]},
    {name: "fun9", output: ["1"]},
    {name: "goto0", output: ["foo","bar","bye"]},
    {name: "goto1", output: ["ok"]},
    {name: "heap", output: ["minimum: 1","h: &[1 2 5 3]","1 2 3 5"]},
    {name: "if", output: ["1"]},
    {name: "if0", output: ["nok"]},
    {name: "if1", output: ["bye"]},
    {name: "if3", output: ["true","-1"]},
    {name: "if4", output: ["true","-1"]},
    {name: "if5", output: ["ok","bye"]},
    {name: "if6", output: ["bye"]},
    {name: "if7", output: ["-1"]},
    {name: "imag0", output: ["2"]},
    {name: "import0", output: ["Hello 42"]},
    {name: "import1", output: ["Hello 42"]},
    {name: "import2", output: ["Hello 42"]},
    {name: "import3", output: ["init boo","init foo","BARR Boo"]},
    {name: "import4", output: ["num: 2596996162"]},
    {name: "import5", output: ["init boo","init foo","BARR Boo Boo22"]},
    {name: "import7", output: ["foo-bar"]},
    {name: "import8", output: ["in b1/foo"]},
    {name: "import9", output: ["baz-bat"]},
    {name: "inc", output: ["3"]},
    {name: "init0", output: ["Hello from init 1","Hello from init 2","Hello from main"]},
    {name: "interface0", output: ["2","2 truc"]},
    {name: "interface1", output: ["in","inCall","Hello &{foo}","foo"]},
    {name: "interface10", output: ["hello"]},
    {name: "interface11", output: ["code: foo"]},
    {name: "interface12", output: ["in T1 truc"]},
    {name: "interface13", output: ["2"]},
    {name: "interface14", output: ["ok"]},
    {name: "interface15", output: ["ok"]},
    {name: "interface16", output: ["ok"]},
    {name: "interface17", output: ["ok"]},
    {name: "interface18", output: ["ok"]},
    {name: "interface19", output: ["null null"]},
    {name: "interface2", output: ["inCall","Hello {foo}","foo","inCall","a: {}"]},
    {name: "interface20", output: ["A"]},
    {name: "interface21", output: ["1"]},
    {name: "interface22", output: ["1"]},
    {name: "interface23", output: ["A"]},
    {name: "interface24", output: ["null"]},
    {name: "interface25", output: ["1"]},
    {name: "interface26", output: ["1"]},
    {name: "interface27", output: ["map[0:null]"]},
    {name: "interface28", output: ["[null]"]},
    {name: "interface29", output: ["true"]},
    {name: "interface3", output: ["inCall","Hello {foo}","foo"]},
    {name: "interface30", output: ["false"]},
    {name: "interface31", output: ["test 2"]},
    {name: "interface32", output: ["test 2"]},
    {name: "interface33", output: ["test"]},
    {name: "interface34", output: ["2 test"]},
    {name: "interface35", output: ["{test}"]},
    {name: "interface36", output: ["null"]},
    {name: "interface37", output: ["a"]},
    {name: "interface38", output: ["Hello from bar"]},
    {name: "interface39", output: ["Hello from bar"]},
    {name: "interface4", output: ["inCall","Hello {foo}","foo"]},
    {name: "interface40", output: ["Hello from bar"]},
    {name: "interface41", output: ["Hello from bar"]},
    {name: "interface42", output: ["0"]},
    {name: "interface43", output: ["null"]},
    {name: "interface44", output: ["1"]},
    {name: "interface45", output: ["{}"]},
    {name: "interface46", output: ["test"]},
    {name: "interface47", output: ["true","in do"]},
    {name: "interface48", output: ["null"]},
    {name: "interface49", output: ["true"]},
    {name: "interface5", output: ["Myint: 3 3"]},
    {name: "interface50", output: ["5","true"]},
    {name: "interface51", output: ["test"]},
    {name: "interface52", output: ["PASS"]},
    {name: "interface6", output: ["Myint: 4 4"]},
    {name: "interface7", output: ["This is an error from T: 1"]},
    {name: "interface8", output: ["hi"]},
    {name: "interface9", output: ["foo"]},
    {name: "io1", output: ["AAAAAA"]},
    {name: "iota", output: ["0 1 2","0 1 2 3"]},
    {name: "iota0", output: ["0 1 2","0 1 2 3"]},
    {name: "ioutil", output: ["open __NotExisting__: no such file or directory"]},
    {name: "ioutil0", output: ["Go is a general-purpose language designed with systems programming in mind."]},
    {name: "ipp_as_key", output: ["Hello bar","Hello baz"]},
    {name: "issue-1007", output: ["test-22"]},
    {name: "issue-1010", output: ["{\"num\":2} null"]},
    {name: "issue-1022", output: ["Ho Ho Ho!"]},
    {name: "issue-1052", output: ["1","1","2","3","5","8","13","21","34","55"]},
    {name: "issue-1065", output: ["{1 [{0 []} {0 []}]}"]},
    {name: "issue-1068", output: ["hello"]},
    {name: "issue-1088", output: ["U+65E5 '日' starts at byte position 0","U+672C '本' starts at byte position 3","U+8A9E '語' starts at byte position 6"]},
    {name: "issue-1089", output: ["\"2006-01-02T15:04:05.999999999Z07:00\""]},
    {name: "issue-1094", output: ["ab string"]},
    {name: "issue-1101", output: ["It's a post!"]},
    {name: "issue-1115", output: ["0","1","2","3","4","Yay! I finished!"]},
    {name: "issue-1126", output: ["True!"]},
    {name: "issue-1128", output: ["1"]},
    {name: "issue-1134", output: ["Hello"]},
    {name: "issue-1136", output: ["0 EOF"]},
    {name: "issue-1145", output: ["true"]},
    {name: "issue-1156", output: ["hello"]},
    {name: "issue-1163", output: ["OK!"]},
    {name: "issue-1166", output: ["test"]},
    {name: "issue-1167", output: ["P-256"]},
    {name: "issue-1173", output: ["Hello"]},
    {name: "issue-1175", output: ["7"]},
    {name: "issue-1177", output: ["2"]},
    {name: "issue-1179", output: ["in F test"]},
    {name: "issue-1181", output: ["2 -1"]},
    {name: "issue-1185", output: ["1"]},
    {name: "issue-1187", output: ["6 6"]},
    {name: "issue-1189", output: ["63 21 42"]},
    {name: "issue-1202", output: ["Hi from inline callback!","Hi from asVarTest1 callback!","Hi from asVarTest2 callback!","Hi from struct field callback!"]},
    {name: "issue-1205", output: ["in apply","in apply"]},
    {name: "issue-1208", output: ["true"]},
    {name: "issue-558", output: ["test"]},
    {name: "issue-735", output: ["12","map[b:one round:12]"]},
    {name: "issue-770", output: ["hello"]},
    {name: "issue-772", output: ["Hello, World!!"]},
    {name: "issue-775", output: ["Foo [Bar]"]},
    {name: "issue-776", output: ["Hello from List!"]},
    {name: "issue-782", output: ["[3 4]"]},
    {name: "issue-784", output: ["foo"]},
    {name: "issue-880", output: ["Hallo","Test","Line3"]},
    {name: "issue-981", output: ["map[0:1 1:1 2:2 3:3 4:5 5:8 6:13 7:21 8:34 9:55]"]},
    {name: "issue-993", output: ["0"]},
    {name: "l2", output: ["2048","2304","2560","2816","3072","3328","3584","3840","6144","6400","6656","6912","7168","7424","7680","7936","10240","10496","10752","11008","11264","11520","11776","12032","14336","14592","14848","15104","15360","15616","15872","16128","18432","18688","18944","19200","19456","19712","19968"]},
    {name: "l4", output: ["6"]},
    {name: "len0", output: ["2"]},
    {name: "make", output: ["h: map[]"]},
    {name: "make0", output: ["2"]},
    {name: "make1", output: ["map[] true"]},
    {name: "make2", output: ["[0 0 0 0]"]},
    {name: "map", output: ["machin"]},
    {name: "map10", output: ["[hellobar hellofoo worldmachin worldtruc]"]},
    {name: "map11", output: ["[hellobar hellofoo worldmachin worldtruc]"]},
    {name: "map12", output: ["[hellobar worldmachin]"]},
    {name: "map13", output: ["&{ map[Accept-Encoding:[gzip]]}"]},
    {name: "map14", output: ["true false"]},
    {name: "map15", output: ["v:"]},
    {name: "map16", output: [" false","not exists"]},
    {name: "map17", output: ["ok"]},
    {name: "map18", output: ["0"]},
    {name: "map19", output: ["{map[]}"]},
    {name: "map2", output: ["machin"]},
    {name: "map20", output: ["true"]},
    {name: "map21", output: ["ok"]},
    {name: "map22", output: ["foo"]},
    {name: "map23", output: ["ok"]},
    {name: "map24", output: ["1 test"]},
    {name: "map25", output: ["3"]},
    {name: "map26", output: ["1"]},
    {name: "map27", output: ["&{}","&{}"]},
    {name: "map28", output: ["13"]},
    {name: "map29", output: ["{test 1s}"]},
    {name: "map3", output: ["machin"]},
    {name: "map30", output: ["hello test","hi test","TEST","test"]},
    {name: "map4", output: ["machin","bonjour"]},
    {name: "map5", output: [" false","bidule true"]},
    {name: "map6", output: ["bidule machin"]},
    {name: "map7", output: ["13 733"]},
    {name: "map8", output: ["[hellobar hellofoo worldmachin worldtruc]"]},
    {name: "map9", output: ["[hellobar hellofoo worldmachin worldtruc]"]},
    {name: "math0", output: ["-1"]},
    {name: "math1", output: ["ok"]},
    {name: "math2", output: ["yes"]},
    {name: "math3", output: ["[187 141 73 89 101 229 33 106 226 63 117 234 117 149 230 21]"]},
    {name: "method", output: ["25"]},
    {name: "method0", output: ["Foo Called","Foo Called","Baz Called"]},
    {name: "method1", output: ["in foo hello 3"]},
    {name: "method10", output: ["8","8"]},
    {name: "method11", output: ["func","method"]},
    {name: "method12", output: ["25"]},
    {name: "method13", output: ["25"]},
    {name: "method14", output: ["25"]},
    {name: "method15", output: ["25"]},
    {name: "method16", output: ["&{Xproperty:value} param"]},
    {name: "method17", output: ["minute: 4","second: 5","second: 5"]},
    {name: "method18", output: ["hello"]},
    {name: "method19", output: ["a nice error"]},
    {name: "method2", output: ["25"]},
    {name: "method20", output: ["hi"]},
    {name: "method21", output: ["&{}"]},
    {name: "method22", output: ["true"]},
    {name: "method23", output: ["true"]},
    {name: "method24", output: ["{null}","&{[] {null}}"]},
    {name: "method25", output: ["{null}","&{[] {null}}"]},
    {name: "method26", output: ["true"]},
    {name: "method27", output: ["ua:"]},
    {name: "method28", output: ["&{Hello}"]},
    {name: "method29", output: ["true true"]},
    {name: "method3", output: ["25"]},
    {name: "method30", output: ["global-x"]},
    {name: "method31", output: ["in f, c &{test}"]},
    {name: "method32", output: ["bar"]},
    {name: "method33", output: ["T1","T1 ok","T1.f()","T1.g()","T2","T2 ok","T2.f()","T1.g()"]},
    {name: "method34", output: ["Hello test2"]},
    {name: "method35", output: ["here"]},
    {name: "method36", output: ["Hello test"]},
    {name: "method37", output: ["hello"]},
    {name: "method4", output: ["25"]},
    {name: "method5", output: ["Foo Called","Foo Showed","Foo Called","Foo Showed","Baz Called"]},
    {name: "method6", output: ["in foo hello 3"]},
    {name: "method7", output: ["in foo hello 3"]},
    {name: "method8", output: ["0 world"]},
    {name: "method9", output: ["25"]},
    {name: "neg0", output: ["-1"]},
    {name: "new0", output: ["3"]},
    {name: "new1", output: ["2"]},
    {name: "new2", output: ["0"]},
    {name: "nil0", output: ["  null"]},
    {name: "nil1", output: ["a is nil"]},
    {name: "nil2", output: ["err is nil"]},
    {name: "nil3", output: ["false","true","true","false","Hello"]},
    {name: "not0", output: ["-1"]},
    {name: "not1", output: ["-1"]},
    {name: "not2", output: ["true"]},
    {name: "num0", output: ["1"]},
    {name: "op0", output: ["c: 4096 uint16"]},
    {name: "op2", output: ["a: 128 int","b: 0 int","c: 4096 int","d: 1 int","e: 0 int"]},
    {name: "op3", output: ["a: -1.2 float64","b: (-2-1i) complex128"]},
    {name: "op4", output: ["2"]},
    {name: "op5", output: ["int 0"]},
    {name: "op6", output: ["ok"]},
    {name: "op8", output: ["true"]},
    {name: "opfloat32", output: ["a: 128 float32","b: 0 float32","c: 4096 float32","d: 1 float32","true","true","false","false","false"]},
    {name: "opfloat64", output: ["a: 128 float64","b: 0 float64","c: 4096 float64","d: 1 float64","true","true","false","false","false"]},
    {name: "opint16", output: ["a: 128 int16","b: 0 int16","c: 4096 int16","d: 1 int16","e: 0 int16","true","true","false","false","true"]},
    {name: "opint32", output: ["a: 128 int32","b: 0 int32","c: 4096 int32","d: 1 int32","e: 0 int32","true","true","false","false","true"]},
    {name: "opint64", output: ["a: 128 int64","b: 0 int64","c: 4096 int64","d: 1 int64","e: 0 int64","true","true","false","false","true"]},
    {name: "opint8", output: ["a: 12 int8","b: 0 int8","c: 36 int8","d: 1 int8","e: 0 int8","true","true","false","false","true"]},
    {name: "opstring", output: ["a: hhhfff string"]},
    {name: "opuint16", output: ["a: 128 uint16","b: 0 uint16","c: 4096 uint16","d: 1 uint16","e: 0 uint16","true","true","false","false","true"]},
    {name: "opuint32", output: ["a: 128 uint32","b: 0 uint32","c: 4096 uint32","d: 1 uint32","e: 0 uint32","true","true","false","false","true"]},
    {name: "opuint64", output: ["a: 128 uint64","b: 0 uint64","c: 4096 uint64","d: 1 uint64","e: 0 uint64","true","true","false","false","true"]},
    {name: "opuint8", output: ["a: 12 uint8","b: 0 uint8","c: 36 uint8","d: 1 uint8","e: 0 uint8","true","true","false","false","true"]},
    {name: "or0", output: ["true"]},
    {name: "or1", output: ["true"]},
    {name: "or2", output: ["true"]},
    {name: "pkgname0", output: ["Hello bar","Hello baz"]},
    {name: "pkgname2", output: ["Hello bar"]},
    {name: "primes", output: ["5"]},
    {name: "print0", output: ["hello"]},
    {name: "ptr0", output: ["2"]},
    {name: "ptr1", output: ["2"]},
    {name: "ptr2", output: ["5"]},
    {name: "ptr3", output: ["3"]},
    {name: "ptr4", output: ["5"]},
    {name: "ptr5", output: ["3"]},
    {name: "ptr5a", output: ["3"]},
    {name: "ptr6", output: ["3"]},
    {name: "ptr7", output: ["{null null}"]},
    {name: "ptr8", output: ["true"]},
    {name: "ptr_array0", output: ["1"]},
    {name: "ptr_array1", output: ["0 1","1 2","2 3"]},
    {name: "ptr_array2", output: ["&[1 0]"]},
    {name: "ptr_array3", output: ["[1 2 3]"]},
    {name: "range0", output: ["[1 2 3 0 1 2]"]},
    {name: "range1", output: ["[0 1 2]"]},
    {name: "range2", output: ["[2 1 2]"]},
    {name: "range3", output: ["ok"]},
    {name: "range4", output: ["true","true","true"]},
    {name: "range5", output: ["3"]},
    {name: "range6", output: ["true","true","true"]},
    {name: "range7", output: ["success"]},
    {name: "range8", output: ["success"]},
    {name: "real0", output: ["3"]},
    {name: "recover0", output: ["hello","world","recover: null"]},
    {name: "recover1", output: ["hello","recover: test panic"]},
    {name: "recover2", output: ["hello","world"]},
    {name: "recover3", output: ["hello","null","world"]},
    {name: "recover4", output: ["r = null","15"]},
    {name: "recurse0", output: ["{[] [] map[] map[] null null null null null {[] [] map[] map[] null null null null null}}","{[] [] map[] map[] null null null null null}"]},
    {name: "restricted0", output: ["recover: log.Fatal does not exit"]},
    {name: "restricted1", output: ["recover: os.Exit(1)"]},
    {name: "restricted2", output: ["null restricted"]},
    {name: "restricted3", output: ["recover: test log logger: restricted.go:39: test log"]},
    {name: "ret1", output: ["5"]},
    {name: "ret2", output: ["1 2"]},
    {name: "ret3", output: ["1 2"]},
    {name: "ret4", output: ["1"]},
    {name: "ret5", output: ["1 2"]},
    {name: "ret6", output: ["null"]},
    {name: "ret7", output: ["1"]},
    {name: "ret8", output: ["Everything is going wrong!","ok"]},
    {name: "run0", output: ["2 3"]},
    {name: "run1", output: ["5"]},
    {name: "run10", output: ["hello"]},
    {name: "run11", output: ["2 3"]},
    {name: "run12", output: ["4 5"]},
    {name: "run13", output: ["4 5"]},
    {name: "run4", output: ["f1 21"]},
    {name: "run5", output: ["f1 21"]},
    {name: "run6", output: ["f1 21"]},
    {name: "run7", output: ["f1 21 3"]},
    {name: "run8", output: ["f1 21 3"]},
    {name: "run9", output: ["f1 21 3","22"]},
    {name: "rune0", output: ["a: 217 int32","b: 11 int32","c: 11742 int32","d: 1 int32","e: 11 int32","true","true","false","false","false"]},
    {name: "rune1", output: ["[36 0]"]},
    {name: "scope0", output: ["1"]},
    {name: "scope1", output: ["7"]},
    {name: "scope2", output: ["1","2","1"]},
    {name: "scope3", output: ["2","1"]},
    {name: "scope4", output: ["2","3","1"]},
    {name: "scope5", output: ["1","2","2"]},
    {name: "scope6", output: ["[1 2 3]","[1 5 3]"]},
    {name: "scope7", output: ["[1 2 3]","[6 7]"]},
    {name: "select0", output: ["bye"]},
    {name: "select1", output: ["start for","received one","finish 1","end for","start for","received #2 two true","end for","Bye"]},
    {name: "select10", output: ["bye"]},
    {name: "select11", output: ["nothing received","bye"]},
    {name: "select12", output: ["sent","bye"]},
    {name: "select13", output: ["bye"]},
    {name: "select14", output: ["1","2","3"]},
    {name: "select15", output: ["Bye"]},
    {name: "select2", output: ["received from c2: hello","received from c1: done","Bye 1"]},
    {name: "select3", output: ["no comm","bye"]},
    {name: "select4", output: ["received from c1: done","Bye"]},
    {name: "select5", output: ["received from c1: done","Bye"]},
    {name: "select6", output: ["received from c1","Bye"]},
    {name: "select7", output: ["received from c1: done"]},
    {name: "select8", output: ["received from c1: done","Bye"]},
    {name: "select9", output: ["received from c1: done"]},
    {name: "selector-scope0", output: ["test"]},
    {name: "shift0", output: ["4"]},
    {name: "shift1", output: ["int 255"]},
    {name: "shift2", output: ["0"]},
    {name: "shift3", output: ["8"]},
    {name: "sieve", output: ["2","3","5","7","11","13","17","19","23","29"]},
    {name: "slice", output: ["[0 1]"]},
    {name: "str", output: ["hello world"]},
    {name: "str0", output: ["48 uint8"]},
    {name: "str1", output: ["3"]},
    {name: "str2", output: ["ok"]},
    {name: "str3", output: ["true"]},
    {name: "str4", output: ["true"]},
    {name: "struct", output: ["7 8"]},
    {name: "struct0", output: ["0 0"]},
    {name: "struct0a", output: ["0","8"]},
    {name: "struct1", output: ["a.g.h 5"]},
    {name: "struct10", output: ["0 8"]},
    {name: "struct11", output: ["nil"]},
    {name: "struct12", output: ["{null}"]},
    {name: "struct13", output: ["0s"]},
    {name: "struct14", output: ["null"]},
    {name: "struct15", output: ["hello"]},
    {name: "struct16", output: ["foo"]},
    {name: "struct17", output: ["foo"]},
    {name: "struct18", output: ["map[] http.Header"]},
    {name: "struct19", output: ["&{[]   false }"]},
    {name: "struct2", output: ["7 8"]},
    {name: "struct20", output: ["me-test"]},
    {name: "struct21", output: ["test-me-test"]},
    {name: "struct22", output: ["child"]},
    {name: "struct23", output: ["{\"Name\":\"hello\",\"Child\":[{\"Name\":\"world\",\"Child\":null}]}","{\"Name\":\"hello\",\"Child\":[{\"Name\":\"world\",\"Child\":[{\"Name\":\"sunshine\",\"Child\":null}]}]}"]},
    {name: "struct24", output: ["true"]},
    {name: "struct25", output: ["{}"]},
    {name: "struct26", output: ["&{{[]}}"]},
    {name: "struct27", output: ["foo Boo"]},
    {name: "struct28", output: ["{{null}}"]},
    {name: "struct29", output: ["ok"]},
    {name: "struct3", output: ["7"]},
    {name: "struct30", output: ["ok"]},
    {name: "struct31", output: ["true"]},
    {name: "struct32", output: ["hello","in F1","true"]},
    {name: "struct33", output: ["in look","in F1","true"]},
    {name: "struct34", output: ["ok"]},
    {name: "struct35", output: ["true"]},
    {name: "struct36", output: ["true"]},
    {name: "struct37", output: ["true"]},
    {name: "struct38", output: ["ok"]},
    {name: "struct39", output: ["ok"]},
    {name: "struct4", output: ["5 7 64 9"]},
    {name: "struct40", output: ["ok"]},
    {name: "struct41", output: ["ok"]},
    {name: "struct42", output: ["ok"]},
    {name: "struct43", output: ["ok"]},
    {name: "struct44", output: ["ok"]},
    {name: "struct45", output: ["true"]},
    {name: "struct46", output: ["b"]},
    {name: "struct47", output: ["test"]},
    {name: "struct48", output: ["0","01","012"]},
    {name: "struct49", output: ["true true"]},
    {name: "struct5", output: ["7 16"]},
    {name: "struct50", output: ["{hello [{world []}]}","{hello [{world [{sunshine []}]}]}"]},
    {name: "struct51", output: ["{\"Name\":\"hello\",\"Child\":[{\"Name\":\"world\",\"Child\":[null,null]},null]}","{\"Name\":\"hello\",\"Child\":[{\"Name\":\"world\",\"Child\":[{\"Name\":\"sunshine\",\"Child\":[null,null]},null]},null]}"]},
    {name: "struct52", output: ["{hello map[1:{world map[]}]}","{hello map[1:{world map[1:{sunshine map[]}]}]}"]},
    {name: "struct53", output: ["{null}"]},
    {name: "struct55", output: ["test test"]},
    {name: "struct56", output: ["{\"IA\":{\"Timestamp\":0}}"]},
    {name: "struct57", output: ["{\"Timestamp\":0}"]},
    {name: "struct58", output: ["test"]},
    {name: "struct59", output: ["&{map[] map[]}"]},
    {name: "struct6", output: ["7 8"]},
    {name: "struct60", output: ["{}"]},
    {name: "struct7", output: ["0 false"]},
    {name: "struct8", output: ["5 7 8 9"]},
    {name: "struct9", output: ["7 8"]},
    {name: "switch", output: ["100"]},
    {name: "switch0", output: ["0","bool false","not nul","bool true"]},
    {name: "switch1", output: ["not nul"]},
    {name: "switch10", output: ["string truc ok"]},
    {name: "switch11", output: ["string truc ok"]},
    {name: "switch12", output: ["i is nil"]},
    {name: "switch14", output: ["inCall","a: {{foo}}","inCall","a: {}"]},
    {name: "switch15", output: ["inCall","Hello {foo}","foo","inCall","a: {}"]},
    {name: "switch16", output: ["inCall","Hello {foo}","foo","inCall","a: {}"]},
    {name: "switch17", output: ["inCall","type Bir","Hello {foo}","foo","inCall","a: {}"]},
    {name: "switch18", output: ["inCall","Yo {}","inCall","a: {}"]},
    {name: "switch2", output: ["1"]},
    {name: "switch20", output: ["bye"]},
    {name: "switch21", output: ["null"]},
    {name: "switch22", output: ["*T truc"]},
    {name: "switch23", output: ["T1"]},
    {name: "switch24", output: ["5","bye"]},
    {name: "switch25", output: ["2","bye"]},
    {name: "switch26", output: ["2","1"]},
    {name: "switch27", output: ["false","bye"]},
    {name: "switch28", output: ["true","bye"]},
    {name: "switch29", output: ["three","bye"]},
    {name: "switch3", output: ["100","3"]},
    {name: "switch30", output: ["three","bye"]},
    {name: "switch31", output: ["bye"]},
    {name: "switch32", output: ["bye 1"]},
    {name: "switch33", output: ["bye"]},
    {name: "switch34", output: ["a is []int","b is []string","bye"]},
    {name: "switch35", output: ["2","bye"]},
    {name: "switch36", output: ["bye"]},
    {name: "switch37", output: ["bye"]},
    {name: "switch38", output: ["m false","a false","x false","- false","a false","g false","e false","= true","2 false","0 false"]},
    {name: "switch4", output: ["100","3 foo"]},
    {name: "switch5", output: ["one"]},
    {name: "switch6", output: ["100","3 foo"]},
    {name: "switch7", output: ["string"]},
    {name: "tag0", output: ["hello from ct1","hello from ct3","bye"]},
    {name: "time1", output: ["2009-11-10 23:04:05 +0000 UTC 4"]},
    {name: "time10", output: ["46"]},
    {name: "time11", output: ["df: 30m0s time.Duration"]},
    {name: "time12", output: ["24"]},
    {name: "time13", output: ["23 4 5"]},
    {name: "time14", output: ["0001-01-01 00:00:00 +0000 UTC"]},
    {name: "time15", output: ["in decode"]},
    {name: "time16", output: ["Mon Jan _2 15:04:05 2006"]},
    {name: "time2", output: ["23 4 5"]},
    {name: "time3", output: ["23 4 5"]},
    {name: "time4", output: ["September"]},
    {name: "time5", output: ["46"]},
    {name: "time6", output: ["1985-04-12 23:20:50.52 +0000 UTC"]},
    {name: "time7", output: ["2s"]},
    {name: "time8", output: ["0s"]},
    {name: "time9", output: ["300"]},
    {name: "type0", output: ["0"]},
    {name: "type1", output: ["hello"]},
    {name: "type10", output: ["gzw: *gzip.Writer"]},
    {name: "type11", output: ["[10]*sync.Pool"]},
    {name: "type12", output: ["no name"]},
    {name: "type13", output: ["true"]},
    {name: "type14", output: ["{}"]},
    {name: "type15", output: ["true"]},
    {name: "type16", output: ["uint8 15"]},
    {name: "type17", output: ["int32 15"]},
    {name: "type18", output: ["2"]},
    {name: "type19", output: ["2"]},
    {name: "type2", output: ["2009-11-10 23:00:00 +0000 UTC"]},
    {name: "type20", output: ["false"]},
    {name: "type21", output: ["2009-11-10 23:04:05 +0000 UTC"]},
    {name: "type22", output: ["foo"]},
    {name: "type23", output: ["bye"]},
    {name: "type24", output: ["interface conversion: interface {} is int, not string","interface conversion: interface {} is nil, not string","interface conversion: *httptest.ResponseRecorder is not http.Pusher: missing method Push"]},
    {name: "type25", output: ["some outer error","test"]},
    {name: "type26", output: ["some outer error","test"]},
    {name: "type3", output: ["Hello"]},
    {name: "type4", output: ["int32"]},
    {name: "type5", output: ["int"]},
    {name: "type6", output: ["int"]},
    {name: "type7", output: ["hello true"]},
    {name: "type8", output: ["null"]},
    {name: "type9", output: ["&{null}"]},
    {name: "unsafe0", output: ["foobar"]},
    {name: "unsafe1", output: ["foobar"]},
    {name: "unsafe2", output: ["true"]},
    {name: "unsafe3", output: ["[2 0 0 0 0 0 0 0 4 0 0 0 0 0 0 0]"]},
    {name: "unsafe4", output: ["3"]},
    {name: "unsafe5", output: ["24 8 16"]},
    {name: "var", output: ["0 0 0"]},
    {name: "var10", output: ["hello"]},
    {name: "var11", output: ["1 2"]},
    {name: "var12", output: ["hello"]},
    {name: "var13", output: ["hello world!"]},
    {name: "var14", output: ["hello world!"]},
    {name: "var15", output: ["3"]},
    {name: "var2", output: ["2"]},
    {name: "var3", output: ["2 3"]},
    {name: "var4", output: ["2 3"]},
    {name: "var5", output: ["a: 64 int64"]},
    {name: "var6", output: ["in","Hello world v1"]},
    {name: "var7", output: ["map[]"]},
    {name: "var8", output: ["struct"]},
    {name: "var9", output: ["sd"]},
    {name: "variadic", output: ["[1 2 3 4]"]},
    {name: "variadic0", output: ["hello []"]},
    {name: "variadic1", output: ["hello [1 2 3]"]},
    {name: "variadic10", output: ["test args: 1 truc","test args: 1 truc 2"]},
    {name: "variadic2", output: ["3"]},
    {name: "variadic3", output: ["[1 2 3 4]","10"]},
    {name: "variadic4", output: ["foobar"]},
    {name: "variadic5", output: ["true"]},
    {name: "variadic6", output: ["true"]},
    {name: "variadic7", output: ["test1 test2"]},
    {name: "variadic8", output: ["func(...*time.Duration) string"]},
    {name: "variadic9", output: ["Hello World!"]},
];
// @formatter:on